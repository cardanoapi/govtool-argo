{{- define "govtool.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "govtool.fullname" -}}
{{- $name := include "govtool.name" . -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "govtool.serviceName" -}}
{{- printf "%s-%s" (include "govtool.fullname" .root) .name | trunc 63 | trimSuffix "-" -}}
{{- end -}}