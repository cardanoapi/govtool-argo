# GovTool Kubernetes Deployment

This repository contains the Helm chart and Argo CD configuration used to deploy the GovTool stack on Kubernetes.

## Overview

GovTool is deployed to a multi-node Kubernetes cluster using:

- Helm for Kubernetes deployment configuration
- Argo CD for GitOps-based deployment and synchronization
- Kubernetes Ingress for routing traffic
- Kubernetes Secrets for runtime configuration
- A PostgreSQL instance for the PDF/proposal pillar service

## Architecture

```txt
GitHub Repository
  -> Argo CD Application
  -> Helm Chart
  -> Kubernetes Resources
  -> GovTool Services
```

## Services

The following GovTool services are deployed in the `govtool` namespace:

```txt
govtool-frontend
govtool-backend
govtool-metadata
govtool-outcomes
govtool-pdf
govtool-pdf-db
```

## Ingress

GovTool is exposed through an NGINX Ingress.

```txt
Host: k8s.dev.gov.tools
Ingress class: nginx
```

## Argo CD

Argo CD is installed in the `argocd` namespace and manages the GovTool deployment from GitHub.

## Helm Chart

The Helm chart defines:

- Deployments
- Services
- Ingress
- Runtime environment variables
- Secret/config mounts
- PDF database volume mount
- Optional PDF database migration Job

### Render Locally

```bash
helm template govtool .
```

### Lint Chart

```bash
helm lint .
```

### Manual Helm Install

```bash
helm upgrade --install govtool . -n govtool --create-namespace
```

## Required Secrets
Required secrets:

```txt
govtool-backend-config
govtool-outcomes-db
govtool-pdf-db
govtool-pdf-env
```

### Backend Config Secret

The backend reads its configuration from:

```txt
/run/secrets/config.json
```

Example creation:

```bash
kubectl create secret generic govtool-backend-config \
  -n govtool \
  --from-literal=config.json='{
    "dbsyncconfig": {
      "host": "DB_HOST",
      "dbname": "DB_NAME",
      "user": "DB_USER",
      "password": "DB_PASSWORD",
      "port": 5432
    },
    "port": 9876,
    "host": "0.0.0.0",
    "cachedurationseconds": 20,
    "sentrydsn": "",
    "sentryenv": ""
  }'
```

### Outcomes DB Secret

```bash
kubectl create secret generic govtool-outcomes-db \
  -n govtool \
  --from-literal=DATABASE_HOST='DB_HOST' \
  --from-literal=DATABASE_PORT='5432' \
  --from-literal=DATABASE_NAME='DB_NAME' \
  --from-literal=DATABASE_USER='DB_USER' \
  --from-literal=DATABASE_PASSWORD='DB_PASSWORD'
```

### PDF DB Secret

```bash
kubectl create secret generic govtool-pdf-db \
  -n govtool \
  --from-literal=POSTGRES_DB='postgres' \
  --from-literal=POSTGRES_USER='postgres' \
  --from-literal=POSTGRES_PASSWORD='POSTGRES_PASSWORD'
```

### PDF App Secret

```bash
kubectl create secret generic govtool-pdf-env \
  -n govtool \
  --from-literal=DATABASE_USERNAME='postgres' \
  --from-literal=DATABASE_PASSWORD='POSTGRES_PASSWORD' \
  --from-literal=APP_KEYS='APP_KEYS' \
  --from-literal=API_TOKEN_SALT='API_TOKEN_SALT' \
  --from-literal=ADMIN_JWT_SECRET='ADMIN_JWT_SECRET' \
  --from-literal=TRANSFER_TOKEN_SALT='TRANSFER_TOKEN_SALT' \
  --from-literal=JWT_SECRET='JWT_SECRET' \
  --from-literal=REFRESH_SECRET='REFRESH_SECRET' \
  --from-literal=POSTGRESQL_REPLICATION_USE_PASSFILE='false'
```

## PDF Database

`govtool-pdf-db` runs PostgreSQL for the PDF/proposal pillar service.

### Storage

The PDF database uses a `hostPath` mount on a selected worker node.

```txt
Pod mount path: /var/lib/postgresql/data
Node host path: /var/lib/govtool/pdf-postgres
```

### Node Pinning

The PDF DB pod is pinned to a worker node using a node label.

```bash
kubectl label node k8s-govtool-worker-1 govtool-pdf-db=true
```

The Helm values use:

```yaml
nodeSelector:
  govtool-pdf-db: "true"
```

## PDF DB Migration

The PDF DB migration is handled by a Kubernetes Job managed through Argo CD.

### Resources

```txt
Job: govtool-pdf-db-migration
ConfigMap: govtool-pdf-db-migration
```

The migration Job mounts `schema.sql` from the ConfigMap and applies it to `govtool-pdf-db`.

### Enable Migration

```yaml
pdfDbMigration:
  enabled: true
```

### Disable Migration

After the migration succeeds, disable it again:

```yaml
pdfDbMigration:
  enabled: false
```

This prevents the migration Job from running again on every Argo sync.

### Check Application

```bash
kubectl get application govtool -n argocd
```

### Describe Application

```bash
kubectl describe application govtool -n argocd
```

### Check Resources

```bash
kubectl get pods -n govtool
kubectl get svc -n govtool
kubectl get ingress -n govtool
```


