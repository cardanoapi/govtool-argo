--
-- PostgreSQL database dump
--

\restrict olhxwEEV7ufR3dAb1SRDryIRfKXHvfq5kxnRwjl6natnVdrleQsefmjfdrbyRKt

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: temp; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA temp;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: auth_challenges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_challenges (
    id integer NOT NULL,
    identifier character varying(255),
    nonce character varying(255),
    message text,
    "timestamp" timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: auth_challenges_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_challenges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_challenges_id_seq OWNED BY public.auth_challenges.id;


--
-- Name: bd_contact_informations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_contact_informations (
    id integer NOT NULL,
    be_full_name character varying(255),
    be_email character varying(255),
    submission_lead_full_name character varying(255),
    submission_lead_email character varying(255),
    other_contract_type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_contact_informations_be_country_of_res_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_contact_informations_be_country_of_res_links (
    id integer NOT NULL,
    bd_contact_information_id integer,
    country_list_id integer
);


--
-- Name: bd_contact_informations_be_country_of_res_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_contact_informations_be_country_of_res_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_contact_informations_be_country_of_res_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_contact_informations_be_country_of_res_links_id_seq OWNED BY public.bd_contact_informations_be_country_of_res_links.id;


--
-- Name: bd_contact_informations_be_nationality_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_contact_informations_be_nationality_links (
    id integer NOT NULL,
    bd_contact_information_id integer,
    country_list_id integer
);


--
-- Name: bd_contact_informations_be_nationality_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_contact_informations_be_nationality_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_contact_informations_be_nationality_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_contact_informations_be_nationality_links_id_seq OWNED BY public.bd_contact_informations_be_nationality_links.id;


--
-- Name: bd_contact_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_contact_informations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_contact_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_contact_informations_id_seq OWNED BY public.bd_contact_informations.id;


--
-- Name: bd_contract_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_contract_types (
    id integer NOT NULL,
    contract_type_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_contract_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_contract_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_contract_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_contract_types_id_seq OWNED BY public.bd_contract_types.id;


--
-- Name: bd_costings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_costings (
    id integer NOT NULL,
    cost_breakdown text,
    ada_amount character varying(255),
    amount_in_preferred_currency character varying(255),
    usd_to_ada_conversion_rate character varying(255),
    ada_amount_clone double precision,
    amount_in_preferred_currency_clone double precision,
    usd_to_ada_conversion_rate_clone double precision,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_costings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_costings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_costings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_costings_id_seq OWNED BY public.bd_costings.id;


--
-- Name: bd_costings_preferred_currency_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_costings_preferred_currency_links (
    id integer NOT NULL,
    bd_costing_id integer,
    bd_currency_list_id integer
);


--
-- Name: bd_costings_preferred_currency_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_costings_preferred_currency_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_costings_preferred_currency_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_costings_preferred_currency_links_id_seq OWNED BY public.bd_costings_preferred_currency_links.id;


--
-- Name: bd_currency_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_currency_lists (
    id integer NOT NULL,
    currency_name character varying(255),
    currency_letter_code character varying(255),
    currency_number_code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_currency_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_currency_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_currency_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_currency_lists_id_seq OWNED BY public.bd_currency_lists.id;


--
-- Name: bd_drafts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_drafts (
    id integer NOT NULL,
    draft_data jsonb,
    test character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_drafts_creator_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_drafts_creator_links (
    id integer NOT NULL,
    bd_draft_id integer,
    user_id integer
);


--
-- Name: bd_drafts_creator_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_drafts_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_drafts_creator_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_drafts_creator_links_id_seq OWNED BY public.bd_drafts_creator_links.id;


--
-- Name: bd_drafts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_drafts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_drafts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_drafts_id_seq OWNED BY public.bd_drafts.id;


--
-- Name: bd_further_informations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_further_informations (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_further_informations_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_further_informations_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- Name: bd_further_informations_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_further_informations_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_further_informations_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_further_informations_components_id_seq OWNED BY public.bd_further_informations_components.id;


--
-- Name: bd_further_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_further_informations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_further_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_further_informations_id_seq OWNED BY public.bd_further_informations.id;


--
-- Name: bd_intersect_committees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_intersect_committees (
    id integer NOT NULL,
    committee_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_intersect_committees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_intersect_committees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_intersect_committees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_intersect_committees_id_seq OWNED BY public.bd_intersect_committees.id;


--
-- Name: bd_poll_votes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_poll_votes (
    id integer NOT NULL,
    user_id character varying(255),
    bd_poll_id character varying(255),
    vote_result boolean,
    drep_id character varying(255),
    drep_voting_power character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_poll_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_poll_votes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_poll_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_poll_votes_id_seq OWNED BY public.bd_poll_votes.id;


--
-- Name: bd_polls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_polls (
    id integer NOT NULL,
    bd_proposal_id character varying(255),
    poll_yes integer,
    poll_no integer,
    is_poll_active boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_polls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_polls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_polls_id_seq OWNED BY public.bd_polls.id;


--
-- Name: bd_proposal_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_proposal_details (
    id integer NOT NULL,
    experience text,
    proposal_name text,
    key_dependencies text,
    maintain_and_support text,
    proposal_description text,
    key_proposal_deliverables text,
    resourcing_duration_estimates text,
    other_contract_type text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_proposal_details_contract_type_name_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_proposal_details_contract_type_name_links (
    id integer NOT NULL,
    bd_proposal_detail_id integer,
    bd_contract_type_id integer
);


--
-- Name: bd_proposal_details_contract_type_name_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_proposal_details_contract_type_name_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_proposal_details_contract_type_name_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_proposal_details_contract_type_name_links_id_seq OWNED BY public.bd_proposal_details_contract_type_name_links.id;


--
-- Name: bd_proposal_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_proposal_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_proposal_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_proposal_details_id_seq OWNED BY public.bd_proposal_details.id;


--
-- Name: bd_proposal_ownerships; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_proposal_ownerships (
    id integer NOT NULL,
    agreed boolean,
    group_name character varying(255),
    company_name character varying(255),
    type_of_group character varying(255),
    social_handles character varying(255),
    submited_on_behalf character varying(255),
    company_domain_name character varying(255),
    proposal_public_champion character varying(255),
    key_info_to_identify_group text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_proposal_ownerships_be_country_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_proposal_ownerships_be_country_links (
    id integer NOT NULL,
    bd_proposal_ownership_id integer,
    country_list_id integer
);


--
-- Name: bd_proposal_ownerships_be_country_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_proposal_ownerships_be_country_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_proposal_ownerships_be_country_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_proposal_ownerships_be_country_links_id_seq OWNED BY public.bd_proposal_ownerships_be_country_links.id;


--
-- Name: bd_proposal_ownerships_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_proposal_ownerships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_proposal_ownerships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_proposal_ownerships_id_seq OWNED BY public.bd_proposal_ownerships.id;


--
-- Name: bd_psapbs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_psapbs (
    id integer NOT NULL,
    problem_statement text,
    proposal_benefit text,
    supplementary_endorsement text,
    explain_proposal_roadmap text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_psapbs_committee_name_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_psapbs_committee_name_links (
    id integer NOT NULL,
    bd_psapb_id integer,
    bd_intersect_committee_id integer
);


--
-- Name: bd_psapbs_committee_name_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_psapbs_committee_name_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_psapbs_committee_name_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_psapbs_committee_name_links_id_seq OWNED BY public.bd_psapbs_committee_name_links.id;


--
-- Name: bd_psapbs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_psapbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_psapbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_psapbs_id_seq OWNED BY public.bd_psapbs.id;


--
-- Name: bd_psapbs_roadmap_name_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_psapbs_roadmap_name_links (
    id integer NOT NULL,
    bd_psapb_id integer,
    bd_road_map_id integer
);


--
-- Name: bd_psapbs_roadmap_name_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_psapbs_roadmap_name_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_psapbs_roadmap_name_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_psapbs_roadmap_name_links_id_seq OWNED BY public.bd_psapbs_roadmap_name_links.id;


--
-- Name: bd_psapbs_type_name_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_psapbs_type_name_links (
    id integer NOT NULL,
    bd_psapb_id integer,
    bd_type_id integer
);


--
-- Name: bd_psapbs_type_name_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_psapbs_type_name_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_psapbs_type_name_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_psapbs_type_name_links_id_seq OWNED BY public.bd_psapbs_type_name_links.id;


--
-- Name: bd_road_maps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_road_maps (
    id integer NOT NULL,
    roadmap_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_road_maps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_road_maps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_road_maps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_road_maps_id_seq OWNED BY public.bd_road_maps.id;


--
-- Name: bd_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bd_types (
    id integer NOT NULL,
    type_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bd_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bd_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bd_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bd_types_id_seq OWNED BY public.bd_types.id;


--
-- Name: bds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds (
    id integer NOT NULL,
    privacy_policy boolean,
    intersect_named_administrator boolean,
    prop_comments_number integer,
    is_active boolean,
    intersect_admin_further_text text,
    master_id character varying(255),
    submitted_for_vote timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: bds_bd_contact_information_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_contact_information_links (
    id integer NOT NULL,
    bd_id integer,
    bd_contact_information_id integer
);


--
-- Name: bds_bd_contact_information_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_contact_information_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_contact_information_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_contact_information_links_id_seq OWNED BY public.bds_bd_contact_information_links.id;


--
-- Name: bds_bd_costing_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_costing_links (
    id integer NOT NULL,
    bd_id integer,
    bd_costing_id integer
);


--
-- Name: bds_bd_costing_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_costing_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_costing_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_costing_links_id_seq OWNED BY public.bds_bd_costing_links.id;


--
-- Name: bds_bd_further_information_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_further_information_links (
    id integer NOT NULL,
    bd_id integer,
    bd_further_information_id integer
);


--
-- Name: bds_bd_further_information_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_further_information_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_further_information_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_further_information_links_id_seq OWNED BY public.bds_bd_further_information_links.id;


--
-- Name: bds_bd_proposal_detail_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_proposal_detail_links (
    id integer NOT NULL,
    bd_id integer,
    bd_proposal_detail_id integer
);


--
-- Name: bds_bd_proposal_detail_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_proposal_detail_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_proposal_detail_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_proposal_detail_links_id_seq OWNED BY public.bds_bd_proposal_detail_links.id;


--
-- Name: bds_bd_proposal_ownership_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_proposal_ownership_links (
    id integer NOT NULL,
    bd_id integer,
    bd_proposal_ownership_id integer
);


--
-- Name: bds_bd_proposal_ownership_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_proposal_ownership_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_proposal_ownership_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_proposal_ownership_links_id_seq OWNED BY public.bds_bd_proposal_ownership_links.id;


--
-- Name: bds_bd_psapb_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_bd_psapb_links (
    id integer NOT NULL,
    bd_id integer,
    bd_psapb_id integer
);


--
-- Name: bds_bd_psapb_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_bd_psapb_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_bd_psapb_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_bd_psapb_links_id_seq OWNED BY public.bds_bd_psapb_links.id;


--
-- Name: bds_creator_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_creator_links (
    id integer NOT NULL,
    bd_id integer,
    user_id integer
);


--
-- Name: bds_creator_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_creator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_creator_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_creator_links_id_seq OWNED BY public.bds_creator_links.id;


--
-- Name: bds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_id_seq OWNED BY public.bds.id;


--
-- Name: bds_old_ver_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bds_old_ver_links (
    id integer NOT NULL,
    bd_id integer,
    inv_bd_id integer
);


--
-- Name: bds_old_ver_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bds_old_ver_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bds_old_ver_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bds_old_ver_links_id_seq OWNED BY public.bds_old_ver_links.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    proposal_id character varying(255),
    comment_parent_id character varying(255),
    user_id character varying(255),
    comment_text text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    bd_proposal_id character varying(255),
    drep_id character varying(255)
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: comments_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_reports (
    id integer NOT NULL,
    moderation_status boolean,
    hash character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: comments_reports_comment_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_reports_comment_links (
    id integer NOT NULL,
    comments_report_id integer,
    comment_id integer,
    comments_report_order double precision
);


--
-- Name: comments_reports_comment_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_reports_comment_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_reports_comment_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_reports_comment_links_id_seq OWNED BY public.comments_reports_comment_links.id;


--
-- Name: comments_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_reports_id_seq OWNED BY public.comments_reports.id;


--
-- Name: comments_reports_moderator_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_reports_moderator_links (
    id integer NOT NULL,
    comments_report_id integer,
    user_id integer,
    comments_report_order double precision
);


--
-- Name: comments_reports_moderator_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_reports_moderator_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_reports_moderator_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_reports_moderator_links_id_seq OWNED BY public.comments_reports_moderator_links.id;


--
-- Name: comments_reports_reporter_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comments_reports_reporter_links (
    id integer NOT NULL,
    comments_report_id integer,
    user_id integer,
    comments_report_order double precision
);


--
-- Name: comments_reports_reporter_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comments_reports_reporter_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_reports_reporter_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comments_reports_reporter_links_id_seq OWNED BY public.comments_reports_reporter_links.id;


--
-- Name: components_bd_bd_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_bd_bd_links (
    id integer NOT NULL,
    prop_link text,
    prop_link_text character varying(255)
);


--
-- Name: components_bd_bd_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_bd_bd_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_bd_bd_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_bd_bd_links_id_seq OWNED BY public.components_bd_bd_links.id;


--
-- Name: components_proposal_committee_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_proposal_committee_members (
    id integer NOT NULL,
    address_hash character varying(255),
    epoch integer
);


--
-- Name: components_proposal_committee_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_proposal_committee_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_proposal_committee_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_proposal_committee_members_id_seq OWNED BY public.components_proposal_committee_members.id;


--
-- Name: components_proposal_proposal_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_proposal_proposal_links (
    id integer NOT NULL,
    prop_link text,
    prop_link_text character varying(255)
);


--
-- Name: components_proposal_proposal_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_proposal_proposal_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_proposal_proposal_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_proposal_proposal_links_id_seq OWNED BY public.components_proposal_proposal_links.id;


--
-- Name: components_proposal_proposal_withdrawals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_proposal_proposal_withdrawals (
    id integer NOT NULL,
    prop_receiving_address character varying(255),
    prop_amount double precision
);


--
-- Name: components_proposal_proposal_withdrawals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_proposal_proposal_withdrawals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_proposal_proposal_withdrawals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_proposal_proposal_withdrawals_id_seq OWNED BY public.components_proposal_proposal_withdrawals.id;


--
-- Name: country_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.country_lists (
    id integer NOT NULL,
    country_name character varying(255),
    alfa_2_code character varying(255),
    alfa_3_code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: country_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.country_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: country_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.country_lists_id_seq OWNED BY public.country_lists.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: governance_action_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.governance_action_types (
    id integer NOT NULL,
    gov_action_type_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: governance_action_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.governance_action_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: governance_action_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.governance_action_types_id_seq OWNED BY public.governance_action_types.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: poll_votes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poll_votes (
    id integer NOT NULL,
    user_id character varying(255),
    poll_id character varying(255),
    vote_result boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: poll_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.poll_votes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: poll_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.poll_votes_id_seq OWNED BY public.poll_votes.id;


--
-- Name: polls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.polls (
    id integer NOT NULL,
    proposal_id character varying(255),
    poll_yes integer,
    poll_no integer,
    poll_start_dt timestamp(6) without time zone,
    is_poll_active boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: polls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.polls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.polls_id_seq OWNED BY public.polls.id;


--
-- Name: proposal_constitution_contents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_constitution_contents (
    id integer NOT NULL,
    prop_constitution_url character varying(255),
    prop_have_guardrails_script boolean,
    prop_guardrails_script_url character varying(255),
    prop_guardrails_script_hash character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposal_constitution_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_constitution_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_constitution_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_constitution_contents_id_seq OWNED BY public.proposal_constitution_contents.id;


--
-- Name: proposal_constitution_contents_proposal_content_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_constitution_contents_proposal_content_links (
    id integer NOT NULL,
    proposal_constitution_content_id integer,
    proposal_content_id integer
);


--
-- Name: proposal_constitution_contents_proposal_content_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_constitution_contents_proposal_content_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_constitution_contents_proposal_content_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_constitution_contents_proposal_content_links_id_seq OWNED BY public.proposal_constitution_contents_proposal_content_links.id;


--
-- Name: proposal_contents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_contents (
    id integer NOT NULL,
    proposal_id character varying(255),
    prop_rev_active boolean,
    prop_abstract text,
    prop_motivation text,
    prop_rationale text,
    gov_action_type_id character varying(255),
    prop_name character varying(255),
    is_draft boolean,
    user_id character varying(255),
    prop_submitted boolean,
    prop_submission_tx_hash character varying(255),
    prop_submission_date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    is_locked boolean
);


--
-- Name: proposal_contents_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_contents_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- Name: proposal_contents_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_contents_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_contents_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_contents_components_id_seq OWNED BY public.proposal_contents_components.id;


--
-- Name: proposal_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_contents_id_seq OWNED BY public.proposal_contents.id;


--
-- Name: proposal_contents_proposal_hard_fork_content_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_contents_proposal_hard_fork_content_links (
    id integer NOT NULL,
    proposal_content_id integer,
    proposal_hard_fork_content_id integer
);


--
-- Name: proposal_contents_proposal_hard_fork_content_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_contents_proposal_hard_fork_content_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_contents_proposal_hard_fork_content_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_contents_proposal_hard_fork_content_links_id_seq OWNED BY public.proposal_contents_proposal_hard_fork_content_links.id;


--
-- Name: proposal_contents_proposal_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_contents_proposal_links (
    id integer NOT NULL,
    proposal_content_id integer,
    proposal_id integer,
    proposal_content_order double precision
);


--
-- Name: proposal_contents_proposal_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_contents_proposal_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_contents_proposal_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_contents_proposal_links_id_seq OWNED BY public.proposal_contents_proposal_links.id;


--
-- Name: proposal_hard_fork_contents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_hard_fork_contents (
    id integer NOT NULL,
    previous_ga_hash character varying(255),
    previous_ga_id character varying(255),
    major character varying(255),
    minor character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposal_hard_fork_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_hard_fork_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_hard_fork_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_hard_fork_contents_id_seq OWNED BY public.proposal_hard_fork_contents.id;


--
-- Name: proposal_submitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_submitions (
    id integer NOT NULL,
    proposal_id character varying(255),
    sub_json_path jsonb,
    sub_location_url text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposal_submitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_submitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_submitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_submitions_id_seq OWNED BY public.proposal_submitions.id;


--
-- Name: proposal_update_committee_contents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_update_committee_contents (
    id integer NOT NULL,
    numerator integer,
    denominator integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposal_update_committee_contents_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_update_committee_contents_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


--
-- Name: proposal_update_committee_contents_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_update_committee_contents_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_update_committee_contents_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_update_committee_contents_components_id_seq OWNED BY public.proposal_update_committee_contents_components.id;


--
-- Name: proposal_update_committee_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_update_committee_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_update_committee_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_update_committee_contents_id_seq OWNED BY public.proposal_update_committee_contents.id;


--
-- Name: proposal_votes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposal_votes (
    id integer NOT NULL,
    proposal_id character varying(255),
    user_id character varying(255),
    vote_result boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposal_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposal_votes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposal_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposal_votes_id_seq OWNED BY public.proposal_votes.id;


--
-- Name: proposals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proposals (
    id integer NOT NULL,
    prop_likes integer,
    prop_dislikes integer,
    prop_comments_number integer,
    user_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: proposals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proposals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proposals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proposals_id_seq OWNED BY public.proposals.id;


--
-- Name: route_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.route_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: route_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.route_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: route_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.route_permissions_id_seq OWNED BY public.route_permissions.id;


--
-- Name: route_permissions_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.route_permissions_role_links (
    id integer NOT NULL,
    route_permission_id integer,
    role_id integer
);


--
-- Name: route_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.route_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: route_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.route_permissions_role_links_id_seq OWNED BY public.route_permissions_role_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    govtool_username character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    is_validated boolean
);


--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: wallet_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wallet_types (
    id integer NOT NULL,
    wallet_name text,
    wallet_image text,
    wallet_active boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


--
-- Name: wallet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.wallet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wallet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.wallet_types_id_seq OWNED BY public.wallet_types.id;


--
-- Name: temp_migrate_data; Type: TABLE; Schema: temp; Owner: -
--

CREATE TABLE temp.temp_migrate_data (
    id integer NOT NULL,
    prop_receiving_address character varying(255),
    prop_amount numeric
);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: auth_challenges id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_challenges ALTER COLUMN id SET DEFAULT nextval('public.auth_challenges_id_seq'::regclass);


--
-- Name: bd_contact_informations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations ALTER COLUMN id SET DEFAULT nextval('public.bd_contact_informations_id_seq'::regclass);


--
-- Name: bd_contact_informations_be_country_of_res_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_country_of_res_links ALTER COLUMN id SET DEFAULT nextval('public.bd_contact_informations_be_country_of_res_links_id_seq'::regclass);


--
-- Name: bd_contact_informations_be_nationality_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_nationality_links ALTER COLUMN id SET DEFAULT nextval('public.bd_contact_informations_be_nationality_links_id_seq'::regclass);


--
-- Name: bd_contract_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contract_types ALTER COLUMN id SET DEFAULT nextval('public.bd_contract_types_id_seq'::regclass);


--
-- Name: bd_costings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings ALTER COLUMN id SET DEFAULT nextval('public.bd_costings_id_seq'::regclass);


--
-- Name: bd_costings_preferred_currency_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings_preferred_currency_links ALTER COLUMN id SET DEFAULT nextval('public.bd_costings_preferred_currency_links_id_seq'::regclass);


--
-- Name: bd_currency_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_currency_lists ALTER COLUMN id SET DEFAULT nextval('public.bd_currency_lists_id_seq'::regclass);


--
-- Name: bd_drafts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts ALTER COLUMN id SET DEFAULT nextval('public.bd_drafts_id_seq'::regclass);


--
-- Name: bd_drafts_creator_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts_creator_links ALTER COLUMN id SET DEFAULT nextval('public.bd_drafts_creator_links_id_seq'::regclass);


--
-- Name: bd_further_informations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations ALTER COLUMN id SET DEFAULT nextval('public.bd_further_informations_id_seq'::regclass);


--
-- Name: bd_further_informations_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations_components ALTER COLUMN id SET DEFAULT nextval('public.bd_further_informations_components_id_seq'::regclass);


--
-- Name: bd_intersect_committees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_intersect_committees ALTER COLUMN id SET DEFAULT nextval('public.bd_intersect_committees_id_seq'::regclass);


--
-- Name: bd_poll_votes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_poll_votes ALTER COLUMN id SET DEFAULT nextval('public.bd_poll_votes_id_seq'::regclass);


--
-- Name: bd_polls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_polls ALTER COLUMN id SET DEFAULT nextval('public.bd_polls_id_seq'::regclass);


--
-- Name: bd_proposal_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details ALTER COLUMN id SET DEFAULT nextval('public.bd_proposal_details_id_seq'::regclass);


--
-- Name: bd_proposal_details_contract_type_name_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details_contract_type_name_links ALTER COLUMN id SET DEFAULT nextval('public.bd_proposal_details_contract_type_name_links_id_seq'::regclass);


--
-- Name: bd_proposal_ownerships id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships ALTER COLUMN id SET DEFAULT nextval('public.bd_proposal_ownerships_id_seq'::regclass);


--
-- Name: bd_proposal_ownerships_be_country_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships_be_country_links ALTER COLUMN id SET DEFAULT nextval('public.bd_proposal_ownerships_be_country_links_id_seq'::regclass);


--
-- Name: bd_psapbs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs ALTER COLUMN id SET DEFAULT nextval('public.bd_psapbs_id_seq'::regclass);


--
-- Name: bd_psapbs_committee_name_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_committee_name_links ALTER COLUMN id SET DEFAULT nextval('public.bd_psapbs_committee_name_links_id_seq'::regclass);


--
-- Name: bd_psapbs_roadmap_name_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_roadmap_name_links ALTER COLUMN id SET DEFAULT nextval('public.bd_psapbs_roadmap_name_links_id_seq'::regclass);


--
-- Name: bd_psapbs_type_name_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_type_name_links ALTER COLUMN id SET DEFAULT nextval('public.bd_psapbs_type_name_links_id_seq'::regclass);


--
-- Name: bd_road_maps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_road_maps ALTER COLUMN id SET DEFAULT nextval('public.bd_road_maps_id_seq'::regclass);


--
-- Name: bd_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_types ALTER COLUMN id SET DEFAULT nextval('public.bd_types_id_seq'::regclass);


--
-- Name: bds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds ALTER COLUMN id SET DEFAULT nextval('public.bds_id_seq'::regclass);


--
-- Name: bds_bd_contact_information_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_contact_information_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_contact_information_links_id_seq'::regclass);


--
-- Name: bds_bd_costing_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_costing_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_costing_links_id_seq'::regclass);


--
-- Name: bds_bd_further_information_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_further_information_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_further_information_links_id_seq'::regclass);


--
-- Name: bds_bd_proposal_detail_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_detail_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_proposal_detail_links_id_seq'::regclass);


--
-- Name: bds_bd_proposal_ownership_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_ownership_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_proposal_ownership_links_id_seq'::regclass);


--
-- Name: bds_bd_psapb_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_psapb_links ALTER COLUMN id SET DEFAULT nextval('public.bds_bd_psapb_links_id_seq'::regclass);


--
-- Name: bds_creator_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_creator_links ALTER COLUMN id SET DEFAULT nextval('public.bds_creator_links_id_seq'::regclass);


--
-- Name: bds_old_ver_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_old_ver_links ALTER COLUMN id SET DEFAULT nextval('public.bds_old_ver_links_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: comments_reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports ALTER COLUMN id SET DEFAULT nextval('public.comments_reports_id_seq'::regclass);


--
-- Name: comments_reports_comment_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_comment_links ALTER COLUMN id SET DEFAULT nextval('public.comments_reports_comment_links_id_seq'::regclass);


--
-- Name: comments_reports_moderator_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_moderator_links ALTER COLUMN id SET DEFAULT nextval('public.comments_reports_moderator_links_id_seq'::regclass);


--
-- Name: comments_reports_reporter_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_reporter_links ALTER COLUMN id SET DEFAULT nextval('public.comments_reports_reporter_links_id_seq'::regclass);


--
-- Name: components_bd_bd_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_bd_bd_links ALTER COLUMN id SET DEFAULT nextval('public.components_bd_bd_links_id_seq'::regclass);


--
-- Name: components_proposal_committee_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_committee_members ALTER COLUMN id SET DEFAULT nextval('public.components_proposal_committee_members_id_seq'::regclass);


--
-- Name: components_proposal_proposal_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_proposal_links ALTER COLUMN id SET DEFAULT nextval('public.components_proposal_proposal_links_id_seq'::regclass);


--
-- Name: components_proposal_proposal_withdrawals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_proposal_withdrawals ALTER COLUMN id SET DEFAULT nextval('public.components_proposal_proposal_withdrawals_id_seq'::regclass);


--
-- Name: country_lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.country_lists ALTER COLUMN id SET DEFAULT nextval('public.country_lists_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: governance_action_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.governance_action_types ALTER COLUMN id SET DEFAULT nextval('public.governance_action_types_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: poll_votes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poll_votes ALTER COLUMN id SET DEFAULT nextval('public.poll_votes_id_seq'::regclass);


--
-- Name: polls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.polls ALTER COLUMN id SET DEFAULT nextval('public.polls_id_seq'::regclass);


--
-- Name: proposal_constitution_contents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents ALTER COLUMN id SET DEFAULT nextval('public.proposal_constitution_contents_id_seq'::regclass);


--
-- Name: proposal_constitution_contents_proposal_content_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents_proposal_content_links ALTER COLUMN id SET DEFAULT nextval('public.proposal_constitution_contents_proposal_content_links_id_seq'::regclass);


--
-- Name: proposal_contents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents ALTER COLUMN id SET DEFAULT nextval('public.proposal_contents_id_seq'::regclass);


--
-- Name: proposal_contents_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_components ALTER COLUMN id SET DEFAULT nextval('public.proposal_contents_components_id_seq'::regclass);


--
-- Name: proposal_contents_proposal_hard_fork_content_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_hard_fork_content_links ALTER COLUMN id SET DEFAULT nextval('public.proposal_contents_proposal_hard_fork_content_links_id_seq'::regclass);


--
-- Name: proposal_contents_proposal_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_links ALTER COLUMN id SET DEFAULT nextval('public.proposal_contents_proposal_links_id_seq'::regclass);


--
-- Name: proposal_hard_fork_contents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_hard_fork_contents ALTER COLUMN id SET DEFAULT nextval('public.proposal_hard_fork_contents_id_seq'::regclass);


--
-- Name: proposal_submitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_submitions ALTER COLUMN id SET DEFAULT nextval('public.proposal_submitions_id_seq'::regclass);


--
-- Name: proposal_update_committee_contents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents ALTER COLUMN id SET DEFAULT nextval('public.proposal_update_committee_contents_id_seq'::regclass);


--
-- Name: proposal_update_committee_contents_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents_components ALTER COLUMN id SET DEFAULT nextval('public.proposal_update_committee_contents_components_id_seq'::regclass);


--
-- Name: proposal_votes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_votes ALTER COLUMN id SET DEFAULT nextval('public.proposal_votes_id_seq'::regclass);


--
-- Name: proposals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposals ALTER COLUMN id SET DEFAULT nextval('public.proposals_id_seq'::regclass);


--
-- Name: route_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions ALTER COLUMN id SET DEFAULT nextval('public.route_permissions_id_seq'::regclass);


--
-- Name: route_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.route_permissions_role_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Name: wallet_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wallet_types ALTER COLUMN id SET DEFAULT nextval('public.wallet_types_id_seq'::regclass);


--
-- Data for Name: bd_contract_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bd_contract_types (id, contract_type_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Milestone Based Fixed Price	2026-05-12 11:09:47.648	2026-05-12 11:09:47.648	2026-05-12 11:09:47.647	\N	\N
2	Time and Materials	2026-05-12 11:09:47.652	2026-05-12 11:09:47.652	2026-05-12 11:09:47.652	\N	\N
3	Service Level Agreement	2026-05-12 11:09:47.657	2026-05-12 11:09:47.657	2026-05-12 11:09:47.656	\N	\N
4	Other	2026-05-12 11:09:47.661	2026-05-12 11:09:47.661	2026-05-12 11:09:47.66	\N	\N
5	Reimbursement	2026-05-12 11:09:47.666	2026-05-12 11:09:47.666	2026-05-12 11:09:47.665	\N	\N
6	Intersect Procurement Process	2026-05-12 11:09:47.67	2026-05-12 11:09:47.67	2026-05-12 11:09:47.669	\N	\N
\.


--
-- Data for Name: bd_currency_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bd_currency_lists (id, currency_name, currency_letter_code, currency_number_code, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	United States Dollar	USD	840	2026-05-12 11:09:17.931	2026-05-12 11:09:17.931	2026-05-12 11:09:17.929	\N	\N
2	Euro	EUR	978	2026-05-12 11:09:17.936	2026-05-12 11:09:17.936	2026-05-12 11:09:17.934	\N	\N
3	Japanese Yen	JPY	392	2026-05-12 11:09:17.939	2026-05-12 11:09:17.939	2026-05-12 11:09:17.938	\N	\N
4	British Pound Sterling	GBP	826	2026-05-12 11:09:17.943	2026-05-12 11:09:17.943	2026-05-12 11:09:17.942	\N	\N
5	Australian Dollar	AUD	036	2026-05-12 11:09:17.947	2026-05-12 11:09:17.947	2026-05-12 11:09:17.946	\N	\N
6	Canadian Dollar	CAD	124	2026-05-12 11:09:17.951	2026-05-12 11:09:17.951	2026-05-12 11:09:17.95	\N	\N
7	Swiss Franc	CHF	756	2026-05-12 11:09:17.955	2026-05-12 11:09:17.955	2026-05-12 11:09:17.954	\N	\N
8	Chinese Yuan	CNY	156	2026-05-12 11:09:17.959	2026-05-12 11:09:17.959	2026-05-12 11:09:17.958	\N	\N
9	Swedish Krona	SEK	752	2026-05-12 11:09:17.964	2026-05-12 11:09:17.964	2026-05-12 11:09:17.962	\N	\N
10	New Zealand Dollar	NZD	554	2026-05-12 11:09:17.967	2026-05-12 11:09:17.967	2026-05-12 11:09:17.966	\N	\N
11	Afghan Afghani	AFN	971	2026-05-12 11:09:17.972	2026-05-12 11:09:17.972	2026-05-12 11:09:17.97	\N	\N
12	Albanian Lek	ALL	008	2026-05-12 11:09:17.976	2026-05-12 11:09:17.976	2026-05-12 11:09:17.974	\N	\N
13	Algerian Dinar	DZD	012	2026-05-12 11:09:17.98	2026-05-12 11:09:17.98	2026-05-12 11:09:17.979	\N	\N
14	Argentine Peso	ARS	032	2026-05-12 11:09:17.984	2026-05-12 11:09:17.984	2026-05-12 11:09:17.983	\N	\N
15	Armenian Dram	AMD	051	2026-05-12 11:09:17.987	2026-05-12 11:09:17.987	2026-05-12 11:09:17.986	\N	\N
16	Aruban Florin	AWG	533	2026-05-12 11:09:17.99	2026-05-12 11:09:17.99	2026-05-12 11:09:17.989	\N	\N
17	Azerbaijani Manat	AZN	944	2026-05-12 11:09:17.994	2026-05-12 11:09:17.994	2026-05-12 11:09:17.993	\N	\N
18	Bahamian Dollar	BSD	044	2026-05-12 11:09:17.997	2026-05-12 11:09:17.997	2026-05-12 11:09:17.996	\N	\N
19	Bahraini Dinar	BHD	048	2026-05-12 11:09:18	2026-05-12 11:09:18	2026-05-12 11:09:17.999	\N	\N
20	Bangladeshi Taka	BDT	050	2026-05-12 11:09:18.004	2026-05-12 11:09:18.004	2026-05-12 11:09:18.003	\N	\N
21	Barbadian Dollar	BBD	052	2026-05-12 11:09:18.007	2026-05-12 11:09:18.007	2026-05-12 11:09:18.007	\N	\N
22	Belarusian Ruble	BYN	933	2026-05-12 11:09:18.011	2026-05-12 11:09:18.011	2026-05-12 11:09:18.01	\N	\N
23	Belize Dollar	BZD	084	2026-05-12 11:09:18.014	2026-05-12 11:09:18.014	2026-05-12 11:09:18.013	\N	\N
24	Bermudian Dollar	BMD	060	2026-05-12 11:09:18.017	2026-05-12 11:09:18.017	2026-05-12 11:09:18.017	\N	\N
25	Bhutanese Ngultrum	BTN	064	2026-05-12 11:09:18.019	2026-05-12 11:09:18.019	2026-05-12 11:09:18.019	\N	\N
26	Bolivian Boliviano	BOB	068	2026-05-12 11:09:18.021	2026-05-12 11:09:18.021	2026-05-12 11:09:18.021	\N	\N
27	Bosnia-Herzegovina Convertible Mark	BAM	977	2026-05-12 11:09:18.024	2026-05-12 11:09:18.024	2026-05-12 11:09:18.023	\N	\N
28	Botswanan Pula	BWP	072	2026-05-12 11:09:18.026	2026-05-12 11:09:18.026	2026-05-12 11:09:18.025	\N	\N
29	Brazilian Real	BRL	986	2026-05-12 11:09:18.027	2026-05-12 11:09:18.027	2026-05-12 11:09:18.027	\N	\N
30	Brunei Dollar	BND	096	2026-05-12 11:09:18.03	2026-05-12 11:09:18.03	2026-05-12 11:09:18.03	\N	\N
31	Bulgarian Lev	BGN	975	2026-05-12 11:09:18.032	2026-05-12 11:09:18.032	2026-05-12 11:09:18.031	\N	\N
32	Burundian Franc	BIF	108	2026-05-12 11:09:18.034	2026-05-12 11:09:18.034	2026-05-12 11:09:18.033	\N	\N
33	Cambodian Riel	KHR	116	2026-05-12 11:09:18.036	2026-05-12 11:09:18.036	2026-05-12 11:09:18.035	\N	\N
34	Cape Verdean Escudo	CVE	132	2026-05-12 11:09:18.037	2026-05-12 11:09:18.037	2026-05-12 11:09:18.037	\N	\N
35	Cayman Islands Dollar	KYD	136	2026-05-12 11:09:18.039	2026-05-12 11:09:18.039	2026-05-12 11:09:18.039	\N	\N
36	CFA Franc BCEAO	XOF	952	2026-05-12 11:09:18.041	2026-05-12 11:09:18.041	2026-05-12 11:09:18.041	\N	\N
37	CFA Franc BEAC	XAF	950	2026-05-12 11:09:18.043	2026-05-12 11:09:18.043	2026-05-12 11:09:18.042	\N	\N
38	Chilean Peso	CLP	152	2026-05-12 11:09:18.044	2026-05-12 11:09:18.044	2026-05-12 11:09:18.044	\N	\N
39	Colombian Peso	COP	170	2026-05-12 11:09:18.046	2026-05-12 11:09:18.046	2026-05-12 11:09:18.046	\N	\N
40	Comorian Franc	KMF	174	2026-05-12 11:09:18.048	2026-05-12 11:09:18.048	2026-05-12 11:09:18.048	\N	\N
41	Congolese Franc	CDF	976	2026-05-12 11:09:18.05	2026-05-12 11:09:18.05	2026-05-12 11:09:18.05	\N	\N
42	Costa Rican Colón	CRC	188	2026-05-12 11:09:18.053	2026-05-12 11:09:18.053	2026-05-12 11:09:18.052	\N	\N
43	Cuban Peso	CUP	192	2026-05-12 11:09:18.055	2026-05-12 11:09:18.055	2026-05-12 11:09:18.055	\N	\N
44	Czech Republic Koruna	CZK	203	2026-05-12 11:09:18.057	2026-05-12 11:09:18.057	2026-05-12 11:09:18.056	\N	\N
45	Danish Krone	DKK	208	2026-05-12 11:09:18.059	2026-05-12 11:09:18.059	2026-05-12 11:09:18.058	\N	\N
46	Djiboutian Franc	DJF	262	2026-05-12 11:09:18.06	2026-05-12 11:09:18.06	2026-05-12 11:09:18.06	\N	\N
47	Dominican Peso	DOP	214	2026-05-12 11:09:18.062	2026-05-12 11:09:18.062	2026-05-12 11:09:18.062	\N	\N
48	East Caribbean Dollar	XCD	951	2026-05-12 11:09:18.065	2026-05-12 11:09:18.065	2026-05-12 11:09:18.064	\N	\N
49	Egyptian Pound	EGP	818	2026-05-12 11:09:18.067	2026-05-12 11:09:18.067	2026-05-12 11:09:18.067	\N	\N
50	Eritrean Nakfa	ERN	232	2026-05-12 11:09:18.069	2026-05-12 11:09:18.069	2026-05-12 11:09:18.069	\N	\N
51	Ethiopian Birr	ETB	230	2026-05-12 11:09:18.072	2026-05-12 11:09:18.072	2026-05-12 11:09:18.071	\N	\N
52	Falkland Islands Pound	FKP	238	2026-05-12 11:09:18.074	2026-05-12 11:09:18.074	2026-05-12 11:09:18.073	\N	\N
53	Fijian Dollar	FJD	242	2026-05-12 11:09:18.076	2026-05-12 11:09:18.076	2026-05-12 11:09:18.076	\N	\N
54	Gambian Dalasi	GMD	270	2026-05-12 11:09:18.079	2026-05-12 11:09:18.079	2026-05-12 11:09:18.078	\N	\N
55	Georgian Lari	GEL	981	2026-05-12 11:09:18.081	2026-05-12 11:09:18.081	2026-05-12 11:09:18.081	\N	\N
56	Ghanaian Cedi	GHS	936	2026-05-12 11:09:18.083	2026-05-12 11:09:18.083	2026-05-12 11:09:18.083	\N	\N
57	Gibraltar Pound	GIP	292	2026-05-12 11:09:18.085	2026-05-12 11:09:18.085	2026-05-12 11:09:18.084	\N	\N
58	Guatemalan Quetzal	GTQ	320	2026-05-12 11:09:18.087	2026-05-12 11:09:18.087	2026-05-12 11:09:18.086	\N	\N
59	Guinean Franc	GNF	324	2026-05-12 11:09:18.089	2026-05-12 11:09:18.089	2026-05-12 11:09:18.089	\N	\N
60	Guyanaese Dollar	GYD	328	2026-05-12 11:09:18.091	2026-05-12 11:09:18.091	2026-05-12 11:09:18.091	\N	\N
61	Haitian Gourde	HTG	332	2026-05-12 11:09:18.094	2026-05-12 11:09:18.094	2026-05-12 11:09:18.094	\N	\N
62	Honduran Lempira	HNL	340	2026-05-12 11:09:18.096	2026-05-12 11:09:18.096	2026-05-12 11:09:18.096	\N	\N
63	Hong Kong Dollar	HKD	344	2026-05-12 11:09:18.098	2026-05-12 11:09:18.098	2026-05-12 11:09:18.098	\N	\N
64	Hungarian Forint	HUF	348	2026-05-12 11:09:18.1	2026-05-12 11:09:18.1	2026-05-12 11:09:18.1	\N	\N
65	Icelandic Króna	ISK	352	2026-05-12 11:09:18.102	2026-05-12 11:09:18.102	2026-05-12 11:09:18.102	\N	\N
66	Indian Rupee	INR	356	2026-05-12 11:09:18.104	2026-05-12 11:09:18.104	2026-05-12 11:09:18.104	\N	\N
67	Indonesian Rupiah	IDR	360	2026-05-12 11:09:18.106	2026-05-12 11:09:18.106	2026-05-12 11:09:18.106	\N	\N
68	Iranian Rial	IRR	364	2026-05-12 11:09:18.109	2026-05-12 11:09:18.109	2026-05-12 11:09:18.108	\N	\N
69	Iraqi Dinar	IQD	368	2026-05-12 11:09:18.111	2026-05-12 11:09:18.111	2026-05-12 11:09:18.11	\N	\N
70	Israeli New Sheqel	ILS	376	2026-05-12 11:09:18.113	2026-05-12 11:09:18.113	2026-05-12 11:09:18.113	\N	\N
71	Jamaican Dollar	JMD	388	2026-05-12 11:09:18.116	2026-05-12 11:09:18.116	2026-05-12 11:09:18.115	\N	\N
72	Jordanian Dinar	JOD	400	2026-05-12 11:09:18.119	2026-05-12 11:09:18.119	2026-05-12 11:09:18.118	\N	\N
73	Kazakhstani Tenge	KZT	398	2026-05-12 11:09:18.121	2026-05-12 11:09:18.121	2026-05-12 11:09:18.121	\N	\N
74	Kenyan Shilling	KES	404	2026-05-12 11:09:18.123	2026-05-12 11:09:18.123	2026-05-12 11:09:18.123	\N	\N
75	Kuwaiti Dinar	KWD	414	2026-05-12 11:09:18.125	2026-05-12 11:09:18.125	2026-05-12 11:09:18.124	\N	\N
76	Kyrgystani Som	KGS	417	2026-05-12 11:09:18.127	2026-05-12 11:09:18.127	2026-05-12 11:09:18.126	\N	\N
77	Laotian Kip	LAK	418	2026-05-12 11:09:18.129	2026-05-12 11:09:18.129	2026-05-12 11:09:18.129	\N	\N
78	Lebanese Pound	LBP	422	2026-05-12 11:09:18.131	2026-05-12 11:09:18.131	2026-05-12 11:09:18.131	\N	\N
79	Lesotho Loti	LSL	426	2026-05-12 11:09:18.134	2026-05-12 11:09:18.134	2026-05-12 11:09:18.133	\N	\N
80	Liberian Dollar	LRD	430	2026-05-12 11:09:18.136	2026-05-12 11:09:18.136	2026-05-12 11:09:18.135	\N	\N
81	Libyan Dinar	LYD	434	2026-05-12 11:09:18.138	2026-05-12 11:09:18.138	2026-05-12 11:09:18.137	\N	\N
82	Macanese Pataca	MOP	446	2026-05-12 11:09:18.14	2026-05-12 11:09:18.14	2026-05-12 11:09:18.139	\N	\N
83	Macedonian Denar	MKD	807	2026-05-12 11:09:18.142	2026-05-12 11:09:18.142	2026-05-12 11:09:18.141	\N	\N
84	Malagasy Ariary	MGA	969	2026-05-12 11:09:18.144	2026-05-12 11:09:18.144	2026-05-12 11:09:18.143	\N	\N
85	Malawian Kwacha	MWK	454	2026-05-12 11:09:18.147	2026-05-12 11:09:18.147	2026-05-12 11:09:18.146	\N	\N
86	Malaysian Ringgit	MYR	458	2026-05-12 11:09:18.149	2026-05-12 11:09:18.149	2026-05-12 11:09:18.148	\N	\N
87	Maldivian Rufiyaa	MVR	462	2026-05-12 11:09:18.151	2026-05-12 11:09:18.151	2026-05-12 11:09:18.15	\N	\N
88	Mauritanian Ouguiya	MRU	929	2026-05-12 11:09:18.153	2026-05-12 11:09:18.153	2026-05-12 11:09:18.153	\N	\N
89	Mauritian Rupee	MUR	480	2026-05-12 11:09:18.156	2026-05-12 11:09:18.156	2026-05-12 11:09:18.155	\N	\N
90	Mexican Peso	MXN	484	2026-05-12 11:09:18.158	2026-05-12 11:09:18.158	2026-05-12 11:09:18.157	\N	\N
91	Moldovan Leu	MDL	498	2026-05-12 11:09:18.161	2026-05-12 11:09:18.161	2026-05-12 11:09:18.16	\N	\N
92	Mongolian Tugrik	MNT	496	2026-05-12 11:09:18.162	2026-05-12 11:09:18.162	2026-05-12 11:09:18.162	\N	\N
93	Moroccan Dirham	MAD	504	2026-05-12 11:09:18.164	2026-05-12 11:09:18.164	2026-05-12 11:09:18.164	\N	\N
94	Mozambican Metical	MZN	943	2026-05-12 11:09:18.166	2026-05-12 11:09:18.166	2026-05-12 11:09:18.165	\N	\N
95	Namibian Dollar	NAD	516	2026-05-12 11:09:18.168	2026-05-12 11:09:18.168	2026-05-12 11:09:18.167	\N	\N
96	Nepalese Rupee	NPR	524	2026-05-12 11:09:18.17	2026-05-12 11:09:18.17	2026-05-12 11:09:18.169	\N	\N
97	Nicaraguan Córdoba	NIO	558	2026-05-12 11:09:18.172	2026-05-12 11:09:18.172	2026-05-12 11:09:18.172	\N	\N
98	Nigerian Naira	NGN	566	2026-05-12 11:09:18.174	2026-05-12 11:09:18.174	2026-05-12 11:09:18.174	\N	\N
99	North Korean Won	KPW	408	2026-05-12 11:09:18.176	2026-05-12 11:09:18.176	2026-05-12 11:09:18.175	\N	\N
100	Norwegian Krone	NOK	578	2026-05-12 11:09:18.178	2026-05-12 11:09:18.178	2026-05-12 11:09:18.177	\N	\N
101	Omani Rial	OMR	512	2026-05-12 11:09:18.18	2026-05-12 11:09:18.18	2026-05-12 11:09:18.179	\N	\N
102	Pakistani Rupee	PKR	586	2026-05-12 11:09:18.181	2026-05-12 11:09:18.181	2026-05-12 11:09:18.181	\N	\N
103	Panamanian Balboa	PAB	590	2026-05-12 11:09:18.184	2026-05-12 11:09:18.184	2026-05-12 11:09:18.184	\N	\N
104	Papua New Guinean Kina	PGK	598	2026-05-12 11:09:18.186	2026-05-12 11:09:18.186	2026-05-12 11:09:18.185	\N	\N
105	Paraguayan Guarani	PYG	600	2026-05-12 11:09:18.188	2026-05-12 11:09:18.188	2026-05-12 11:09:18.187	\N	\N
106	Peruvian Nuevo Sol	PEN	604	2026-05-12 11:09:18.19	2026-05-12 11:09:18.19	2026-05-12 11:09:18.189	\N	\N
107	Philippine Peso	PHP	608	2026-05-12 11:09:18.192	2026-05-12 11:09:18.192	2026-05-12 11:09:18.191	\N	\N
108	Polish Zloty	PLN	985	2026-05-12 11:09:18.193	2026-05-12 11:09:18.193	2026-05-12 11:09:18.193	\N	\N
109	Qatari Rial	QAR	634	2026-05-12 11:09:18.196	2026-05-12 11:09:18.196	2026-05-12 11:09:18.195	\N	\N
110	Romanian Leu	RON	946	2026-05-12 11:09:18.198	2026-05-12 11:09:18.198	2026-05-12 11:09:18.197	\N	\N
111	Russian Ruble	RUB	643	2026-05-12 11:09:18.2	2026-05-12 11:09:18.2	2026-05-12 11:09:18.199	\N	\N
112	Rwandan Franc	RWF	646	2026-05-12 11:09:18.202	2026-05-12 11:09:18.202	2026-05-12 11:09:18.201	\N	\N
113	Saint Helena Pound	SHP	654	2026-05-12 11:09:18.204	2026-05-12 11:09:18.204	2026-05-12 11:09:18.203	\N	\N
114	Samoan Tala	WST	882	2026-05-12 11:09:18.205	2026-05-12 11:09:18.205	2026-05-12 11:09:18.205	\N	\N
115	Saudi Riyal	SAR	682	2026-05-12 11:09:18.21	2026-05-12 11:09:18.21	2026-05-12 11:09:18.209	\N	\N
116	Serbian Dinar	RSD	941	2026-05-12 11:09:18.214	2026-05-12 11:09:18.214	2026-05-12 11:09:18.213	\N	\N
117	Seychellois Rupee	SCR	690	2026-05-12 11:09:18.218	2026-05-12 11:09:18.218	2026-05-12 11:09:18.217	\N	\N
118	Sierra Leonean Leone	SLE	925	2026-05-12 11:09:18.222	2026-05-12 11:09:18.222	2026-05-12 11:09:18.221	\N	\N
119	Singapore Dollar	SGD	702	2026-05-12 11:09:18.226	2026-05-12 11:09:18.226	2026-05-12 11:09:18.225	\N	\N
120	Solomon Islands Dollar	SBD	090	2026-05-12 11:09:18.23	2026-05-12 11:09:18.23	2026-05-12 11:09:18.229	\N	\N
121	Somali Shilling	SOS	706	2026-05-12 11:09:18.234	2026-05-12 11:09:18.234	2026-05-12 11:09:18.233	\N	\N
122	South African Rand	ZAR	710	2026-05-12 11:09:18.238	2026-05-12 11:09:18.238	2026-05-12 11:09:18.237	\N	\N
123	South Korean Won	KRW	410	2026-05-12 11:09:18.242	2026-05-12 11:09:18.242	2026-05-12 11:09:18.241	\N	\N
124	South Sudanese Pound	SSP	728	2026-05-12 11:09:18.251	2026-05-12 11:09:18.251	2026-05-12 11:09:18.251	\N	\N
125	Sri Lankan Rupee	LKR	144	2026-05-12 11:09:18.254	2026-05-12 11:09:18.254	2026-05-12 11:09:18.253	\N	\N
126	Sudanese Pound	SDG	938	2026-05-12 11:09:18.256	2026-05-12 11:09:18.256	2026-05-12 11:09:18.255	\N	\N
127	Surinamese Dollar	SRD	968	2026-05-12 11:09:18.258	2026-05-12 11:09:18.258	2026-05-12 11:09:18.257	\N	\N
128	Syrian Pound	SYP	760	2026-05-12 11:09:18.261	2026-05-12 11:09:18.261	2026-05-12 11:09:18.26	\N	\N
129	São Tomé and Príncipe Dobra	STN	930	2026-05-12 11:09:18.263	2026-05-12 11:09:18.263	2026-05-12 11:09:18.262	\N	\N
130	Tajikistani Somoni	TJS	972	2026-05-12 11:09:18.264	2026-05-12 11:09:18.264	2026-05-12 11:09:18.264	\N	\N
131	Tanzanian Shilling	TZS	834	2026-05-12 11:09:18.267	2026-05-12 11:09:18.267	2026-05-12 11:09:18.266	\N	\N
132	Thai Baht	THB	764	2026-05-12 11:09:18.269	2026-05-12 11:09:18.269	2026-05-12 11:09:18.268	\N	\N
133	Tongan Paʻanga	TOP	776	2026-05-12 11:09:18.271	2026-05-12 11:09:18.271	2026-05-12 11:09:18.27	\N	\N
134	Trinidad and Tobago Dollar	TTD	780	2026-05-12 11:09:18.273	2026-05-12 11:09:18.273	2026-05-12 11:09:18.273	\N	\N
135	Tunisian Dinar	TND	788	2026-05-12 11:09:18.275	2026-05-12 11:09:18.275	2026-05-12 11:09:18.275	\N	\N
136	Turkish Lira	TRY	949	2026-05-12 11:09:18.278	2026-05-12 11:09:18.278	2026-05-12 11:09:18.277	\N	\N
137	Turkmenistani Manat	TMT	934	2026-05-12 11:09:18.28	2026-05-12 11:09:18.28	2026-05-12 11:09:18.28	\N	\N
138	Ugandan Shilling	UGX	800	2026-05-12 11:09:18.282	2026-05-12 11:09:18.282	2026-05-12 11:09:18.282	\N	\N
139	Ukrainian Hryvnia	UAH	980	2026-05-12 11:09:18.284	2026-05-12 11:09:18.284	2026-05-12 11:09:18.284	\N	\N
140	United Arab Emirates Dirham	AED	784	2026-05-12 11:09:18.286	2026-05-12 11:09:18.286	2026-05-12 11:09:18.286	\N	\N
141	Uruguayan Peso	UYU	858	2026-05-12 11:09:18.288	2026-05-12 11:09:18.288	2026-05-12 11:09:18.288	\N	\N
142	Uzbekistan Som	UZS	860	2026-05-12 11:09:18.29	2026-05-12 11:09:18.29	2026-05-12 11:09:18.29	\N	\N
143	Vanuatu Vatu	VUV	548	2026-05-12 11:09:18.293	2026-05-12 11:09:18.293	2026-05-12 11:09:18.292	\N	\N
144	Venezuelan Bolívar	VES	928	2026-05-12 11:09:18.295	2026-05-12 11:09:18.295	2026-05-12 11:09:18.295	\N	\N
145	Vietnamese Dong	VND	704	2026-05-12 11:09:18.297	2026-05-12 11:09:18.297	2026-05-12 11:09:18.297	\N	\N
146	Yemeni Rial	YER	886	2026-05-12 11:09:18.3	2026-05-12 11:09:18.3	2026-05-12 11:09:18.299	\N	\N
147	Zambian Kwacha	ZMW	967	2026-05-12 11:09:18.303	2026-05-12 11:09:18.303	2026-05-12 11:09:18.302	\N	\N
148	Zimbabwean Dollar	ZWL	932	2026-05-12 11:09:18.305	2026-05-12 11:09:18.305	2026-05-12 11:09:18.305	\N	\N
149	Venezuelan Bolívar Fuerte	VEF	937	2026-05-12 11:09:18.308	2026-05-12 11:09:18.308	2026-05-12 11:09:18.308	\N	\N
\.


--
-- Data for Name: bd_intersect_committees; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bd_intersect_committees (id, committee_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Technical Steering Committee	2026-05-12 11:08:00.675	2026-05-12 11:08:00.675	2026-05-12 11:08:00.675	\N	\N
2	Product Committee	2026-05-12 11:08:00.681	2026-05-12 11:08:00.681	2026-05-12 11:08:00.679	\N	\N
3	Open Source Committee	2026-05-12 11:08:00.684	2026-05-12 11:08:00.684	2026-05-12 11:08:00.683	\N	\N
4	Civics Committee	2026-05-12 11:08:00.688	2026-05-12 11:08:00.688	2026-05-12 11:08:00.687	\N	\N
5	Membership & Community Committee	2026-05-12 11:08:00.691	2026-05-12 11:08:00.691	2026-05-12 11:08:00.69	\N	\N
6	Budget Committee	2026-05-12 11:08:00.695	2026-05-12 11:08:00.695	2026-05-12 11:08:00.694	\N	\N
7	Marketing Committee	2026-05-12 11:08:00.699	2026-05-12 11:08:00.699	2026-05-12 11:08:00.697	\N	\N
8	Unsure	2026-05-12 11:08:00.702	2026-05-12 11:08:00.702	2026-05-12 11:08:00.701	\N	\N
9	None	2026-05-12 11:08:00.706	2026-05-12 11:08:00.706	2026-05-12 11:08:00.704	\N	\N
\.


--
-- Data for Name: bd_road_maps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bd_road_maps (id, roadmap_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Scaling the L1 Engine	2026-05-12 11:05:34.235	2026-05-12 11:05:34.235	2026-05-12 11:05:34.234	\N	\N
2	Architectural Excellence	2026-05-12 11:05:34.239	2026-05-12 11:05:34.239	2026-05-12 11:05:34.238	\N	\N
3	Leios	2026-05-12 11:05:34.242	2026-05-12 11:05:34.242	2026-05-12 11:05:34.241	\N	\N
4	Incoming Liquidity	2026-05-12 11:05:34.245	2026-05-12 11:05:34.245	2026-05-12 11:05:34.244	\N	\N
5	L2 Expansion	2026-05-12 11:05:34.248	2026-05-12 11:05:34.248	2026-05-12 11:05:34.247	\N	\N
6	Developer / User Experience	2026-05-12 11:05:34.251	2026-05-12 11:05:34.251	2026-05-12 11:05:34.25	\N	\N
7	Programmable Assets	2026-05-12 11:05:34.254	2026-05-12 11:05:34.254	2026-05-12 11:05:34.253	\N	\N
8	Multiple Node Implementations	2026-05-12 11:05:34.257	2026-05-12 11:05:34.257	2026-05-12 11:05:34.256	\N	\N
9	SPO Incentive Improvements	2026-05-12 11:05:34.26	2026-05-12 11:05:34.26	2026-05-12 11:05:34.259	\N	\N
10	It doesn't align	2026-05-12 11:05:34.263	2026-05-12 11:05:34.263	2026-05-12 11:05:34.262	\N	\N
11	It supports the product roadmap	2026-05-12 11:05:34.266	2026-05-12 11:05:34.266	2026-05-12 11:05:34.266	\N	\N
\.


--
-- Data for Name: bd_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bd_types (id, type_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Core	2026-05-12 11:07:42.069	2026-05-12 11:07:42.069	2026-05-12 11:07:42.068	\N	\N
2	Research	2026-05-12 11:07:42.073	2026-05-12 11:07:42.073	2026-05-12 11:07:42.072	\N	\N
3	Governance Support	2026-05-12 11:07:42.075	2026-05-12 11:07:42.075	2026-05-12 11:07:42.075	\N	\N
4	Marketing & Innovation	2026-05-12 11:07:42.086	2026-05-12 11:07:42.086	2026-05-12 11:07:42.086	\N	\N
5	None of these	2026-05-12 11:07:42.091	2026-05-12 11:07:42.091	2026-05-12 11:07:42.089	\N	\N
\.


--
-- Data for Name: country_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.country_lists (id, country_name, alfa_2_code, alfa_3_code, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Afghanistan	AF	AFG	2026-05-12 11:03:04.401	2026-05-12 11:03:04.401	2026-05-12 11:03:04.399	\N	\N
2	Albania	AL	ALB	2026-05-12 11:03:04.406	2026-05-12 11:03:04.406	2026-05-12 11:03:04.405	\N	\N
3	Algeria	DZ	DZA	2026-05-12 11:03:04.411	2026-05-12 11:03:04.411	2026-05-12 11:03:04.41	\N	\N
4	American Samoa	AS	ASM	2026-05-12 11:03:04.416	2026-05-12 11:03:04.416	2026-05-12 11:03:04.414	\N	\N
5	Andorra	AD	AND	2026-05-12 11:03:04.421	2026-05-12 11:03:04.421	2026-05-12 11:03:04.419	\N	\N
6	Angola	AO	AGO	2026-05-12 11:03:04.426	2026-05-12 11:03:04.426	2026-05-12 11:03:04.423	\N	\N
7	Anguilla	AI	AIA	2026-05-12 11:03:04.43	2026-05-12 11:03:04.43	2026-05-12 11:03:04.428	\N	\N
8	Antarctica	AQ	ATA	2026-05-12 11:03:04.435	2026-05-12 11:03:04.435	2026-05-12 11:03:04.433	\N	\N
9	Antigua and Barbuda	AG	ATG	2026-05-12 11:03:04.44	2026-05-12 11:03:04.44	2026-05-12 11:03:04.438	\N	\N
10	Argentina	AR	ARG	2026-05-12 11:03:04.449	2026-05-12 11:03:04.449	2026-05-12 11:03:04.448	\N	\N
11	Armenia	AM	ARM	2026-05-12 11:03:04.453	2026-05-12 11:03:04.453	2026-05-12 11:03:04.452	\N	\N
12	Aruba	AW	ABW	2026-05-12 11:03:04.456	2026-05-12 11:03:04.456	2026-05-12 11:03:04.455	\N	\N
13	Australia	AU	AUS	2026-05-12 11:03:04.459	2026-05-12 11:03:04.459	2026-05-12 11:03:04.459	\N	\N
14	Austria	AT	AUT	2026-05-12 11:03:04.463	2026-05-12 11:03:04.463	2026-05-12 11:03:04.462	\N	\N
15	Azerbaijan	AZ	AZE	2026-05-12 11:03:04.466	2026-05-12 11:03:04.466	2026-05-12 11:03:04.465	\N	\N
16	Bahamas	BS	BHS	2026-05-12 11:03:04.469	2026-05-12 11:03:04.469	2026-05-12 11:03:04.468	\N	\N
17	Bahrain	BH	BHR	2026-05-12 11:03:04.472	2026-05-12 11:03:04.472	2026-05-12 11:03:04.471	\N	\N
18	Bangladesh	BD	BGD	2026-05-12 11:03:04.475	2026-05-12 11:03:04.475	2026-05-12 11:03:04.474	\N	\N
19	Barbados	BB	BRB	2026-05-12 11:03:04.477	2026-05-12 11:03:04.477	2026-05-12 11:03:04.477	\N	\N
20	Belarus	BY	BLR	2026-05-12 11:03:04.479	2026-05-12 11:03:04.479	2026-05-12 11:03:04.479	\N	\N
21	Belgium	BE	BEL	2026-05-12 11:03:04.481	2026-05-12 11:03:04.481	2026-05-12 11:03:04.481	\N	\N
22	Belize	BZ	BLZ	2026-05-12 11:03:04.484	2026-05-12 11:03:04.484	2026-05-12 11:03:04.483	\N	\N
23	Benin	BJ	BEN	2026-05-12 11:03:04.487	2026-05-12 11:03:04.487	2026-05-12 11:03:04.486	\N	\N
24	Bermuda	BM	BMU	2026-05-12 11:03:04.489	2026-05-12 11:03:04.489	2026-05-12 11:03:04.488	\N	\N
25	Bhutan	BT	BTN	2026-05-12 11:03:04.493	2026-05-12 11:03:04.493	2026-05-12 11:03:04.491	\N	\N
26	Bolivia	BO	BOL	2026-05-12 11:03:04.496	2026-05-12 11:03:04.496	2026-05-12 11:03:04.495	\N	\N
27	Bosnia and Herzegovina	BA	BIH	2026-05-12 11:03:04.498	2026-05-12 11:03:04.498	2026-05-12 11:03:04.498	\N	\N
28	Botswana	BW	BWA	2026-05-12 11:03:04.5	2026-05-12 11:03:04.5	2026-05-12 11:03:04.5	\N	\N
29	Bouvet Island	BV	BVT	2026-05-12 11:03:04.503	2026-05-12 11:03:04.503	2026-05-12 11:03:04.502	\N	\N
30	Brazil	BR	BRA	2026-05-12 11:03:04.505	2026-05-12 11:03:04.505	2026-05-12 11:03:04.505	\N	\N
31	British Indian Ocean Territory	IO	IOT	2026-05-12 11:03:04.507	2026-05-12 11:03:04.507	2026-05-12 11:03:04.507	\N	\N
32	British Virgin Islands	VG	VGB	2026-05-12 11:03:04.51	2026-05-12 11:03:04.51	2026-05-12 11:03:04.509	\N	\N
33	Brunei	BN	BRN	2026-05-12 11:03:04.512	2026-05-12 11:03:04.512	2026-05-12 11:03:04.511	\N	\N
34	Bulgaria	BG	BGR	2026-05-12 11:03:04.514	2026-05-12 11:03:04.514	2026-05-12 11:03:04.513	\N	\N
35	Burkina Faso	BF	BFA	2026-05-12 11:03:04.516	2026-05-12 11:03:04.516	2026-05-12 11:03:04.516	\N	\N
36	Burundi	BI	BDI	2026-05-12 11:03:04.518	2026-05-12 11:03:04.518	2026-05-12 11:03:04.518	\N	\N
37	Cambodia	KH	KHM	2026-05-12 11:03:04.52	2026-05-12 11:03:04.52	2026-05-12 11:03:04.52	\N	\N
38	Cameroon	CM	CMR	2026-05-12 11:03:04.523	2026-05-12 11:03:04.523	2026-05-12 11:03:04.522	\N	\N
39	Canada	CA	CAN	2026-05-12 11:03:04.524	2026-05-12 11:03:04.524	2026-05-12 11:03:04.524	\N	\N
40	Canary Islands	IC	ESP	2026-05-12 11:03:04.527	2026-05-12 11:03:04.527	2026-05-12 11:03:04.526	\N	\N
41	Cape Verde	CV	CPV	2026-05-12 11:03:04.53	2026-05-12 11:03:04.53	2026-05-12 11:03:04.529	\N	\N
42	Caribbean Netherlands	BQ	BES	2026-05-12 11:03:04.532	2026-05-12 11:03:04.532	2026-05-12 11:03:04.532	\N	\N
43	Cayman Islands	KY	CYM	2026-05-12 11:03:04.534	2026-05-12 11:03:04.534	2026-05-12 11:03:04.534	\N	\N
44	Central African Republic	CF	CAF	2026-05-12 11:03:04.536	2026-05-12 11:03:04.536	2026-05-12 11:03:04.536	\N	\N
45	Chad	TD	TCD	2026-05-12 11:03:04.54	2026-05-12 11:03:04.54	2026-05-12 11:03:04.539	\N	\N
46	Chile	CL	CHL	2026-05-12 11:03:04.542	2026-05-12 11:03:04.542	2026-05-12 11:03:04.541	\N	\N
47	China	CN	CHN	2026-05-12 11:03:04.544	2026-05-12 11:03:04.544	2026-05-12 11:03:04.544	\N	\N
48	Christmas Island	CX	CXR	2026-05-12 11:03:04.546	2026-05-12 11:03:04.546	2026-05-12 11:03:04.546	\N	\N
49	Cocos (Keeling) Islands	CC	CCK	2026-05-12 11:03:04.549	2026-05-12 11:03:04.549	2026-05-12 11:03:04.548	\N	\N
50	Colombia	CO	COL	2026-05-12 11:03:04.551	2026-05-12 11:03:04.551	2026-05-12 11:03:04.55	\N	\N
51	Comoros	KM	COM	2026-05-12 11:03:04.553	2026-05-12 11:03:04.553	2026-05-12 11:03:04.553	\N	\N
52	Congo	CG	COG	2026-05-12 11:03:04.555	2026-05-12 11:03:04.555	2026-05-12 11:03:04.555	\N	\N
53	Cook Islands	CK	COK	2026-05-12 11:03:04.557	2026-05-12 11:03:04.557	2026-05-12 11:03:04.557	\N	\N
54	Costa Rica	CR	CRI	2026-05-12 11:03:04.559	2026-05-12 11:03:04.559	2026-05-12 11:03:04.559	\N	\N
55	Cote d'Ivoire	CI	CIV	2026-05-12 11:03:04.562	2026-05-12 11:03:04.562	2026-05-12 11:03:04.561	\N	\N
56	Croatia	HR	HRV	2026-05-12 11:03:04.564	2026-05-12 11:03:04.564	2026-05-12 11:03:04.563	\N	\N
57	Cuba	CU	CUB	2026-05-12 11:03:04.566	2026-05-12 11:03:04.566	2026-05-12 11:03:04.565	\N	\N
58	Curaçao	CW	CUW	2026-05-12 11:03:04.569	2026-05-12 11:03:04.569	2026-05-12 11:03:04.569	\N	\N
59	Cyprus	CY	CYP	2026-05-12 11:03:04.571	2026-05-12 11:03:04.571	2026-05-12 11:03:04.57	\N	\N
60	Czech Republic	CZ	CZE	2026-05-12 11:03:04.573	2026-05-12 11:03:04.573	2026-05-12 11:03:04.572	\N	\N
61	Democratic Republic of the Congo	CD	COD	2026-05-12 11:03:04.574	2026-05-12 11:03:04.574	2026-05-12 11:03:04.574	\N	\N
62	Denmark	DK	DNK	2026-05-12 11:03:04.576	2026-05-12 11:03:04.576	2026-05-12 11:03:04.575	\N	\N
63	Djibouti	DJ	DJI	2026-05-12 11:03:04.578	2026-05-12 11:03:04.578	2026-05-12 11:03:04.577	\N	\N
64	Dominica	DM	DMA	2026-05-12 11:03:04.58	2026-05-12 11:03:04.58	2026-05-12 11:03:04.579	\N	\N
65	Dominican Republic	DO	DOM	2026-05-12 11:03:04.581	2026-05-12 11:03:04.581	2026-05-12 11:03:04.581	\N	\N
66	East Timor	TL	TLS	2026-05-12 11:03:04.585	2026-05-12 11:03:04.585	2026-05-12 11:03:04.584	\N	\N
67	Ecuador	EC	ECU	2026-05-12 11:03:04.589	2026-05-12 11:03:04.589	2026-05-12 11:03:04.588	\N	\N
68	Egypt	EG	EGY	2026-05-12 11:03:04.593	2026-05-12 11:03:04.593	2026-05-12 11:03:04.591	\N	\N
69	El Salvador	SV	SLV	2026-05-12 11:03:04.596	2026-05-12 11:03:04.596	2026-05-12 11:03:04.595	\N	\N
70	Equatorial Guinea	GQ	GNQ	2026-05-12 11:03:04.6	2026-05-12 11:03:04.6	2026-05-12 11:03:04.599	\N	\N
71	Eritrea	ER	ERI	2026-05-12 11:03:04.605	2026-05-12 11:03:04.605	2026-05-12 11:03:04.604	\N	\N
72	Estonia	EE	EST	2026-05-12 11:03:04.609	2026-05-12 11:03:04.609	2026-05-12 11:03:04.607	\N	\N
73	Ethiopia	ET	ETH	2026-05-12 11:03:04.612	2026-05-12 11:03:04.612	2026-05-12 11:03:04.612	\N	\N
74	Falkland Islands	FK	FLK	2026-05-12 11:03:04.616	2026-05-12 11:03:04.616	2026-05-12 11:03:04.615	\N	\N
75	Faroe Islands	FO	FRO	2026-05-12 11:03:04.62	2026-05-12 11:03:04.62	2026-05-12 11:03:04.619	\N	\N
76	Fiji	FJ	FJI	2026-05-12 11:03:04.628	2026-05-12 11:03:04.628	2026-05-12 11:03:04.627	\N	\N
77	Finland	FI	FIN	2026-05-12 11:03:04.63	2026-05-12 11:03:04.63	2026-05-12 11:03:04.63	\N	\N
78	France	FR	FRA	2026-05-12 11:03:04.632	2026-05-12 11:03:04.632	2026-05-12 11:03:04.632	\N	\N
79	French Guiana	GF	GUF	2026-05-12 11:03:04.634	2026-05-12 11:03:04.634	2026-05-12 11:03:04.634	\N	\N
80	French Polynesia	PF	PYF	2026-05-12 11:03:04.636	2026-05-12 11:03:04.636	2026-05-12 11:03:04.635	\N	\N
81	Gabon	GA	GAB	2026-05-12 11:03:04.638	2026-05-12 11:03:04.638	2026-05-12 11:03:04.637	\N	\N
82	Gambia	GM	GMB	2026-05-12 11:03:04.64	2026-05-12 11:03:04.64	2026-05-12 11:03:04.639	\N	\N
83	Georgia	GE	GEO	2026-05-12 11:03:04.642	2026-05-12 11:03:04.642	2026-05-12 11:03:04.642	\N	\N
84	Germany	DE	DEU	2026-05-12 11:03:04.644	2026-05-12 11:03:04.644	2026-05-12 11:03:04.644	\N	\N
85	Ghana	GH	GHA	2026-05-12 11:03:04.646	2026-05-12 11:03:04.646	2026-05-12 11:03:04.646	\N	\N
86	Gibraltar	GI	GIB	2026-05-12 11:03:04.648	2026-05-12 11:03:04.648	2026-05-12 11:03:04.648	\N	\N
87	Greece	GR	GRC	2026-05-12 11:03:04.65	2026-05-12 11:03:04.65	2026-05-12 11:03:04.65	\N	\N
88	Greenland	GL	GRL	2026-05-12 11:03:04.652	2026-05-12 11:03:04.652	2026-05-12 11:03:04.652	\N	\N
89	Grenada	GD	GRD	2026-05-12 11:03:04.655	2026-05-12 11:03:04.655	2026-05-12 11:03:04.655	\N	\N
90	Guadeloupe	GP	GLP	2026-05-12 11:03:04.657	2026-05-12 11:03:04.657	2026-05-12 11:03:04.657	\N	\N
91	Guam	GU	GUM	2026-05-12 11:03:04.659	2026-05-12 11:03:04.659	2026-05-12 11:03:04.659	\N	\N
92	Guatemala	GT	GTM	2026-05-12 11:03:04.662	2026-05-12 11:03:04.662	2026-05-12 11:03:04.661	\N	\N
93	Guinea	GN	GIN	2026-05-12 11:03:04.664	2026-05-12 11:03:04.664	2026-05-12 11:03:04.663	\N	\N
94	Guinea-Bissau	GW	GNB	2026-05-12 11:03:04.666	2026-05-12 11:03:04.666	2026-05-12 11:03:04.665	\N	\N
95	Guyana	GY	GUY	2026-05-12 11:03:04.668	2026-05-12 11:03:04.668	2026-05-12 11:03:04.667	\N	\N
96	Haiti	HT	HTI	2026-05-12 11:03:04.671	2026-05-12 11:03:04.671	2026-05-12 11:03:04.67	\N	\N
97	Heard Island and McDonald Islands	HM	HMD	2026-05-12 11:03:04.673	2026-05-12 11:03:04.673	2026-05-12 11:03:04.673	\N	\N
98	Honduras	HN	HND	2026-05-12 11:03:04.676	2026-05-12 11:03:04.676	2026-05-12 11:03:04.675	\N	\N
99	Hong Kong	HK	HKG	2026-05-12 11:03:04.678	2026-05-12 11:03:04.678	2026-05-12 11:03:04.678	\N	\N
100	Hungary	HU	HUN	2026-05-12 11:03:04.68	2026-05-12 11:03:04.68	2026-05-12 11:03:04.68	\N	\N
101	Iceland	IS	ISL	2026-05-12 11:03:04.683	2026-05-12 11:03:04.683	2026-05-12 11:03:04.682	\N	\N
102	India	IN	IND	2026-05-12 11:03:04.685	2026-05-12 11:03:04.685	2026-05-12 11:03:04.685	\N	\N
103	Indonesia	ID	IDN	2026-05-12 11:03:04.687	2026-05-12 11:03:04.687	2026-05-12 11:03:04.687	\N	\N
104	Iran	IR	IRN	2026-05-12 11:03:04.689	2026-05-12 11:03:04.689	2026-05-12 11:03:04.689	\N	\N
105	Iraq	IQ	IRQ	2026-05-12 11:03:04.691	2026-05-12 11:03:04.691	2026-05-12 11:03:04.691	\N	\N
106	Ireland	IE	IRL	2026-05-12 11:03:04.693	2026-05-12 11:03:04.693	2026-05-12 11:03:04.693	\N	\N
107	Israel	IL	ISR	2026-05-12 11:03:04.695	2026-05-12 11:03:04.695	2026-05-12 11:03:04.695	\N	\N
108	Italy	IT	ITA	2026-05-12 11:03:04.698	2026-05-12 11:03:04.698	2026-05-12 11:03:04.697	\N	\N
109	Jamaica	JM	JAM	2026-05-12 11:03:04.7	2026-05-12 11:03:04.7	2026-05-12 11:03:04.699	\N	\N
110	Japan	JP	JPN	2026-05-12 11:03:04.703	2026-05-12 11:03:04.703	2026-05-12 11:03:04.702	\N	\N
111	Jordan	JO	JOR	2026-05-12 11:03:04.706	2026-05-12 11:03:04.706	2026-05-12 11:03:04.705	\N	\N
112	Kazakhstan	KZ	KAZ	2026-05-12 11:03:04.708	2026-05-12 11:03:04.708	2026-05-12 11:03:04.707	\N	\N
113	Kenya	KE	KEN	2026-05-12 11:03:04.711	2026-05-12 11:03:04.711	2026-05-12 11:03:04.71	\N	\N
114	Kiribati	KI	KIR	2026-05-12 11:03:04.713	2026-05-12 11:03:04.713	2026-05-12 11:03:04.713	\N	\N
115	Kuwait	KW	KWT	2026-05-12 11:03:04.715	2026-05-12 11:03:04.715	2026-05-12 11:03:04.715	\N	\N
116	Kyrgyzstan	KG	KGZ	2026-05-12 11:03:04.717	2026-05-12 11:03:04.717	2026-05-12 11:03:04.717	\N	\N
117	Laos	LA	LAO	2026-05-12 11:03:04.719	2026-05-12 11:03:04.719	2026-05-12 11:03:04.719	\N	\N
118	Latvia	LV	LVA	2026-05-12 11:03:04.721	2026-05-12 11:03:04.721	2026-05-12 11:03:04.721	\N	\N
119	Lebanon	LB	LBN	2026-05-12 11:03:04.723	2026-05-12 11:03:04.723	2026-05-12 11:03:04.723	\N	\N
120	Lesotho	LS	LSO	2026-05-12 11:03:04.725	2026-05-12 11:03:04.725	2026-05-12 11:03:04.725	\N	\N
121	Liberia	LR	LBR	2026-05-12 11:03:04.727	2026-05-12 11:03:04.727	2026-05-12 11:03:04.726	\N	\N
122	Libya	LY	LBY	2026-05-12 11:03:04.729	2026-05-12 11:03:04.729	2026-05-12 11:03:04.728	\N	\N
123	Liechtenstein	LI	LIE	2026-05-12 11:03:04.731	2026-05-12 11:03:04.731	2026-05-12 11:03:04.73	\N	\N
124	Lithuania	LT	LTU	2026-05-12 11:03:04.732	2026-05-12 11:03:04.732	2026-05-12 11:03:04.732	\N	\N
125	Luxembourg	LU	LUX	2026-05-12 11:03:04.734	2026-05-12 11:03:04.734	2026-05-12 11:03:04.734	\N	\N
126	Macau	MO	MAC	2026-05-12 11:03:04.737	2026-05-12 11:03:04.737	2026-05-12 11:03:04.736	\N	\N
127	Madagascar	MG	MDG	2026-05-12 11:03:04.739	2026-05-12 11:03:04.739	2026-05-12 11:03:04.738	\N	\N
128	Malawi	MW	MWI	2026-05-12 11:03:04.741	2026-05-12 11:03:04.741	2026-05-12 11:03:04.74	\N	\N
129	Malaysia	MY	MYS	2026-05-12 11:03:04.743	2026-05-12 11:03:04.743	2026-05-12 11:03:04.742	\N	\N
130	Maldives	MV	MDV	2026-05-12 11:03:04.745	2026-05-12 11:03:04.745	2026-05-12 11:03:04.744	\N	\N
131	Mali	ML	MLI	2026-05-12 11:03:04.747	2026-05-12 11:03:04.747	2026-05-12 11:03:04.746	\N	\N
132	Malta	MT	MLT	2026-05-12 11:03:04.749	2026-05-12 11:03:04.749	2026-05-12 11:03:04.748	\N	\N
133	Marshall Islands	MH	MHL	2026-05-12 11:03:04.751	2026-05-12 11:03:04.751	2026-05-12 11:03:04.75	\N	\N
134	Martinique	MQ	MTQ	2026-05-12 11:03:04.753	2026-05-12 11:03:04.753	2026-05-12 11:03:04.752	\N	\N
135	Mauritania	MR	MRT	2026-05-12 11:03:04.755	2026-05-12 11:03:04.755	2026-05-12 11:03:04.754	\N	\N
136	Mauritius	MU	MUS	2026-05-12 11:03:04.757	2026-05-12 11:03:04.757	2026-05-12 11:03:04.756	\N	\N
137	Mayotte	YT	MYT	2026-05-12 11:03:04.759	2026-05-12 11:03:04.759	2026-05-12 11:03:04.758	\N	\N
138	Mexico	MX	MEX	2026-05-12 11:03:04.762	2026-05-12 11:03:04.762	2026-05-12 11:03:04.762	\N	\N
139	Micronesia	FM	FSM	2026-05-12 11:03:04.764	2026-05-12 11:03:04.764	2026-05-12 11:03:04.764	\N	\N
140	Moldova	MD	MDA	2026-05-12 11:03:04.766	2026-05-12 11:03:04.766	2026-05-12 11:03:04.766	\N	\N
141	Monaco	MC	MCO	2026-05-12 11:03:04.768	2026-05-12 11:03:04.768	2026-05-12 11:03:04.768	\N	\N
142	Mongolia	MN	MNG	2026-05-12 11:03:04.77	2026-05-12 11:03:04.77	2026-05-12 11:03:04.77	\N	\N
143	Montenegro	ME	MNE	2026-05-12 11:03:04.773	2026-05-12 11:03:04.773	2026-05-12 11:03:04.772	\N	\N
144	Montserrat	MS	MSR	2026-05-12 11:03:04.775	2026-05-12 11:03:04.775	2026-05-12 11:03:04.775	\N	\N
145	Morocco	MA	MAR	2026-05-12 11:03:04.777	2026-05-12 11:03:04.777	2026-05-12 11:03:04.777	\N	\N
146	Mozambique	MZ	MOZ	2026-05-12 11:03:04.779	2026-05-12 11:03:04.779	2026-05-12 11:03:04.779	\N	\N
147	Myanmar	MM	MMR	2026-05-12 11:03:04.781	2026-05-12 11:03:04.781	2026-05-12 11:03:04.781	\N	\N
148	Namibia	NA	NAM	2026-05-12 11:03:04.783	2026-05-12 11:03:04.783	2026-05-12 11:03:04.783	\N	\N
149	Nauru	NR	NRU	2026-05-12 11:03:04.785	2026-05-12 11:03:04.785	2026-05-12 11:03:04.785	\N	\N
150	Nepal	NP	NPL	2026-05-12 11:03:04.788	2026-05-12 11:03:04.788	2026-05-12 11:03:04.788	\N	\N
151	Netherlands	NL	NLD	2026-05-12 11:03:04.79	2026-05-12 11:03:04.79	2026-05-12 11:03:04.79	\N	\N
152	New Caledonia	NC	NCL	2026-05-12 11:03:04.792	2026-05-12 11:03:04.792	2026-05-12 11:03:04.792	\N	\N
153	New Zealand	NZ	NZL	2026-05-12 11:03:04.794	2026-05-12 11:03:04.794	2026-05-12 11:03:04.794	\N	\N
154	Nicaragua	NI	NIC	2026-05-12 11:03:04.796	2026-05-12 11:03:04.796	2026-05-12 11:03:04.796	\N	\N
155	Niger	NE	NER	2026-05-12 11:03:04.798	2026-05-12 11:03:04.798	2026-05-12 11:03:04.798	\N	\N
156	Nigeria	NG	NGA	2026-05-12 11:03:04.8	2026-05-12 11:03:04.8	2026-05-12 11:03:04.8	\N	\N
157	Niue	NU	NIU	2026-05-12 11:03:04.802	2026-05-12 11:03:04.802	2026-05-12 11:03:04.801	\N	\N
158	Norfolk Island	NF	NFK	2026-05-12 11:03:04.804	2026-05-12 11:03:04.804	2026-05-12 11:03:04.803	\N	\N
159	North Macedonia	MK	MKD	2026-05-12 11:03:04.806	2026-05-12 11:03:04.806	2026-05-12 11:03:04.805	\N	\N
160	Northern Mariana Islands	MP	MNP	2026-05-12 11:03:04.807	2026-05-12 11:03:04.807	2026-05-12 11:03:04.807	\N	\N
161	Norway	NO	NOR	2026-05-12 11:03:04.809	2026-05-12 11:03:04.809	2026-05-12 11:03:04.809	\N	\N
162	Oman	OM	OMN	2026-05-12 11:03:04.812	2026-05-12 11:03:04.812	2026-05-12 11:03:04.811	\N	\N
163	Pakistan	PK	PAK	2026-05-12 11:03:04.813	2026-05-12 11:03:04.813	2026-05-12 11:03:04.813	\N	\N
164	Palau	PW	PLW	2026-05-12 11:03:04.815	2026-05-12 11:03:04.815	2026-05-12 11:03:04.815	\N	\N
165	Panama	PA	PAN	2026-05-12 11:03:04.817	2026-05-12 11:03:04.817	2026-05-12 11:03:04.816	\N	\N
166	Papua New Guinea	PG	PNG	2026-05-12 11:03:04.819	2026-05-12 11:03:04.819	2026-05-12 11:03:04.818	\N	\N
167	Paraguay	PY	PRY	2026-05-12 11:03:04.82	2026-05-12 11:03:04.82	2026-05-12 11:03:04.82	\N	\N
168	Peru	PE	PER	2026-05-12 11:03:04.822	2026-05-12 11:03:04.822	2026-05-12 11:03:04.821	\N	\N
169	Philippines	PH	PHL	2026-05-12 11:03:04.824	2026-05-12 11:03:04.824	2026-05-12 11:03:04.823	\N	\N
170	Pitcairn Islands	PN	PCN	2026-05-12 11:03:04.825	2026-05-12 11:03:04.825	2026-05-12 11:03:04.825	\N	\N
171	Poland	PL	POL	2026-05-12 11:03:04.827	2026-05-12 11:03:04.827	2026-05-12 11:03:04.827	\N	\N
172	Portugal	PT	PRT	2026-05-12 11:03:04.829	2026-05-12 11:03:04.829	2026-05-12 11:03:04.829	\N	\N
173	Puerto Rico	PR	PRI	2026-05-12 11:03:04.831	2026-05-12 11:03:04.831	2026-05-12 11:03:04.83	\N	\N
174	Qatar	QA	QAT	2026-05-12 11:03:04.833	2026-05-12 11:03:04.833	2026-05-12 11:03:04.833	\N	\N
175	Romania	RO	ROU	2026-05-12 11:03:04.835	2026-05-12 11:03:04.835	2026-05-12 11:03:04.835	\N	\N
176	Russia	RU	RUS	2026-05-12 11:03:04.837	2026-05-12 11:03:04.837	2026-05-12 11:03:04.837	\N	\N
177	Rwanda	RW	RWA	2026-05-12 11:03:04.839	2026-05-12 11:03:04.839	2026-05-12 11:03:04.839	\N	\N
178	Réunion	RE	REU	2026-05-12 11:03:04.841	2026-05-12 11:03:04.841	2026-05-12 11:03:04.84	\N	\N
179	Saint Barthélemy	BL	BLM	2026-05-12 11:03:04.842	2026-05-12 11:03:04.842	2026-05-12 11:03:04.842	\N	\N
180	Saint Helena	SH	SHN	2026-05-12 11:03:04.844	2026-05-12 11:03:04.844	2026-05-12 11:03:04.844	\N	\N
181	Saint Kitts and Nevis	KN	KNA	2026-05-12 11:03:04.846	2026-05-12 11:03:04.846	2026-05-12 11:03:04.846	\N	\N
182	Saint Lucia	LC	LCA	2026-05-12 11:03:04.848	2026-05-12 11:03:04.848	2026-05-12 11:03:04.848	\N	\N
183	Saint Martin	MF	MAF	2026-05-12 11:03:04.85	2026-05-12 11:03:04.85	2026-05-12 11:03:04.85	\N	\N
184	Saint Pierre and Miquelon	PM	SPM	2026-05-12 11:03:04.852	2026-05-12 11:03:04.852	2026-05-12 11:03:04.852	\N	\N
185	Saint Vincent and the Grenadines	VC	VCT	2026-05-12 11:03:04.854	2026-05-12 11:03:04.854	2026-05-12 11:03:04.854	\N	\N
186	Samoa	WS	WSM	2026-05-12 11:03:04.857	2026-05-12 11:03:04.857	2026-05-12 11:03:04.857	\N	\N
187	San Marino	SM	SMR	2026-05-12 11:03:04.859	2026-05-12 11:03:04.859	2026-05-12 11:03:04.859	\N	\N
188	Sao Tome and Principe	ST	STP	2026-05-12 11:03:04.861	2026-05-12 11:03:04.861	2026-05-12 11:03:04.861	\N	\N
189	Saudi Arabia	SA	SAU	2026-05-12 11:03:04.863	2026-05-12 11:03:04.863	2026-05-12 11:03:04.863	\N	\N
190	Senegal	SN	SEN	2026-05-12 11:03:04.865	2026-05-12 11:03:04.865	2026-05-12 11:03:04.865	\N	\N
191	Serbia	RS	SRB	2026-05-12 11:03:04.867	2026-05-12 11:03:04.867	2026-05-12 11:03:04.867	\N	\N
192	Seychelles	SC	SYC	2026-05-12 11:03:04.869	2026-05-12 11:03:04.869	2026-05-12 11:03:04.869	\N	\N
193	Sierra Leone	SL	SLE	2026-05-12 11:03:04.871	2026-05-12 11:03:04.871	2026-05-12 11:03:04.871	\N	\N
194	Singapore	SG	SGP	2026-05-12 11:03:04.873	2026-05-12 11:03:04.873	2026-05-12 11:03:04.873	\N	\N
195	Sint Maarten	SX	SXM	2026-05-12 11:03:04.875	2026-05-12 11:03:04.875	2026-05-12 11:03:04.875	\N	\N
196	Slovakia	SK	SVK	2026-05-12 11:03:04.877	2026-05-12 11:03:04.877	2026-05-12 11:03:04.877	\N	\N
197	Slovenia	SI	SVN	2026-05-12 11:03:04.879	2026-05-12 11:03:04.879	2026-05-12 11:03:04.879	\N	\N
198	Solomon Islands	SB	SLB	2026-05-12 11:03:04.882	2026-05-12 11:03:04.882	2026-05-12 11:03:04.882	\N	\N
199	Somalia	SO	SOM	2026-05-12 11:03:04.884	2026-05-12 11:03:04.884	2026-05-12 11:03:04.884	\N	\N
200	South Africa	ZA	ZAF	2026-05-12 11:03:04.886	2026-05-12 11:03:04.886	2026-05-12 11:03:04.886	\N	\N
201	South Georgia and the South Sandwich Islands	GS	SGS	2026-05-12 11:03:04.889	2026-05-12 11:03:04.889	2026-05-12 11:03:04.888	\N	\N
202	South Korea	KR	KOR	2026-05-12 11:03:04.891	2026-05-12 11:03:04.891	2026-05-12 11:03:04.89	\N	\N
203	North Korea	KP	PRK	2026-05-12 11:03:04.893	2026-05-12 11:03:04.893	2026-05-12 11:03:04.892	\N	\N
204	South Sudan	SS	SSD	2026-05-12 11:03:04.895	2026-05-12 11:03:04.895	2026-05-12 11:03:04.894	\N	\N
205	Spain	ES	ESP	2026-05-12 11:03:04.897	2026-05-12 11:03:04.897	2026-05-12 11:03:04.896	\N	\N
206	Sri Lanka	LK	LKA	2026-05-12 11:03:04.899	2026-05-12 11:03:04.899	2026-05-12 11:03:04.898	\N	\N
207	Sudan	SD	SDN	2026-05-12 11:03:04.901	2026-05-12 11:03:04.901	2026-05-12 11:03:04.9	\N	\N
208	Suriname	SR	SUR	2026-05-12 11:03:04.903	2026-05-12 11:03:04.903	2026-05-12 11:03:04.902	\N	\N
209	Svalbard and Jan Mayen	SJ	SJM	2026-05-12 11:03:04.905	2026-05-12 11:03:04.905	2026-05-12 11:03:04.904	\N	\N
210	Sweden	SE	SWE	2026-05-12 11:03:04.907	2026-05-12 11:03:04.907	2026-05-12 11:03:04.907	\N	\N
211	Switzerland	CH	CHE	2026-05-12 11:03:04.909	2026-05-12 11:03:04.909	2026-05-12 11:03:04.909	\N	\N
212	Syria	SY	SYR	2026-05-12 11:03:04.911	2026-05-12 11:03:04.911	2026-05-12 11:03:04.911	\N	\N
213	Taiwan	TW	TWN	2026-05-12 11:03:04.913	2026-05-12 11:03:04.913	2026-05-12 11:03:04.913	\N	\N
214	Tajikistan	TJ	TJK	2026-05-12 11:03:04.915	2026-05-12 11:03:04.915	2026-05-12 11:03:04.914	\N	\N
215	Tanzania	TZ	TZA	2026-05-12 11:03:04.917	2026-05-12 11:03:04.917	2026-05-12 11:03:04.916	\N	\N
216	Thailand	TH	THA	2026-05-12 11:03:04.919	2026-05-12 11:03:04.919	2026-05-12 11:03:04.918	\N	\N
217	Togo	TG	TGO	2026-05-12 11:03:04.921	2026-05-12 11:03:04.921	2026-05-12 11:03:04.92	\N	\N
218	Tokelau	TK	TKL	2026-05-12 11:03:04.923	2026-05-12 11:03:04.923	2026-05-12 11:03:04.922	\N	\N
219	Tonga	TO	TON	2026-05-12 11:03:04.924	2026-05-12 11:03:04.924	2026-05-12 11:03:04.924	\N	\N
220	Trinidad and Tobago	TT	TTO	2026-05-12 11:03:04.926	2026-05-12 11:03:04.926	2026-05-12 11:03:04.926	\N	\N
221	Tunisia	TN	TUN	2026-05-12 11:03:04.928	2026-05-12 11:03:04.928	2026-05-12 11:03:04.928	\N	\N
222	Turkey	TR	TUR	2026-05-12 11:03:04.932	2026-05-12 11:03:04.932	2026-05-12 11:03:04.932	\N	\N
223	Turkmenistan	TM	TKM	2026-05-12 11:03:04.934	2026-05-12 11:03:04.934	2026-05-12 11:03:04.934	\N	\N
224	Tuvalu	TV	TUV	2026-05-12 11:03:04.936	2026-05-12 11:03:04.936	2026-05-12 11:03:04.936	\N	\N
225	Uganda	UG	UGA	2026-05-12 11:03:04.939	2026-05-12 11:03:04.939	2026-05-12 11:03:04.938	\N	\N
226	Ukraine	UA	UKR	2026-05-12 11:03:04.941	2026-05-12 11:03:04.941	2026-05-12 11:03:04.94	\N	\N
227	United Arab Emirates	AE	ARE	2026-05-12 11:03:04.943	2026-05-12 11:03:04.943	2026-05-12 11:03:04.943	\N	\N
228	United Kingdom	GB	GBR	2026-05-12 11:03:04.945	2026-05-12 11:03:04.945	2026-05-12 11:03:04.945	\N	\N
229	United States	US	USA	2026-05-12 11:03:04.947	2026-05-12 11:03:04.947	2026-05-12 11:03:04.947	\N	\N
230	Uruguay	UY	URY	2026-05-12 11:03:04.949	2026-05-12 11:03:04.949	2026-05-12 11:03:04.949	\N	\N
231	Uzbekistan	UZ	UZB	2026-05-12 11:03:04.951	2026-05-12 11:03:04.951	2026-05-12 11:03:04.95	\N	\N
232	Vanuatu	VU	VUT	2026-05-12 11:03:04.953	2026-05-12 11:03:04.953	2026-05-12 11:03:04.952	\N	\N
233	Vatican City	VA	VAT	2026-05-12 11:03:04.955	2026-05-12 11:03:04.955	2026-05-12 11:03:04.954	\N	\N
234	Venezuela	VE	VEN	2026-05-12 11:03:04.957	2026-05-12 11:03:04.957	2026-05-12 11:03:04.956	\N	\N
235	Vietnam	VN	VNM	2026-05-12 11:03:04.959	2026-05-12 11:03:04.959	2026-05-12 11:03:04.958	\N	\N
236	Western Sahara	EH	ESH	2026-05-12 11:03:04.961	2026-05-12 11:03:04.961	2026-05-12 11:03:04.961	\N	\N
237	Yemen	YE	YEM	2026-05-12 11:03:04.963	2026-05-12 11:03:04.963	2026-05-12 11:03:04.963	\N	\N
238	Zambia	ZM	ZMB	2026-05-12 11:03:04.966	2026-05-12 11:03:04.966	2026-05-12 11:03:04.965	\N	\N
239	Zimbabwe	ZW	ZWE	2026-05-12 11:03:04.968	2026-05-12 11:03:04.968	2026-05-12 11:03:04.967	\N	\N
240	Åland Islands	AX	ALA	2026-05-12 11:03:04.97	2026-05-12 11:03:04.97	2026-05-12 11:03:04.97	\N	\N
241	French Southern and Antarctic Lands	TF	ATF	2026-05-12 11:03:04.973	2026-05-12 11:03:04.973	2026-05-12 11:03:04.972	\N	\N
242	Guernsey	GG	GGY	2026-05-12 11:03:04.975	2026-05-12 11:03:04.975	2026-05-12 11:03:04.975	\N	\N
243	Isle of Man	IM	IMN	2026-05-12 11:03:04.977	2026-05-12 11:03:04.977	2026-05-12 11:03:04.977	\N	\N
244	Jersey	JE	JEY	2026-05-12 11:03:04.98	2026-05-12 11:03:04.98	2026-05-12 11:03:04.979	\N	\N
245	Kosovo	XK	XKO	2026-05-12 11:03:04.982	2026-05-12 11:03:04.982	2026-05-12 11:03:04.981	\N	\N
246	Netherlands Antilles	AN	ANT	2026-05-12 11:03:04.984	2026-05-12 11:03:04.984	2026-05-12 11:03:04.983	\N	\N
247	Palestine	PS	PSE	2026-05-12 11:03:04.986	2026-05-12 11:03:04.986	2026-05-12 11:03:04.986	\N	\N
248	Swaziland	SZ	SWZ	2026-05-12 11:03:04.99	2026-05-12 11:03:04.99	2026-05-12 11:03:04.989	\N	\N
249	Turks and Caicos Islands	TC	TCA	2026-05-12 11:03:04.992	2026-05-12 11:03:04.992	2026-05-12 11:03:04.991	\N	\N
250	U.S. Virgin Islands	VI	VIR	2026-05-12 11:03:04.993	2026-05-12 11:03:04.993	2026-05-12 11:03:04.993	\N	\N
251	United States Minor Outlying Islands	UM	UMI	2026-05-12 11:03:04.996	2026-05-12 11:03:04.996	2026-05-12 11:03:04.996	\N	\N
252	Wallis and Futuna	WF	WLF	2026-05-12 11:03:04.998	2026-05-12 11:03:04.998	2026-05-12 11:03:04.998	\N	\N
\.


--
-- Data for Name: governance_action_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.governance_action_types (id, gov_action_type_name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
3	Updates to the Constitution	2026-05-11 07:02:20.421072	2026-05-11 07:02:20.421072	2026-05-11 07:02:20.421072	\N	\N
4	Motion of No Confidence	2026-05-11 07:02:20.445369	2026-05-11 07:02:20.445369	2026-05-11 07:02:20.445369	\N	\N
1	Info Action	2026-05-14 07:22:17.396	2026-05-14 07:22:21.058	2026-05-14 07:22:21.055	\N	\N
2	Treasury requests	2026-05-14 07:22:38.017	2026-05-14 07:22:41.254	2026-05-14 07:22:41.251	\N	\N
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2026-04-01 09:59:43.326	2026-04-01 09:59:43.326	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
3	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"govtool_username":{"type":"string","unique":true,"maxLength":30,"minLength":1,"regex":"^(?![._])[a-z0-9._]{1,30}$"},"comments_reports":{"type":"relation","relation":"oneToMany","target":"api::comments-report.comments-report","mappedBy":"moderator"},"is_validated":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"govtool_username":{"type":"string","unique":true,"maxLength":30,"minLength":1,"regex":"^(?![._])[a-z0-9._]{1,30}$"},"comments_reports":{"type":"relation","relation":"oneToMany","target":"api::comments-report.comments-report","mappedBy":"moderator"},"is_validated":{"type":"boolean","default":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::route-permission.route-permission":{"kind":"collectionType","collectionName":"route_permissions","info":{"singularName":"route-permission","pluralName":"route-permissions","displayName":"route-permission"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","configurable":false},"role":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"route_permissions","info":{"singularName":"route-permission","pluralName":"route-permissions","displayName":"route-permission"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","configurable":false},"role":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"route-permission","connection":"default","uid":"plugin::route-permission.route-permission","plugin":"route-permission","globalId":"RoutePermissionRoutePermission"},"api::auth-challenge.auth-challenge":{"kind":"collectionType","collectionName":"auth_challenges","info":{"singularName":"auth-challenge","pluralName":"auth-challenges","displayName":"Auth Challenge"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"identifier":{"type":"string","required":true},"nonce":{"type":"string","required":true},"message":{"type":"text","required":true},"timestamp":{"type":"datetime","required":true},"expiresAt":{"type":"datetime","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"auth_challenges","info":{"singularName":"auth-challenge","pluralName":"auth-challenges","displayName":"Auth Challenge"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"identifier":{"type":"string","required":true},"nonce":{"type":"string","required":true},"message":{"type":"text","required":true},"timestamp":{"type":"datetime","required":true},"expiresAt":{"type":"datetime","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"auth-challenge","connection":"default","uid":"api::auth-challenge.auth-challenge","apiName":"auth-challenge","globalId":"AuthChallenge","actions":{},"lifecycles":{}},"api::bd.bd":{"kind":"collectionType","collectionName":"bds","info":{"singularName":"bd","pluralName":"bds","displayName":"BD","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"creator":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"privacy_policy":{"type":"boolean"},"bd_costing":{"type":"relation","relation":"oneToOne","target":"api::bd-costing.bd-costing"},"bd_proposal_detail":{"type":"relation","relation":"oneToOne","target":"api::bd-proposal-detail.bd-proposal-detail"},"bd_contact_information":{"type":"relation","relation":"oneToOne","target":"api::bd-contact-information.bd-contact-information"},"bd_further_information":{"type":"relation","relation":"oneToOne","target":"api::bd-further-information.bd-further-information"},"bd_psapb":{"type":"relation","relation":"oneToOne","target":"api::bd-psapb.bd-psapb"},"intersect_named_administrator":{"type":"boolean"},"bd_proposal_ownership":{"type":"relation","relation":"oneToOne","target":"api::bd-proposal-ownership.bd-proposal-ownership"},"old_ver":{"type":"relation","relation":"oneToOne","target":"api::bd.bd"},"prop_comments_number":{"type":"integer","default":0},"is_active":{"type":"boolean","default":true},"intersect_admin_further_text":{"type":"text"},"master_id":{"type":"string"},"submitted_for_vote":{"type":"datetime"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bds","info":{"singularName":"bd","pluralName":"bds","displayName":"BD","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"creator":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"privacy_policy":{"type":"boolean"},"bd_costing":{"type":"relation","relation":"oneToOne","target":"api::bd-costing.bd-costing"},"bd_proposal_detail":{"type":"relation","relation":"oneToOne","target":"api::bd-proposal-detail.bd-proposal-detail"},"bd_contact_information":{"type":"relation","relation":"oneToOne","target":"api::bd-contact-information.bd-contact-information"},"bd_further_information":{"type":"relation","relation":"oneToOne","target":"api::bd-further-information.bd-further-information"},"bd_psapb":{"type":"relation","relation":"oneToOne","target":"api::bd-psapb.bd-psapb"},"intersect_named_administrator":{"type":"boolean"},"bd_proposal_ownership":{"type":"relation","relation":"oneToOne","target":"api::bd-proposal-ownership.bd-proposal-ownership"},"old_ver":{"type":"relation","relation":"oneToOne","target":"api::bd.bd"},"prop_comments_number":{"type":"integer","default":0},"is_active":{"type":"boolean","default":true},"intersect_admin_further_text":{"type":"text"},"master_id":{"type":"string"},"submitted_for_vote":{"type":"datetime"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd","connection":"default","uid":"api::bd.bd","apiName":"bd","globalId":"Bd","actions":{},"lifecycles":{}},"api::bd-contact-information.bd-contact-information":{"kind":"collectionType","collectionName":"bd_contact_informations","info":{"singularName":"bd-contact-information","pluralName":"bd-contact-informations","displayName":"BD Contact Information","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"be_full_name":{"type":"string"},"be_email":{"type":"string"},"submission_lead_full_name":{"type":"string"},"submission_lead_email":{"type":"string"},"be_country_of_res":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"},"be_nationality":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"},"other_contract_type":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_contact_informations","info":{"singularName":"bd-contact-information","pluralName":"bd-contact-informations","displayName":"BD Contact Information","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"be_full_name":{"type":"string"},"be_email":{"type":"string"},"submission_lead_full_name":{"type":"string"},"submission_lead_email":{"type":"string"},"be_country_of_res":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"},"be_nationality":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"},"other_contract_type":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-contact-information","connection":"default","uid":"api::bd-contact-information.bd-contact-information","apiName":"bd-contact-information","globalId":"BdContactInformation","actions":{},"lifecycles":{}},"api::bd-contract-type.bd-contract-type":{"kind":"collectionType","collectionName":"bd_contract_types","info":{"singularName":"bd-contract-type","pluralName":"bd-contract-types","displayName":"BD Contract Type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"contract_type_name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_contract_types","info":{"singularName":"bd-contract-type","pluralName":"bd-contract-types","displayName":"BD Contract Type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"contract_type_name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-contract-type","connection":"default","uid":"api::bd-contract-type.bd-contract-type","apiName":"bd-contract-type","globalId":"BdContractType","actions":{},"lifecycles":{}},"api::bd-costing.bd-costing":{"kind":"collectionType","collectionName":"bd_costings","info":{"singularName":"bd-costing","pluralName":"bd-costings","displayName":"BD Costing","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"cost_breakdown":{"type":"text"},"preferred_currency":{"type":"relation","relation":"oneToOne","target":"api::bd-currency-list.bd-currency-list"},"ada_amount":{"type":"string"},"amount_in_preferred_currency":{"type":"string"},"usd_to_ada_conversion_rate":{"type":"string"},"ada_amount_clone":{"type":"float","default":0},"amount_in_preferred_currency_clone":{"type":"float","default":0},"usd_to_ada_conversion_rate_clone":{"type":"float","default":0},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_costings","info":{"singularName":"bd-costing","pluralName":"bd-costings","displayName":"BD Costing","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"cost_breakdown":{"type":"text"},"preferred_currency":{"type":"relation","relation":"oneToOne","target":"api::bd-currency-list.bd-currency-list"},"ada_amount":{"type":"string"},"amount_in_preferred_currency":{"type":"string"},"usd_to_ada_conversion_rate":{"type":"string"},"ada_amount_clone":{"type":"float","default":0},"amount_in_preferred_currency_clone":{"type":"float","default":0},"usd_to_ada_conversion_rate_clone":{"type":"float","default":0}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-costing","connection":"default","uid":"api::bd-costing.bd-costing","apiName":"bd-costing","globalId":"BdCosting","actions":{},"lifecycles":{}},"api::bd-currency-list.bd-currency-list":{"kind":"collectionType","collectionName":"bd_currency_lists","info":{"singularName":"bd-currency-list","pluralName":"bd-currency-lists","displayName":"BD Currency List"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"currency_name":{"type":"string"},"currency_letter_code":{"type":"string"},"currency_number_code":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_currency_lists","info":{"singularName":"bd-currency-list","pluralName":"bd-currency-lists","displayName":"BD Currency List"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"currency_name":{"type":"string"},"currency_letter_code":{"type":"string"},"currency_number_code":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-currency-list","connection":"default","uid":"api::bd-currency-list.bd-currency-list","apiName":"bd-currency-list","globalId":"BdCurrencyList","actions":{},"lifecycles":{}},"api::bd-draft.bd-draft":{"kind":"collectionType","collectionName":"bd_drafts","info":{"singularName":"bd-draft","pluralName":"bd-drafts","displayName":"BD Draft","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"draft_data":{"type":"json"},"creator":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"test":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_drafts","info":{"singularName":"bd-draft","pluralName":"bd-drafts","displayName":"BD Draft","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"draft_data":{"type":"json"},"creator":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"test":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-draft","connection":"default","uid":"api::bd-draft.bd-draft","apiName":"bd-draft","globalId":"BdDraft","actions":{},"lifecycles":{}},"api::bd-further-information.bd-further-information":{"kind":"collectionType","collectionName":"bd_further_informations","info":{"singularName":"bd-further-information","pluralName":"bd-further-informations","displayName":"BD Further Information","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_links":{"displayName":"BD Links","type":"component","repeatable":true,"component":"bd.bd-links"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_further_informations","info":{"singularName":"bd-further-information","pluralName":"bd-further-informations","displayName":"BD Further Information","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_links":{"displayName":"BD Links","type":"component","repeatable":true,"component":"bd.bd-links"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-further-information","connection":"default","uid":"api::bd-further-information.bd-further-information","apiName":"bd-further-information","globalId":"BdFurtherInformation","actions":{},"lifecycles":{}},"api::bd-intersect-committee.bd-intersect-committee":{"kind":"collectionType","collectionName":"bd_intersect_committees","info":{"singularName":"bd-intersect-committee","pluralName":"bd-intersect-committees","displayName":"BD Intersect Committee","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"committee_name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_intersect_committees","info":{"singularName":"bd-intersect-committee","pluralName":"bd-intersect-committees","displayName":"BD Intersect Committee","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"committee_name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-intersect-committee","connection":"default","uid":"api::bd-intersect-committee.bd-intersect-committee","apiName":"bd-intersect-committee","globalId":"BdIntersectCommittee","actions":{},"lifecycles":{}},"api::bd-poll.bd-poll":{"kind":"collectionType","collectionName":"bd_polls","info":{"singularName":"bd-poll","pluralName":"bd-polls","displayName":"BD Poll","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"bd_proposal_id":{"type":"string"},"poll_yes":{"type":"integer","default":0},"poll_no":{"type":"integer","default":0},"is_poll_active":{"type":"boolean","default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_polls","info":{"singularName":"bd-poll","pluralName":"bd-polls","displayName":"BD Poll","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"bd_proposal_id":{"type":"string"},"poll_yes":{"type":"integer","default":0},"poll_no":{"type":"integer","default":0},"is_poll_active":{"type":"boolean","default":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-poll","connection":"default","uid":"api::bd-poll.bd-poll","apiName":"bd-poll","globalId":"BdPoll","actions":{},"lifecycles":{}},"api::bd-poll-vote.bd-poll-vote":{"kind":"collectionType","collectionName":"bd_poll_votes","info":{"singularName":"bd-poll-vote","pluralName":"bd-poll-votes","displayName":"BD Poll vote","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user_id":{"type":"string"},"bd_poll_id":{"type":"string"},"vote_result":{"type":"boolean"},"drep_id":{"type":"string"},"drep_voting_power":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_poll_votes","info":{"singularName":"bd-poll-vote","pluralName":"bd-poll-votes","displayName":"BD Poll vote","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user_id":{"type":"string"},"bd_poll_id":{"type":"string"},"vote_result":{"type":"boolean"},"drep_id":{"type":"string"},"drep_voting_power":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-poll-vote","connection":"default","uid":"api::bd-poll-vote.bd-poll-vote","apiName":"bd-poll-vote","globalId":"BdPollVote","actions":{},"lifecycles":{}},"api::bd-proposal-detail.bd-proposal-detail":{"kind":"collectionType","collectionName":"bd_proposal_details","info":{"singularName":"bd-proposal-detail","pluralName":"bd-proposal-details","displayName":"BD Proposal Detail","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"experience":{"type":"text"},"proposal_name":{"type":"text"},"key_dependencies":{"type":"text"},"contract_type_name":{"type":"relation","relation":"oneToOne","target":"api::bd-contract-type.bd-contract-type"},"maintain_and_support":{"type":"text"},"proposal_description":{"type":"text"},"key_proposal_deliverables":{"type":"text"},"resourcing_duration_estimates":{"type":"text"},"other_contract_type":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_proposal_details","info":{"singularName":"bd-proposal-detail","pluralName":"bd-proposal-details","displayName":"BD Proposal Detail","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"experience":{"type":"text"},"proposal_name":{"type":"text"},"key_dependencies":{"type":"text"},"contract_type_name":{"type":"relation","relation":"oneToOne","target":"api::bd-contract-type.bd-contract-type"},"maintain_and_support":{"type":"text"},"proposal_description":{"type":"text"},"key_proposal_deliverables":{"type":"text"},"resourcing_duration_estimates":{"type":"text"},"other_contract_type":{"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-proposal-detail","connection":"default","uid":"api::bd-proposal-detail.bd-proposal-detail","apiName":"bd-proposal-detail","globalId":"BdProposalDetail","actions":{},"lifecycles":{}},"api::bd-proposal-ownership.bd-proposal-ownership":{"kind":"collectionType","collectionName":"bd_proposal_ownerships","info":{"singularName":"bd-proposal-ownership","pluralName":"bd-proposal-ownerships","displayName":"BD Proposal Ownership","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"agreed":{"type":"boolean"},"group_name":{"type":"string"},"company_name":{"type":"string"},"type_of_group":{"type":"string"},"social_handles":{"type":"string"},"submited_on_behalf":{"type":"string"},"company_domain_name":{"type":"string"},"proposal_public_champion":{"type":"string"},"key_info_to_identify_group":{"type":"text"},"be_country":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_proposal_ownerships","info":{"singularName":"bd-proposal-ownership","pluralName":"bd-proposal-ownerships","displayName":"BD Proposal Ownership","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"agreed":{"type":"boolean"},"group_name":{"type":"string"},"company_name":{"type":"string"},"type_of_group":{"type":"string"},"social_handles":{"type":"string"},"submited_on_behalf":{"type":"string"},"company_domain_name":{"type":"string"},"proposal_public_champion":{"type":"string"},"key_info_to_identify_group":{"type":"text"},"be_country":{"type":"relation","relation":"oneToOne","target":"api::country-list.country-list"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-proposal-ownership","connection":"default","uid":"api::bd-proposal-ownership.bd-proposal-ownership","apiName":"bd-proposal-ownership","globalId":"BdProposalOwnership","actions":{},"lifecycles":{}},"api::bd-psapb.bd-psapb":{"kind":"collectionType","collectionName":"bd_psapbs","info":{"singularName":"bd-psapb","pluralName":"bd-psapbs","displayName":"BD PSAPB","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"problem_statement":{"type":"text"},"proposal_benefit":{"type":"text"},"supplementary_endorsement":{"type":"text"},"type_name":{"type":"relation","relation":"oneToOne","target":"api::bd-type.bd-type"},"roadmap_name":{"type":"relation","relation":"oneToOne","target":"api::bd-road-map.bd-road-map"},"committee_name":{"type":"relation","relation":"oneToOne","target":"api::bd-intersect-committee.bd-intersect-committee"},"explain_proposal_roadmap":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_psapbs","info":{"singularName":"bd-psapb","pluralName":"bd-psapbs","displayName":"BD PSAPB","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"problem_statement":{"type":"text"},"proposal_benefit":{"type":"text"},"supplementary_endorsement":{"type":"text"},"type_name":{"type":"relation","relation":"oneToOne","target":"api::bd-type.bd-type"},"roadmap_name":{"type":"relation","relation":"oneToOne","target":"api::bd-road-map.bd-road-map"},"committee_name":{"type":"relation","relation":"oneToOne","target":"api::bd-intersect-committee.bd-intersect-committee"},"explain_proposal_roadmap":{"type":"text"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-psapb","connection":"default","uid":"api::bd-psapb.bd-psapb","apiName":"bd-psapb","globalId":"BdPsapb","actions":{},"lifecycles":{}},"api::bd-road-map.bd-road-map":{"kind":"collectionType","collectionName":"bd_road_maps","info":{"singularName":"bd-road-map","pluralName":"bd-road-maps","displayName":"BD Road map"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"roadmap_name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_road_maps","info":{"singularName":"bd-road-map","pluralName":"bd-road-maps","displayName":"BD Road map"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"roadmap_name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-road-map","connection":"default","uid":"api::bd-road-map.bd-road-map","apiName":"bd-road-map","globalId":"BdRoadMap","actions":{},"lifecycles":{}},"api::bd-type.bd-type":{"kind":"collectionType","collectionName":"bd_types","info":{"singularName":"bd-type","pluralName":"bd-types","displayName":"BD Type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"type_name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bd_types","info":{"singularName":"bd-type","pluralName":"bd-types","displayName":"BD Type"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"type_name":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bd-type","connection":"default","uid":"api::bd-type.bd-type","apiName":"bd-type","globalId":"BdType","actions":{},"lifecycles":{}},"api::comment.comment":{"kind":"collectionType","collectionName":"comments","info":{"singularName":"comment","pluralName":"comments","displayName":"Comment","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"comment_parent_id":{"type":"string"},"user_id":{"type":"string"},"comment_text":{"type":"text","maxLength":15000},"comments_reports":{"type":"relation","relation":"oneToMany","target":"api::comments-report.comments-report","mappedBy":"comment"},"bd_proposal_id":{"type":"string"},"drep_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"comments","info":{"singularName":"comment","pluralName":"comments","displayName":"Comment","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"comment_parent_id":{"type":"string"},"user_id":{"type":"string"},"comment_text":{"type":"text","maxLength":15000},"comments_reports":{"type":"relation","relation":"oneToMany","target":"api::comments-report.comments-report","mappedBy":"comment"},"bd_proposal_id":{"type":"string"},"drep_id":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"comment","connection":"default","uid":"api::comment.comment","apiName":"comment","globalId":"Comment","actions":{},"lifecycles":{}},"api::comments-report.comments-report":{"kind":"collectionType","collectionName":"comments_reports","info":{"singularName":"comments-report","pluralName":"comments-reports","displayName":"Comments report","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"moderation_status":{"type":"boolean"},"comment":{"type":"relation","relation":"manyToOne","target":"api::comment.comment","inversedBy":"comments_reports"},"reporter":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comments_reports"},"moderator":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comments_reports"},"hash":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"comments_reports","info":{"singularName":"comments-report","pluralName":"comments-reports","displayName":"Comments report","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"moderation_status":{"type":"boolean"},"comment":{"type":"relation","relation":"manyToOne","target":"api::comment.comment","inversedBy":"comments_reports"},"reporter":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comments_reports"},"moderator":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comments_reports"},"hash":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"comments-report","connection":"default","uid":"api::comments-report.comments-report","apiName":"comments-report","globalId":"CommentsReport","actions":{},"lifecycles":{}},"api::country-list.country-list":{"kind":"collectionType","collectionName":"country_lists","info":{"singularName":"country-list","pluralName":"country-lists","displayName":"Country List"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"country_name":{"type":"string"},"alfa_2_code":{"type":"string"},"alfa_3_code":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"country_lists","info":{"singularName":"country-list","pluralName":"country-lists","displayName":"Country List"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"country_name":{"type":"string"},"alfa_2_code":{"type":"string"},"alfa_3_code":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"country-list","connection":"default","uid":"api::country-list.country-list","apiName":"country-list","globalId":"CountryList","actions":{},"lifecycles":{}},"api::governance-action-type.governance-action-type":{"kind":"collectionType","collectionName":"governance_action_types","info":{"singularName":"governance-action-type","pluralName":"governance-action-types","displayName":"Governance action type","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"gov_action_type_name":{"type":"string","required":true,"maxLength":80},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"governance_action_types","info":{"singularName":"governance-action-type","pluralName":"governance-action-types","displayName":"Governance action type","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"gov_action_type_name":{"type":"string","required":true,"maxLength":80}},"kind":"collectionType"},"modelType":"contentType","modelName":"governance-action-type","connection":"default","uid":"api::governance-action-type.governance-action-type","apiName":"governance-action-type","globalId":"GovernanceActionType","actions":{},"lifecycles":{}},"api::poll.poll":{"kind":"collectionType","collectionName":"polls","info":{"singularName":"poll","pluralName":"polls","displayName":"Poll","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"poll_yes":{"type":"integer","default":0},"poll_no":{"type":"integer","default":0},"poll_start_dt":{"type":"datetime"},"is_poll_active":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"polls","info":{"singularName":"poll","pluralName":"polls","displayName":"Poll","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"poll_yes":{"type":"integer","default":0},"poll_no":{"type":"integer","default":0},"poll_start_dt":{"type":"datetime"},"is_poll_active":{"type":"boolean","default":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"poll","connection":"default","uid":"api::poll.poll","apiName":"poll","globalId":"Poll","actions":{},"lifecycles":{}},"api::poll-vote.poll-vote":{"kind":"collectionType","collectionName":"poll_votes","info":{"singularName":"poll-vote","pluralName":"poll-votes","displayName":"Poll vote"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user_id":{"type":"string","required":true},"poll_id":{"type":"string","required":true},"vote_result":{"type":"boolean","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"poll_votes","info":{"singularName":"poll-vote","pluralName":"poll-votes","displayName":"Poll vote"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user_id":{"type":"string","required":true},"poll_id":{"type":"string","required":true},"vote_result":{"type":"boolean","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"poll-vote","connection":"default","uid":"api::poll-vote.poll-vote","apiName":"poll-vote","globalId":"PollVote","actions":{},"lifecycles":{}},"api::proposal.proposal":{"kind":"collectionType","collectionName":"proposals","info":{"singularName":"proposal","pluralName":"proposals","displayName":"Proposal","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"prop_likes":{"type":"integer","default":0},"prop_dislikes":{"type":"integer","default":0},"prop_comments_number":{"type":"integer","default":0},"user_id":{"type":"string","required":true},"proposal_contents":{"type":"relation","relation":"oneToMany","target":"api::proposal-content.proposal-content","mappedBy":"proposal"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposals","info":{"singularName":"proposal","pluralName":"proposals","displayName":"Proposal","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"prop_likes":{"type":"integer","default":0},"prop_dislikes":{"type":"integer","default":0},"prop_comments_number":{"type":"integer","default":0},"user_id":{"type":"string","required":true},"proposal_contents":{"type":"relation","relation":"oneToMany","target":"api::proposal-content.proposal-content","mappedBy":"proposal"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal","connection":"default","uid":"api::proposal.proposal","apiName":"proposal","globalId":"Proposal","actions":{},"lifecycles":{}},"api::proposal-constitution-content.proposal-constitution-content":{"kind":"collectionType","collectionName":"proposal_constitution_contents","info":{"singularName":"proposal-constitution-content","pluralName":"proposal-constitution-contents","displayName":"Proposal Constitution content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"prop_constitution_url":{"type":"string"},"prop_have_guardrails_script":{"type":"boolean"},"prop_guardrails_script_url":{"type":"string"},"prop_guardrails_script_hash":{"type":"string"},"proposal_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-content.proposal-content","inversedBy":"proposal_constitution_content"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_constitution_contents","info":{"singularName":"proposal-constitution-content","pluralName":"proposal-constitution-contents","displayName":"Proposal Constitution content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"prop_constitution_url":{"type":"string"},"prop_have_guardrails_script":{"type":"boolean"},"prop_guardrails_script_url":{"type":"string"},"prop_guardrails_script_hash":{"type":"string"},"proposal_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-content.proposal-content","inversedBy":"proposal_constitution_content"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-constitution-content","connection":"default","uid":"api::proposal-constitution-content.proposal-constitution-content","apiName":"proposal-constitution-content","globalId":"ProposalConstitutionContent","actions":{},"lifecycles":{}},"api::proposal-content.proposal-content":{"kind":"collectionType","collectionName":"proposal_contents","info":{"singularName":"proposal-content","pluralName":"proposal-contents","displayName":"Proposal content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"prop_rev_active":{"type":"boolean","default":false},"prop_abstract":{"type":"text","maxLength":2500},"prop_motivation":{"type":"text","maxLength":12000},"prop_rationale":{"type":"text","maxLength":12000},"gov_action_type_id":{"type":"string"},"prop_name":{"type":"string","required":true,"maxLength":80},"proposal_links":{"type":"component","repeatable":true,"component":"proposal.proposal-link"},"is_draft":{"type":"boolean","default":false},"user_id":{"type":"string","required":true},"prop_submitted":{"type":"boolean","default":false},"prop_submission_tx_hash":{"type":"string","unique":true},"prop_submission_date":{"type":"date"},"proposal_withdrawals":{"displayName":"proposal_withdrawals","type":"component","repeatable":true,"component":"proposal.proposal-withdrawals"},"proposal_constitution_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-constitution-content.proposal-constitution-content","mappedBy":"proposal_content"},"is_locked":{"type":"boolean","default":false},"proposal_hard_fork_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-hard-fork-content.proposal-hard-fork-content"},"proposal":{"type":"relation","relation":"manyToOne","target":"api::proposal.proposal","inversedBy":"proposal_contents"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_contents","info":{"singularName":"proposal-content","pluralName":"proposal-contents","displayName":"Proposal content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"prop_rev_active":{"type":"boolean","default":false},"prop_abstract":{"type":"text","maxLength":2500},"prop_motivation":{"type":"text","maxLength":12000},"prop_rationale":{"type":"text","maxLength":12000},"gov_action_type_id":{"type":"string"},"prop_name":{"type":"string","required":true,"maxLength":80},"proposal_links":{"type":"component","repeatable":true,"component":"proposal.proposal-link"},"is_draft":{"type":"boolean","default":false},"user_id":{"type":"string","required":true},"prop_submitted":{"type":"boolean","default":false},"prop_submission_tx_hash":{"type":"string","unique":true},"prop_submission_date":{"type":"date"},"proposal_withdrawals":{"displayName":"proposal_withdrawals","type":"component","repeatable":true,"component":"proposal.proposal-withdrawals"},"proposal_constitution_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-constitution-content.proposal-constitution-content","mappedBy":"proposal_content"},"is_locked":{"type":"boolean","default":false},"proposal_hard_fork_content":{"type":"relation","relation":"oneToOne","target":"api::proposal-hard-fork-content.proposal-hard-fork-content"},"proposal":{"type":"relation","relation":"manyToOne","target":"api::proposal.proposal","inversedBy":"proposal_contents"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-content","connection":"default","uid":"api::proposal-content.proposal-content","apiName":"proposal-content","globalId":"ProposalContent","actions":{},"lifecycles":{}},"api::proposal-hard-fork-content.proposal-hard-fork-content":{"kind":"collectionType","collectionName":"proposal_hard_fork_contents","info":{"singularName":"proposal-hard-fork-content","pluralName":"proposal-hard-fork-contents","displayName":"Proposal Hard Fork content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"previous_ga_hash":{"type":"string"},"previous_ga_id":{"type":"string"},"major":{"type":"string"},"minor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_hard_fork_contents","info":{"singularName":"proposal-hard-fork-content","pluralName":"proposal-hard-fork-contents","displayName":"Proposal Hard Fork content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"previous_ga_hash":{"type":"string"},"previous_ga_id":{"type":"string"},"major":{"type":"string"},"minor":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-hard-fork-content","connection":"default","uid":"api::proposal-hard-fork-content.proposal-hard-fork-content","apiName":"proposal-hard-fork-content","globalId":"ProposalHardForkContent","actions":{},"lifecycles":{}},"api::proposal-submition.proposal-submition":{"kind":"collectionType","collectionName":"proposal_submitions","info":{"singularName":"proposal-submition","pluralName":"proposal-submitions","displayName":"Proposal submition","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"sub_json_path":{"type":"json"},"sub_location_url":{"type":"text","maxLength":500},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_submitions","info":{"singularName":"proposal-submition","pluralName":"proposal-submitions","displayName":"Proposal submition","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string"},"sub_json_path":{"type":"json"},"sub_location_url":{"type":"text","maxLength":500}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-submition","connection":"default","uid":"api::proposal-submition.proposal-submition","apiName":"proposal-submition","globalId":"ProposalSubmition","actions":{},"lifecycles":{}},"api::proposal-update-committee-content.proposal-update-committee-content":{"kind":"collectionType","collectionName":"proposal_update_committee_contents","info":{"singularName":"proposal-update-committee-content","pluralName":"proposal-update-committee-contents","displayName":"Proposal Update Committee content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"numerator":{"type":"integer"},"denominator":{"type":"integer"},"add_members":{"type":"component","repeatable":true,"component":"proposal.committee-member"},"remove_members":{"type":"component","repeatable":true,"component":"proposal.committee-member"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_update_committee_contents","info":{"singularName":"proposal-update-committee-content","pluralName":"proposal-update-committee-contents","displayName":"Proposal Update Committee content","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"numerator":{"type":"integer"},"denominator":{"type":"integer"},"add_members":{"type":"component","repeatable":true,"component":"proposal.committee-member"},"remove_members":{"type":"component","repeatable":true,"component":"proposal.committee-member"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-update-committee-content","connection":"default","uid":"api::proposal-update-committee-content.proposal-update-committee-content","apiName":"proposal-update-committee-content","globalId":"ProposalUpdateCommitteeContent","actions":{},"lifecycles":{}},"api::proposal-vote.proposal-vote":{"kind":"collectionType","collectionName":"proposal_votes","info":{"singularName":"proposal-vote","pluralName":"proposal-votes","displayName":"Proposal vote","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string","required":true},"user_id":{"type":"string","required":true},"vote_result":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proposal_votes","info":{"singularName":"proposal-vote","pluralName":"proposal-votes","displayName":"Proposal vote","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"proposal_id":{"type":"string","required":true},"user_id":{"type":"string","required":true},"vote_result":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proposal-vote","connection":"default","uid":"api::proposal-vote.proposal-vote","apiName":"proposal-vote","globalId":"ProposalVote","actions":{},"lifecycles":{}},"api::wallet-type.wallet-type":{"kind":"collectionType","collectionName":"wallet_types","info":{"singularName":"wallet-type","pluralName":"wallet-types","displayName":"Wallet type","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"wallet_name":{"type":"text","maxLength":300},"wallet_image":{"type":"text"},"wallet_active":{"type":"boolean","default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"wallet_types","info":{"singularName":"wallet-type","pluralName":"wallet-types","displayName":"Wallet type","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"wallet_name":{"type":"text","maxLength":300},"wallet_image":{"type":"text"},"wallet_active":{"type":"boolean","default":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"wallet-type","connection":"default","uid":"api::wallet-type.wallet-type","apiName":"wallet-type","globalId":"WalletType","actions":{},"lifecycles":{}}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","actions"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::governance-action-type.governance-action-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"gov_action_type_name","defaultSortBy":"gov_action_type_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"gov_action_type_name":{"edit":{"label":"gov_action_type_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gov_action_type_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","gov_action_type_name","createdAt","updatedAt"],"edit":[[{"name":"gov_action_type_name","size":6}]]},"uid":"api::governance-action-type.governance-action-type"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::comment.comment	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proposal_id","defaultSortBy":"proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_id":{"edit":{"label":"proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_id","searchable":true,"sortable":true}},"comment_parent_id":{"edit":{"label":"comment_parent_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comment_parent_id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"comment_text":{"edit":{"label":"comment_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"comment_text","searchable":true,"sortable":true}},"comments_reports":{"edit":{"label":"comments_reports","description":"","placeholder":"","visible":true,"editable":true,"mainField":"hash"},"list":{"label":"comments_reports","searchable":false,"sortable":false}},"bd_proposal_id":{"edit":{"label":"bd_proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bd_proposal_id","searchable":true,"sortable":true}},"drep_id":{"edit":{"label":"drep_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drep_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_id","comment_parent_id","user_id"],"edit":[[{"name":"proposal_id","size":6},{"name":"comment_parent_id","size":6}],[{"name":"user_id","size":6},{"name":"comment_text","size":6}],[{"name":"comments_reports","size":6},{"name":"bd_proposal_id","size":6}],[{"name":"drep_id","size":6}]]},"uid":"api::comment.comment"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::poll-vote.poll-vote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"user_id","defaultSortBy":"user_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"poll_id":{"edit":{"label":"poll_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_id","searchable":true,"sortable":true}},"vote_result":{"edit":{"label":"vote_result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vote_result","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","user_id","poll_id","vote_result"],"edit":[[{"name":"user_id","size":6},{"name":"poll_id","size":6}],[{"name":"vote_result","size":4}]]},"uid":"api::poll-vote.poll-vote"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::poll.poll	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proposal_id","defaultSortBy":"proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_id":{"edit":{"label":"proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_id","searchable":true,"sortable":true}},"poll_yes":{"edit":{"label":"poll_yes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_yes","searchable":true,"sortable":true}},"poll_no":{"edit":{"label":"poll_no","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_no","searchable":true,"sortable":true}},"poll_start_dt":{"edit":{"label":"poll_start_dt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_start_dt","searchable":true,"sortable":true}},"is_poll_active":{"edit":{"label":"is_poll_active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_poll_active","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_id","poll_yes","poll_no"],"edit":[[{"name":"proposal_id","size":6},{"name":"poll_yes","size":4}],[{"name":"poll_no","size":4},{"name":"poll_start_dt","size":6}],[{"name":"is_poll_active","size":4}]]},"uid":"api::poll.poll"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::proposal.proposal	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"user_id","defaultSortBy":"user_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"prop_likes":{"edit":{"label":"prop_likes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_likes","searchable":true,"sortable":true}},"prop_dislikes":{"edit":{"label":"prop_dislikes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_dislikes","searchable":true,"sortable":true}},"prop_comments_number":{"edit":{"label":"prop_comments_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_comments_number","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"proposal_contents":{"edit":{"label":"proposal_contents","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proposal_id"},"list":{"label":"proposal_contents","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","prop_likes","prop_dislikes","prop_comments_number"],"edit":[[{"name":"prop_likes","size":4},{"name":"prop_dislikes","size":4},{"name":"prop_comments_number","size":4}],[{"name":"user_id","size":6},{"name":"proposal_contents","size":6}]]},"uid":"api::proposal.proposal"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::proposal-content.proposal-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proposal_id","defaultSortBy":"proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_id":{"edit":{"label":"proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_id","searchable":true,"sortable":true}},"prop_rev_active":{"edit":{"label":"prop_rev_active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_rev_active","searchable":true,"sortable":true}},"prop_abstract":{"edit":{"label":"prop_abstract","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_abstract","searchable":true,"sortable":true}},"prop_motivation":{"edit":{"label":"prop_motivation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_motivation","searchable":true,"sortable":true}},"prop_rationale":{"edit":{"label":"prop_rationale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_rationale","searchable":true,"sortable":true}},"gov_action_type_id":{"edit":{"label":"gov_action_type_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gov_action_type_id","searchable":true,"sortable":true}},"prop_name":{"edit":{"label":"prop_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_name","searchable":true,"sortable":true}},"proposal_links":{"edit":{"label":"proposal_links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_links","searchable":false,"sortable":false}},"is_draft":{"edit":{"label":"is_draft","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_draft","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"prop_submitted":{"edit":{"label":"prop_submitted","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_submitted","searchable":true,"sortable":true}},"prop_submission_tx_hash":{"edit":{"label":"prop_submission_tx_hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_submission_tx_hash","searchable":true,"sortable":true}},"prop_submission_date":{"edit":{"label":"prop_submission_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_submission_date","searchable":true,"sortable":true}},"proposal_withdrawals":{"edit":{"label":"proposal_withdrawals","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_withdrawals","searchable":false,"sortable":false}},"proposal_constitution_content":{"edit":{"label":"proposal_constitution_content","description":"","placeholder":"","visible":true,"editable":true,"mainField":"prop_constitution_url"},"list":{"label":"proposal_constitution_content","searchable":true,"sortable":true}},"is_locked":{"edit":{"label":"is_locked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_locked","searchable":true,"sortable":true}},"proposal_hard_fork_content":{"edit":{"label":"proposal_hard_fork_content","description":"","placeholder":"","visible":true,"editable":true,"mainField":"previous_ga_hash"},"list":{"label":"proposal_hard_fork_content","searchable":true,"sortable":true}},"proposal":{"edit":{"label":"proposal","description":"","placeholder":"","visible":true,"editable":true,"mainField":"user_id"},"list":{"label":"proposal","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_id","prop_rev_active","prop_abstract"],"edit":[[{"name":"proposal_id","size":6},{"name":"prop_rev_active","size":4}],[{"name":"prop_abstract","size":6},{"name":"prop_motivation","size":6}],[{"name":"prop_rationale","size":6},{"name":"gov_action_type_id","size":6}],[{"name":"prop_name","size":6}],[{"name":"proposal_links","size":12}],[{"name":"is_draft","size":4},{"name":"user_id","size":6}],[{"name":"prop_submitted","size":4},{"name":"prop_submission_tx_hash","size":6}],[{"name":"prop_submission_date","size":4}],[{"name":"proposal_withdrawals","size":12}],[{"name":"proposal_constitution_content","size":6},{"name":"is_locked","size":4}],[{"name":"proposal_hard_fork_content","size":6},{"name":"proposal","size":6}]]},"uid":"api::proposal-content.proposal-content"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::proposal-vote.proposal-vote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proposal_id","defaultSortBy":"proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_id":{"edit":{"label":"proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"vote_result":{"edit":{"label":"vote_result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vote_result","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_id","user_id","vote_result"],"edit":[[{"name":"proposal_id","size":6},{"name":"user_id","size":6}],[{"name":"vote_result","size":4}]]},"uid":"api::proposal-vote.proposal-vote"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::proposal-submition.proposal-submition	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proposal_id","defaultSortBy":"proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_id":{"edit":{"label":"proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_id","searchable":true,"sortable":true}},"sub_json_path":{"edit":{"label":"sub_json_path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sub_json_path","searchable":false,"sortable":false}},"sub_location_url":{"edit":{"label":"sub_location_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sub_location_url","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_id","sub_location_url","createdAt"],"edit":[[{"name":"proposal_id","size":6}],[{"name":"sub_json_path","size":12}],[{"name":"sub_location_url","size":6}]]},"uid":"api::proposal-submition.proposal-submition"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::wallet-type.wallet-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"wallet_name":{"edit":{"label":"wallet_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"wallet_name","searchable":true,"sortable":true}},"wallet_image":{"edit":{"label":"wallet_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"wallet_image","searchable":true,"sortable":true}},"wallet_active":{"edit":{"label":"wallet_active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"wallet_active","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","wallet_name","wallet_image","wallet_active"],"edit":[[{"name":"wallet_name","size":6},{"name":"wallet_image","size":6}],[{"name":"wallet_active","size":4}]]},"uid":"api::wallet-type.wallet-type"}	object	\N	\N
32	plugin_i18n_default_locale	"en"	string	\N	\N
33	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
34	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
35	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"govtool_username":{"edit":{"label":"govtool_username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"govtool_username","searchable":true,"sortable":true}},"comments_reports":{"edit":{"label":"comments_reports","description":"","placeholder":"","visible":true,"editable":true,"mainField":"hash"},"list":{"label":"comments_reports","searchable":false,"sortable":false}},"is_validated":{"edit":{"label":"is_validated","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_validated","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"govtool_username","size":6},{"name":"comments_reports","size":6}],[{"name":"is_validated","size":4}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::plugin::route-permission.route-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::route-permission.route-permission"}	object	\N	\N
28	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
29	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
31	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
30	plugin_upload_metrics	{"weeklySchedule":"58 26 10 * * 3","lastWeeklyUpdate":1779877618025}	object	\N	\N
25	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
2	plugin_content_manager_configuration_components::proposal.proposal-link	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"prop_link_text","defaultSortBy":"prop_link_text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"prop_link":{"edit":{"label":"prop_link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_link","searchable":true,"sortable":true}},"prop_link_text":{"edit":{"label":"prop_link_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_link_text","searchable":true,"sortable":true}}},"layouts":{"list":["id","prop_link","prop_link_text"],"edit":[[{"name":"prop_link","size":6},{"name":"prop_link_text","size":6}]]},"uid":"proposal.proposal-link","isComponent":true}	object	\N	\N
36	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::auth-challenge.auth-challenge	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"identifier","defaultSortBy":"identifier","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"identifier":{"edit":{"label":"identifier","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"identifier","searchable":true,"sortable":true}},"nonce":{"edit":{"label":"nonce","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nonce","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"timestamp":{"edit":{"label":"timestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timestamp","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","identifier","nonce","message"],"edit":[[{"name":"identifier","size":6},{"name":"nonce","size":6}],[{"name":"message","size":6},{"name":"timestamp","size":6}],[{"name":"expiresAt","size":6}]]},"uid":"api::auth-challenge.auth-challenge"}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::bd-contact-information.bd-contact-information	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"be_full_name","defaultSortBy":"be_full_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"be_full_name":{"edit":{"label":"be_full_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"be_full_name","searchable":true,"sortable":true}},"be_email":{"edit":{"label":"be_email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"be_email","searchable":true,"sortable":true}},"submission_lead_full_name":{"edit":{"label":"submission_lead_full_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submission_lead_full_name","searchable":true,"sortable":true}},"submission_lead_email":{"edit":{"label":"submission_lead_email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submission_lead_email","searchable":true,"sortable":true}},"be_country_of_res":{"edit":{"label":"be_country_of_res","description":"","placeholder":"","visible":true,"editable":true,"mainField":"country_name"},"list":{"label":"be_country_of_res","searchable":true,"sortable":true}},"be_nationality":{"edit":{"label":"be_nationality","description":"","placeholder":"","visible":true,"editable":true,"mainField":"country_name"},"list":{"label":"be_nationality","searchable":true,"sortable":true}},"other_contract_type":{"edit":{"label":"other_contract_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"other_contract_type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","be_full_name","be_email","submission_lead_full_name"],"edit":[[{"name":"be_full_name","size":6},{"name":"be_email","size":6}],[{"name":"submission_lead_full_name","size":6},{"name":"submission_lead_email","size":6}],[{"name":"be_country_of_res","size":6},{"name":"be_nationality","size":6}],[{"name":"other_contract_type","size":6}]]},"uid":"api::bd-contact-information.bd-contact-information"}	object	\N	\N
66	plugin_content_manager_configuration_content_types::api::bd-proposal-detail.bd-proposal-detail	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"experience":{"edit":{"label":"experience","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"experience","searchable":true,"sortable":true}},"proposal_name":{"edit":{"label":"proposal_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_name","searchable":true,"sortable":true}},"key_dependencies":{"edit":{"label":"key_dependencies","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key_dependencies","searchable":true,"sortable":true}},"contract_type_name":{"edit":{"label":"contract_type_name","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contract_type_name"},"list":{"label":"contract_type_name","searchable":true,"sortable":true}},"maintain_and_support":{"edit":{"label":"maintain_and_support","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"maintain_and_support","searchable":true,"sortable":true}},"proposal_description":{"edit":{"label":"proposal_description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_description","searchable":true,"sortable":true}},"key_proposal_deliverables":{"edit":{"label":"key_proposal_deliverables","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key_proposal_deliverables","searchable":true,"sortable":true}},"resourcing_duration_estimates":{"edit":{"label":"resourcing_duration_estimates","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resourcing_duration_estimates","searchable":true,"sortable":true}},"other_contract_type":{"edit":{"label":"other_contract_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"other_contract_type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","experience","proposal_name","key_dependencies"],"edit":[[{"name":"experience","size":6},{"name":"proposal_name","size":6}],[{"name":"key_dependencies","size":6},{"name":"contract_type_name","size":6}],[{"name":"maintain_and_support","size":6},{"name":"proposal_description","size":6}],[{"name":"key_proposal_deliverables","size":6},{"name":"resourcing_duration_estimates","size":6}],[{"name":"other_contract_type","size":6}]]},"uid":"api::bd-proposal-detail.bd-proposal-detail"}	object	\N	\N
72	plugin_content_manager_configuration_content_types::api::comments-report.comments-report	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"hash","defaultSortBy":"hash","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"moderation_status":{"edit":{"label":"moderation_status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"moderation_status","searchable":true,"sortable":true}},"comment":{"edit":{"label":"comment","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proposal_id"},"list":{"label":"comment","searchable":true,"sortable":true}},"reporter":{"edit":{"label":"reporter","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"reporter","searchable":true,"sortable":true}},"moderator":{"edit":{"label":"moderator","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"moderator","searchable":true,"sortable":true}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","moderation_status","comment","reporter"],"edit":[[{"name":"moderation_status","size":4},{"name":"comment","size":6}],[{"name":"reporter","size":6},{"name":"moderator","size":6}],[{"name":"hash","size":6}]]},"uid":"api::comments-report.comments-report"}	object	\N	\N
74	plugin_content_manager_configuration_content_types::api::proposal-constitution-content.proposal-constitution-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"prop_constitution_url","defaultSortBy":"prop_constitution_url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"prop_constitution_url":{"edit":{"label":"prop_constitution_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_constitution_url","searchable":true,"sortable":true}},"prop_have_guardrails_script":{"edit":{"label":"prop_have_guardrails_script","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_have_guardrails_script","searchable":true,"sortable":true}},"prop_guardrails_script_url":{"edit":{"label":"prop_guardrails_script_url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_guardrails_script_url","searchable":true,"sortable":true}},"prop_guardrails_script_hash":{"edit":{"label":"prop_guardrails_script_hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_guardrails_script_hash","searchable":true,"sortable":true}},"proposal_content":{"edit":{"label":"proposal_content","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proposal_id"},"list":{"label":"proposal_content","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","prop_constitution_url","prop_have_guardrails_script","prop_guardrails_script_url"],"edit":[[{"name":"prop_constitution_url","size":6},{"name":"prop_have_guardrails_script","size":4}],[{"name":"prop_guardrails_script_url","size":6},{"name":"prop_guardrails_script_hash","size":6}],[{"name":"proposal_content","size":6}]]},"uid":"api::proposal-constitution-content.proposal-constitution-content"}	object	\N	\N
78	plugin_content_manager_configuration_content_types::api::bd-further-information.bd-further-information	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"proposal_links":{"edit":{"label":"proposal_links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_links","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","proposal_links","createdAt","updatedAt"],"edit":[[{"name":"proposal_links","size":12}]]},"uid":"api::bd-further-information.bd-further-information"}	object	\N	\N
63	plugin_content_manager_configuration_components::proposal.proposal-withdrawals	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"prop_receiving_address","defaultSortBy":"prop_receiving_address","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"prop_receiving_address":{"edit":{"label":"prop_receiving_address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_receiving_address","searchable":true,"sortable":true}},"prop_amount":{"edit":{"label":"prop_amount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_amount","searchable":true,"sortable":true}}},"layouts":{"list":["id","prop_receiving_address","prop_amount"],"edit":[[{"name":"prop_receiving_address","size":6},{"name":"prop_amount","size":4}]]},"uid":"proposal.proposal-withdrawals","isComponent":true}	object	\N	\N
61	plugin_content_manager_configuration_components::bd.bd-links	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"prop_link_text","defaultSortBy":"prop_link_text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"prop_link":{"edit":{"label":"prop_link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_link","searchable":true,"sortable":true}},"prop_link_text":{"edit":{"label":"prop_link_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_link_text","searchable":true,"sortable":true}}},"layouts":{"list":["id","prop_link","prop_link_text"],"edit":[[{"name":"prop_link","size":6},{"name":"prop_link_text","size":6}]]},"uid":"bd.bd-links","isComponent":true}	object	\N	\N
67	plugin_content_manager_configuration_content_types::api::bd-poll-vote.bd-poll-vote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"user_id","defaultSortBy":"user_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"user_id":{"edit":{"label":"user_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"user_id","searchable":true,"sortable":true}},"bd_poll_id":{"edit":{"label":"bd_poll_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bd_poll_id","searchable":true,"sortable":true}},"vote_result":{"edit":{"label":"vote_result","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vote_result","searchable":true,"sortable":true}},"drep_id":{"edit":{"label":"drep_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drep_id","searchable":true,"sortable":true}},"drep_voting_power":{"edit":{"label":"drep_voting_power","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"drep_voting_power","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","user_id","bd_poll_id","vote_result"],"edit":[[{"name":"user_id","size":6},{"name":"bd_poll_id","size":6}],[{"name":"vote_result","size":4},{"name":"drep_id","size":6}],[{"name":"drep_voting_power","size":6}]]},"uid":"api::bd-poll-vote.bd-poll-vote"}	object	\N	\N
73	plugin_content_manager_configuration_content_types::api::country-list.country-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"country_name","defaultSortBy":"country_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"country_name":{"edit":{"label":"country_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"country_name","searchable":true,"sortable":true}},"alfa_2_code":{"edit":{"label":"alfa_2_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alfa_2_code","searchable":true,"sortable":true}},"alfa_3_code":{"edit":{"label":"alfa_3_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alfa_3_code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","country_name","alfa_2_code","alfa_3_code"],"edit":[[{"name":"country_name","size":6},{"name":"alfa_2_code","size":6}],[{"name":"alfa_3_code","size":6}]]},"uid":"api::country-list.country-list"}	object	\N	\N
81	plugin_content_manager_configuration_content_types::api::bd-draft.bd-draft	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"test","defaultSortBy":"test","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"draft_data":{"edit":{"label":"draft_data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"draft_data","searchable":false,"sortable":false}},"creator":{"edit":{"label":"creator","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"creator","searchable":true,"sortable":true}},"test":{"edit":{"label":"test","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"test","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","creator","test","createdAt"],"edit":[[{"name":"draft_data","size":12}],[{"name":"creator","size":6},{"name":"test","size":6}]]},"uid":"api::bd-draft.bd-draft"}	object	\N	\N
84	plugin_content_manager_configuration_content_types::api::bd-costing.bd-costing	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"ada_amount","defaultSortBy":"ada_amount","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"cost_breakdown":{"edit":{"label":"cost_breakdown","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cost_breakdown","searchable":true,"sortable":true}},"preferred_currency":{"edit":{"label":"preferred_currency","description":"","placeholder":"","visible":true,"editable":true,"mainField":"currency_name"},"list":{"label":"preferred_currency","searchable":true,"sortable":true}},"ada_amount":{"edit":{"label":"ada_amount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ada_amount","searchable":true,"sortable":true}},"amount_in_preferred_currency":{"edit":{"label":"amount_in_preferred_currency","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"amount_in_preferred_currency","searchable":true,"sortable":true}},"usd_to_ada_conversion_rate":{"edit":{"label":"usd_to_ada_conversion_rate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"usd_to_ada_conversion_rate","searchable":true,"sortable":true}},"ada_amount_clone":{"edit":{"label":"ada_amount_clone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ada_amount_clone","searchable":true,"sortable":true}},"amount_in_preferred_currency_clone":{"edit":{"label":"amount_in_preferred_currency_clone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"amount_in_preferred_currency_clone","searchable":true,"sortable":true}},"usd_to_ada_conversion_rate_clone":{"edit":{"label":"usd_to_ada_conversion_rate_clone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"usd_to_ada_conversion_rate_clone","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","cost_breakdown","preferred_currency","ada_amount"],"edit":[[{"name":"cost_breakdown","size":6},{"name":"preferred_currency","size":6}],[{"name":"ada_amount","size":6},{"name":"amount_in_preferred_currency","size":6}],[{"name":"usd_to_ada_conversion_rate","size":6},{"name":"ada_amount_clone","size":4}],[{"name":"amount_in_preferred_currency_clone","size":4},{"name":"usd_to_ada_conversion_rate_clone","size":4}]]},"uid":"api::bd-costing.bd-costing"}	object	\N	\N
69	plugin_content_manager_configuration_content_types::api::bd-psapb.bd-psapb	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"problem_statement":{"edit":{"label":"problem_statement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"problem_statement","searchable":true,"sortable":true}},"proposal_benefit":{"edit":{"label":"proposal_benefit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_benefit","searchable":true,"sortable":true}},"supplementary_endorsement":{"edit":{"label":"supplementary_endorsement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"supplementary_endorsement","searchable":true,"sortable":true}},"type_name":{"edit":{"label":"type_name","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type_name"},"list":{"label":"type_name","searchable":true,"sortable":true}},"roadmap_name":{"edit":{"label":"roadmap_name","description":"","placeholder":"","visible":true,"editable":true,"mainField":"roadmap_name"},"list":{"label":"roadmap_name","searchable":true,"sortable":true}},"committee_name":{"edit":{"label":"committee_name","description":"","placeholder":"","visible":true,"editable":true,"mainField":"committee_name"},"list":{"label":"committee_name","searchable":true,"sortable":true}},"explain_proposal_roadmap":{"edit":{"label":"explain_proposal_roadmap","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"explain_proposal_roadmap","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","problem_statement","proposal_benefit","supplementary_endorsement"],"edit":[[{"name":"problem_statement","size":6},{"name":"proposal_benefit","size":6}],[{"name":"supplementary_endorsement","size":6},{"name":"type_name","size":6}],[{"name":"roadmap_name","size":6},{"name":"committee_name","size":6}],[{"name":"explain_proposal_roadmap","size":6}]]},"uid":"api::bd-psapb.bd-psapb"}	object	\N	\N
68	plugin_content_manager_configuration_content_types::api::bd-proposal-ownership.bd-proposal-ownership	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"group_name","defaultSortBy":"group_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"agreed":{"edit":{"label":"agreed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"agreed","searchable":true,"sortable":true}},"group_name":{"edit":{"label":"group_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"group_name","searchable":true,"sortable":true}},"company_name":{"edit":{"label":"company_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_name","searchable":true,"sortable":true}},"type_of_group":{"edit":{"label":"type_of_group","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type_of_group","searchable":true,"sortable":true}},"social_handles":{"edit":{"label":"social_handles","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"social_handles","searchable":true,"sortable":true}},"submited_on_behalf":{"edit":{"label":"submited_on_behalf","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submited_on_behalf","searchable":true,"sortable":true}},"company_domain_name":{"edit":{"label":"company_domain_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"company_domain_name","searchable":true,"sortable":true}},"proposal_public_champion":{"edit":{"label":"proposal_public_champion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proposal_public_champion","searchable":true,"sortable":true}},"key_info_to_identify_group":{"edit":{"label":"key_info_to_identify_group","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key_info_to_identify_group","searchable":true,"sortable":true}},"be_country":{"edit":{"label":"be_country","description":"","placeholder":"","visible":true,"editable":true,"mainField":"country_name"},"list":{"label":"be_country","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","agreed","group_name","company_name"],"edit":[[{"name":"agreed","size":4},{"name":"group_name","size":6}],[{"name":"company_name","size":6},{"name":"type_of_group","size":6}],[{"name":"social_handles","size":6},{"name":"submited_on_behalf","size":6}],[{"name":"company_domain_name","size":6},{"name":"proposal_public_champion","size":6}],[{"name":"key_info_to_identify_group","size":6},{"name":"be_country","size":6}]]},"uid":"api::bd-proposal-ownership.bd-proposal-ownership"}	object	\N	\N
70	plugin_content_manager_configuration_content_types::api::bd-road-map.bd-road-map	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"roadmap_name","defaultSortBy":"roadmap_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"roadmap_name":{"edit":{"label":"roadmap_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"roadmap_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","roadmap_name","createdAt","updatedAt"],"edit":[[{"name":"roadmap_name","size":6}]]},"uid":"api::bd-road-map.bd-road-map"}	object	\N	\N
71	plugin_content_manager_configuration_content_types::api::bd.bd	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"master_id","defaultSortBy":"master_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"creator":{"edit":{"label":"creator","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"creator","searchable":true,"sortable":true}},"privacy_policy":{"edit":{"label":"privacy_policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"privacy_policy","searchable":true,"sortable":true}},"bd_costing":{"edit":{"label":"bd_costing","description":"","placeholder":"","visible":true,"editable":true,"mainField":"ada_amount"},"list":{"label":"bd_costing","searchable":true,"sortable":true}},"bd_proposal_detail":{"edit":{"label":"bd_proposal_detail","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"bd_proposal_detail","searchable":true,"sortable":true}},"bd_contact_information":{"edit":{"label":"bd_contact_information","description":"","placeholder":"","visible":true,"editable":true,"mainField":"be_full_name"},"list":{"label":"bd_contact_information","searchable":true,"sortable":true}},"bd_further_information":{"edit":{"label":"bd_further_information","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"bd_further_information","searchable":true,"sortable":true}},"bd_psapb":{"edit":{"label":"bd_psapb","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"bd_psapb","searchable":true,"sortable":true}},"intersect_named_administrator":{"edit":{"label":"intersect_named_administrator","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"intersect_named_administrator","searchable":true,"sortable":true}},"bd_proposal_ownership":{"edit":{"label":"bd_proposal_ownership","description":"","placeholder":"","visible":true,"editable":true,"mainField":"group_name"},"list":{"label":"bd_proposal_ownership","searchable":true,"sortable":true}},"old_ver":{"edit":{"label":"old_ver","description":"","placeholder":"","visible":true,"editable":true,"mainField":"master_id"},"list":{"label":"old_ver","searchable":true,"sortable":true}},"prop_comments_number":{"edit":{"label":"prop_comments_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prop_comments_number","searchable":true,"sortable":true}},"is_active":{"edit":{"label":"is_active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_active","searchable":true,"sortable":true}},"intersect_admin_further_text":{"edit":{"label":"intersect_admin_further_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"intersect_admin_further_text","searchable":true,"sortable":true}},"master_id":{"edit":{"label":"master_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"master_id","searchable":true,"sortable":true}},"submitted_for_vote":{"edit":{"label":"submitted_for_vote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submitted_for_vote","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","creator","privacy_policy","bd_costing"],"edit":[[{"name":"creator","size":6},{"name":"privacy_policy","size":4}],[{"name":"bd_costing","size":6},{"name":"bd_proposal_detail","size":6}],[{"name":"bd_contact_information","size":6},{"name":"bd_further_information","size":6}],[{"name":"bd_psapb","size":6},{"name":"intersect_named_administrator","size":4}],[{"name":"bd_proposal_ownership","size":6},{"name":"old_ver","size":6}],[{"name":"prop_comments_number","size":4},{"name":"is_active","size":4}],[{"name":"intersect_admin_further_text","size":6},{"name":"master_id","size":6}],[{"name":"submitted_for_vote","size":6}]]},"uid":"api::bd.bd"}	object	\N	\N
75	plugin_content_manager_configuration_content_types::api::bd-contract-type.bd-contract-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contract_type_name","defaultSortBy":"contract_type_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"contract_type_name":{"edit":{"label":"contract_type_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contract_type_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","contract_type_name","createdAt","updatedAt"],"edit":[[{"name":"contract_type_name","size":6}]]},"uid":"api::bd-contract-type.bd-contract-type"}	object	\N	\N
76	plugin_content_manager_configuration_content_types::api::proposal-hard-fork-content.proposal-hard-fork-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"previous_ga_hash","defaultSortBy":"previous_ga_hash","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"previous_ga_hash":{"edit":{"label":"previous_ga_hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previous_ga_hash","searchable":true,"sortable":true}},"previous_ga_id":{"edit":{"label":"previous_ga_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previous_ga_id","searchable":true,"sortable":true}},"major":{"edit":{"label":"major","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"major","searchable":true,"sortable":true}},"minor":{"edit":{"label":"minor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"minor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","previous_ga_hash","previous_ga_id","major"],"edit":[[{"name":"previous_ga_hash","size":6},{"name":"previous_ga_id","size":6}],[{"name":"major","size":6},{"name":"minor","size":6}]]},"uid":"api::proposal-hard-fork-content.proposal-hard-fork-content"}	object	\N	\N
77	plugin_content_manager_configuration_content_types::api::proposal-update-committee-content.proposal-update-committee-content	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"numerator":{"edit":{"label":"numerator","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"numerator","searchable":true,"sortable":true}},"denominator":{"edit":{"label":"denominator","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"denominator","searchable":true,"sortable":true}},"add_members":{"edit":{"label":"add_members","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"add_members","searchable":false,"sortable":false}},"remove_members":{"edit":{"label":"remove_members","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"remove_members","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","numerator","denominator","add_members"],"edit":[[{"name":"numerator","size":4},{"name":"denominator","size":4}],[{"name":"add_members","size":12}],[{"name":"remove_members","size":12}]]},"uid":"api::proposal-update-committee-content.proposal-update-committee-content"}	object	\N	\N
79	plugin_content_manager_configuration_content_types::api::bd-type.bd-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type_name","defaultSortBy":"type_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type_name":{"edit":{"label":"type_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type_name","createdAt","updatedAt"],"edit":[[{"name":"type_name","size":6}]]},"uid":"api::bd-type.bd-type"}	object	\N	\N
82	plugin_content_manager_configuration_content_types::api::bd-poll.bd-poll	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"bd_proposal_id","defaultSortBy":"bd_proposal_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"bd_proposal_id":{"edit":{"label":"bd_proposal_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bd_proposal_id","searchable":true,"sortable":true}},"poll_yes":{"edit":{"label":"poll_yes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_yes","searchable":true,"sortable":true}},"poll_no":{"edit":{"label":"poll_no","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poll_no","searchable":true,"sortable":true}},"is_poll_active":{"edit":{"label":"is_poll_active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_poll_active","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","bd_proposal_id","poll_yes","poll_no"],"edit":[[{"name":"bd_proposal_id","size":6},{"name":"poll_yes","size":4}],[{"name":"poll_no","size":4},{"name":"is_poll_active","size":4}]]},"uid":"api::bd-poll.bd-poll"}	object	\N	\N
80	plugin_content_manager_configuration_content_types::api::bd-currency-list.bd-currency-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"currency_name","defaultSortBy":"currency_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"currency_name":{"edit":{"label":"currency_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"currency_name","searchable":true,"sortable":true}},"currency_letter_code":{"edit":{"label":"currency_letter_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"currency_letter_code","searchable":true,"sortable":true}},"currency_number_code":{"edit":{"label":"currency_number_code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"currency_number_code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","currency_name","currency_letter_code","currency_number_code"],"edit":[[{"name":"currency_name","size":6},{"name":"currency_letter_code","size":6}],[{"name":"currency_number_code","size":6}]]},"uid":"api::bd-currency-list.bd-currency-list"}	object	\N	\N
83	plugin_content_manager_configuration_content_types::api::bd-intersect-committee.bd-intersect-committee	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"committee_name","defaultSortBy":"committee_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"committee_name":{"edit":{"label":"committee_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"committee_name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","committee_name","createdAt","updatedAt"],"edit":[[{"name":"committee_name","size":6}]]},"uid":"api::bd-intersect-committee.bd-intersect-committee"}	object	\N	\N
62	plugin_content_manager_configuration_components::proposal.committee-member	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"address_hash","defaultSortBy":"address_hash","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"address_hash":{"edit":{"label":"address_hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address_hash","searchable":true,"sortable":true}},"epoch":{"edit":{"label":"epoch","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"epoch","searchable":true,"sortable":true}}},"layouts":{"list":["id","address_hash","epoch"],"edit":[[{"name":"address_hash","size":6},{"name":"epoch","size":4}]]},"uid":"proposal.committee-member","isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
4	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"govtool_username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_validated","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"route_permissions","indexes":[{"name":"route_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"route_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"route_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"route_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"auth_challenges","indexes":[{"name":"auth_challenges_created_by_id_fk","columns":["created_by_id"]},{"name":"auth_challenges_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"auth_challenges_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"auth_challenges_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"identifier","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nonce","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timestamp","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds","indexes":[{"name":"bds_created_by_id_fk","columns":["created_by_id"]},{"name":"bds_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bds_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bds_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"privacy_policy","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"intersect_named_administrator","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_comments_number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"intersect_admin_further_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"master_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"submitted_for_vote","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_contact_informations","indexes":[{"name":"bd_contact_informations_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_contact_informations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_contact_informations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_contact_informations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"be_full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"be_email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"submission_lead_full_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"submission_lead_email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"other_contract_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_contract_types","indexes":[{"name":"bd_contract_types_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_contract_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_contract_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_contract_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"contract_type_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_costings","indexes":[{"name":"bd_costings_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_costings_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_costings_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_costings_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"cost_breakdown","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ada_amount","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"amount_in_preferred_currency","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"usd_to_ada_conversion_rate","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ada_amount_clone","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"amount_in_preferred_currency_clone","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"usd_to_ada_conversion_rate_clone","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_currency_lists","indexes":[{"name":"bd_currency_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_currency_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_currency_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_currency_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"currency_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"currency_letter_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"currency_number_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_drafts","indexes":[{"name":"bd_drafts_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_drafts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_drafts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_drafts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"draft_data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"test","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_further_informations","indexes":[{"name":"bd_further_informations_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_further_informations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_further_informations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_further_informations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_intersect_committees","indexes":[{"name":"bd_intersect_committees_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_intersect_committees_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_intersect_committees_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_intersect_committees_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"committee_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_polls","indexes":[{"name":"bd_polls_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_polls_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_polls_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_polls_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_yes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_no","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_poll_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_poll_votes","indexes":[{"name":"bd_poll_votes_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_poll_votes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_poll_votes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_poll_votes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bd_poll_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vote_result","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drep_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drep_voting_power","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_proposal_details","indexes":[{"name":"bd_proposal_details_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_proposal_details_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_proposal_details_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_proposal_details_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"experience","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proposal_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key_dependencies","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"maintain_and_support","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proposal_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key_proposal_deliverables","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"resourcing_duration_estimates","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"other_contract_type","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_proposal_ownerships","indexes":[{"name":"bd_proposal_ownerships_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_proposal_ownerships_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_proposal_ownerships_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_proposal_ownerships_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"agreed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"group_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type_of_group","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"social_handles","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"submited_on_behalf","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"company_domain_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proposal_public_champion","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key_info_to_identify_group","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_psapbs","indexes":[{"name":"bd_psapbs_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_psapbs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_psapbs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_psapbs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"problem_statement","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proposal_benefit","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"supplementary_endorsement","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"explain_proposal_roadmap","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_road_maps","indexes":[{"name":"bd_road_maps_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_road_maps_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_road_maps_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_road_maps_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"roadmap_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_types","indexes":[{"name":"bd_types_created_by_id_fk","columns":["created_by_id"]},{"name":"bd_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bd_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bd_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments","indexes":[{"name":"comments_created_by_id_fk","columns":["created_by_id"]},{"name":"comments_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"comments_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"comments_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"comment_parent_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"comment_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bd_proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"drep_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_reports","indexes":[{"name":"comments_reports_created_by_id_fk","columns":["created_by_id"]},{"name":"comments_reports_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"comments_reports_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"comments_reports_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"moderation_status","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"country_lists","indexes":[{"name":"country_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"country_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"country_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"country_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"country_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alfa_2_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alfa_3_code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"governance_action_types","indexes":[{"name":"governance_action_types_created_by_id_fk","columns":["created_by_id"]},{"name":"governance_action_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"governance_action_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"governance_action_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"gov_action_type_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"polls","indexes":[{"name":"polls_created_by_id_fk","columns":["created_by_id"]},{"name":"polls_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"polls_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"polls_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_yes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_no","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_start_dt","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_poll_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"poll_votes","indexes":[{"name":"poll_votes_created_by_id_fk","columns":["created_by_id"]},{"name":"poll_votes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"poll_votes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"poll_votes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poll_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vote_result","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposals","indexes":[{"name":"proposals_created_by_id_fk","columns":["created_by_id"]},{"name":"proposals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prop_likes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_dislikes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_comments_number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_constitution_contents","indexes":[{"name":"proposal_constitution_contents_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_constitution_contents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_constitution_contents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_constitution_contents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prop_constitution_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_have_guardrails_script","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_guardrails_script_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_guardrails_script_hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_contents","indexes":[{"name":"proposal_contents_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_contents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_contents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_contents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_rev_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_abstract","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_motivation","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_rationale","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gov_action_type_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_draft","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_submitted","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_submission_tx_hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_submission_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_locked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_hard_fork_contents","indexes":[{"name":"proposal_hard_fork_contents_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_hard_fork_contents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_hard_fork_contents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_hard_fork_contents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"previous_ga_hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"previous_ga_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"major","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"minor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_submitions","indexes":[{"name":"proposal_submitions_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_submitions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_submitions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_submitions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_json_path","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sub_location_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_update_committee_contents","indexes":[{"name":"proposal_update_committee_contents_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_update_committee_contents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_update_committee_contents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_update_committee_contents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"numerator","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"denominator","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_votes","indexes":[{"name":"proposal_votes_created_by_id_fk","columns":["created_by_id"]},{"name":"proposal_votes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proposal_votes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proposal_votes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vote_result","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"wallet_types","indexes":[{"name":"wallet_types_created_by_id_fk","columns":["created_by_id"]},{"name":"wallet_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"wallet_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"wallet_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"wallet_name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"wallet_image","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"wallet_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_bd_bd_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prop_link","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_link_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_proposal_committee_members","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"address_hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"epoch","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_proposal_proposal_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prop_link","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_link_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_proposal_proposal_withdrawals","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"prop_receiving_address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prop_amount","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"route_permissions_role_links","indexes":[{"name":"route_permissions_role_links_fk","columns":["route_permission_id"]},{"name":"route_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"route_permissions_role_links_unique","columns":["route_permission_id","role_id"],"type":"unique"}],"foreignKeys":[{"name":"route_permissions_role_links_fk","columns":["route_permission_id"],"referencedColumns":["id"],"referencedTable":"route_permissions","onDelete":"CASCADE"},{"name":"route_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"route_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_creator_links","indexes":[{"name":"bds_creator_links_fk","columns":["bd_id"]},{"name":"bds_creator_links_inv_fk","columns":["user_id"]},{"name":"bds_creator_links_unique","columns":["bd_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_creator_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_creator_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_costing_links","indexes":[{"name":"bds_bd_costing_links_fk","columns":["bd_id"]},{"name":"bds_bd_costing_links_inv_fk","columns":["bd_costing_id"]},{"name":"bds_bd_costing_links_unique","columns":["bd_id","bd_costing_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_costing_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_costing_links_inv_fk","columns":["bd_costing_id"],"referencedColumns":["id"],"referencedTable":"bd_costings","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_costing_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_proposal_detail_links","indexes":[{"name":"bds_bd_proposal_detail_links_fk","columns":["bd_id"]},{"name":"bds_bd_proposal_detail_links_inv_fk","columns":["bd_proposal_detail_id"]},{"name":"bds_bd_proposal_detail_links_unique","columns":["bd_id","bd_proposal_detail_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_proposal_detail_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_proposal_detail_links_inv_fk","columns":["bd_proposal_detail_id"],"referencedColumns":["id"],"referencedTable":"bd_proposal_details","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_proposal_detail_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_contact_information_links","indexes":[{"name":"bds_bd_contact_information_links_fk","columns":["bd_id"]},{"name":"bds_bd_contact_information_links_inv_fk","columns":["bd_contact_information_id"]},{"name":"bds_bd_contact_information_links_unique","columns":["bd_id","bd_contact_information_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_contact_information_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_contact_information_links_inv_fk","columns":["bd_contact_information_id"],"referencedColumns":["id"],"referencedTable":"bd_contact_informations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_contact_information_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_further_information_links","indexes":[{"name":"bds_bd_further_information_links_fk","columns":["bd_id"]},{"name":"bds_bd_further_information_links_inv_fk","columns":["bd_further_information_id"]},{"name":"bds_bd_further_information_links_unique","columns":["bd_id","bd_further_information_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_further_information_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_further_information_links_inv_fk","columns":["bd_further_information_id"],"referencedColumns":["id"],"referencedTable":"bd_further_informations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_further_information_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_psapb_links","indexes":[{"name":"bds_bd_psapb_links_fk","columns":["bd_id"]},{"name":"bds_bd_psapb_links_inv_fk","columns":["bd_psapb_id"]},{"name":"bds_bd_psapb_links_unique","columns":["bd_id","bd_psapb_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_psapb_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_psapb_links_inv_fk","columns":["bd_psapb_id"],"referencedColumns":["id"],"referencedTable":"bd_psapbs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_psapb_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_bd_proposal_ownership_links","indexes":[{"name":"bds_bd_proposal_ownership_links_fk","columns":["bd_id"]},{"name":"bds_bd_proposal_ownership_links_inv_fk","columns":["bd_proposal_ownership_id"]},{"name":"bds_bd_proposal_ownership_links_unique","columns":["bd_id","bd_proposal_ownership_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_bd_proposal_ownership_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_bd_proposal_ownership_links_inv_fk","columns":["bd_proposal_ownership_id"],"referencedColumns":["id"],"referencedTable":"bd_proposal_ownerships","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_proposal_ownership_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bds_old_ver_links","indexes":[{"name":"bds_old_ver_links_fk","columns":["bd_id"]},{"name":"bds_old_ver_links_inv_fk","columns":["inv_bd_id"]},{"name":"bds_old_ver_links_unique","columns":["bd_id","inv_bd_id"],"type":"unique"}],"foreignKeys":[{"name":"bds_old_ver_links_fk","columns":["bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"},{"name":"bds_old_ver_links_inv_fk","columns":["inv_bd_id"],"referencedColumns":["id"],"referencedTable":"bds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_bd_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_contact_informations_be_country_of_res_links","indexes":[{"name":"bd_contact_informations_be_country_of_res_links_fk","columns":["bd_contact_information_id"]},{"name":"bd_contact_informations_be_country_of_res_links_inv_fk","columns":["country_list_id"]},{"name":"bd_contact_informations_be_country_of_res_links_unique","columns":["bd_contact_information_id","country_list_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_contact_informations_be_country_of_res_links_fk","columns":["bd_contact_information_id"],"referencedColumns":["id"],"referencedTable":"bd_contact_informations","onDelete":"CASCADE"},{"name":"bd_contact_informations_be_country_of_res_links_inv_fk","columns":["country_list_id"],"referencedColumns":["id"],"referencedTable":"country_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_contact_information_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_contact_informations_be_nationality_links","indexes":[{"name":"bd_contact_informations_be_nationality_links_fk","columns":["bd_contact_information_id"]},{"name":"bd_contact_informations_be_nationality_links_inv_fk","columns":["country_list_id"]},{"name":"bd_contact_informations_be_nationality_links_unique","columns":["bd_contact_information_id","country_list_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_contact_informations_be_nationality_links_fk","columns":["bd_contact_information_id"],"referencedColumns":["id"],"referencedTable":"bd_contact_informations","onDelete":"CASCADE"},{"name":"bd_contact_informations_be_nationality_links_inv_fk","columns":["country_list_id"],"referencedColumns":["id"],"referencedTable":"country_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_contact_information_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_costings_preferred_currency_links","indexes":[{"name":"bd_costings_preferred_currency_links_fk","columns":["bd_costing_id"]},{"name":"bd_costings_preferred_currency_links_inv_fk","columns":["bd_currency_list_id"]},{"name":"bd_costings_preferred_currency_links_unique","columns":["bd_costing_id","bd_currency_list_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_costings_preferred_currency_links_fk","columns":["bd_costing_id"],"referencedColumns":["id"],"referencedTable":"bd_costings","onDelete":"CASCADE"},{"name":"bd_costings_preferred_currency_links_inv_fk","columns":["bd_currency_list_id"],"referencedColumns":["id"],"referencedTable":"bd_currency_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_costing_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_currency_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_drafts_creator_links","indexes":[{"name":"bd_drafts_creator_links_fk","columns":["bd_draft_id"]},{"name":"bd_drafts_creator_links_inv_fk","columns":["user_id"]},{"name":"bd_drafts_creator_links_unique","columns":["bd_draft_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_drafts_creator_links_fk","columns":["bd_draft_id"],"referencedColumns":["id"],"referencedTable":"bd_drafts","onDelete":"CASCADE"},{"name":"bd_drafts_creator_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_draft_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_further_informations_components","indexes":[{"name":"bd_further_informations_field_index","columns":["field"]},{"name":"bd_further_informations_component_type_index","columns":["component_type"]},{"name":"bd_further_informations_entity_fk","columns":["entity_id"]},{"name":"bd_further_informations_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"bd_further_informations_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"bd_further_informations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_proposal_details_contract_type_name_links","indexes":[{"name":"bd_proposal_details_contract_type_name_links_fk","columns":["bd_proposal_detail_id"]},{"name":"bd_proposal_details_contract_type_name_links_inv_fk","columns":["bd_contract_type_id"]},{"name":"bd_proposal_details_contract_type_name_links_unique","columns":["bd_proposal_detail_id","bd_contract_type_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_proposal_details_contract_type_name_links_fk","columns":["bd_proposal_detail_id"],"referencedColumns":["id"],"referencedTable":"bd_proposal_details","onDelete":"CASCADE"},{"name":"bd_proposal_details_contract_type_name_links_inv_fk","columns":["bd_contract_type_id"],"referencedColumns":["id"],"referencedTable":"bd_contract_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_proposal_detail_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_contract_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_proposal_ownerships_be_country_links","indexes":[{"name":"bd_proposal_ownerships_be_country_links_fk","columns":["bd_proposal_ownership_id"]},{"name":"bd_proposal_ownerships_be_country_links_inv_fk","columns":["country_list_id"]},{"name":"bd_proposal_ownerships_be_country_links_unique","columns":["bd_proposal_ownership_id","country_list_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_proposal_ownerships_be_country_links_fk","columns":["bd_proposal_ownership_id"],"referencedColumns":["id"],"referencedTable":"bd_proposal_ownerships","onDelete":"CASCADE"},{"name":"bd_proposal_ownerships_be_country_links_inv_fk","columns":["country_list_id"],"referencedColumns":["id"],"referencedTable":"country_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_proposal_ownership_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"country_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_psapbs_type_name_links","indexes":[{"name":"bd_psapbs_type_name_links_fk","columns":["bd_psapb_id"]},{"name":"bd_psapbs_type_name_links_inv_fk","columns":["bd_type_id"]},{"name":"bd_psapbs_type_name_links_unique","columns":["bd_psapb_id","bd_type_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_psapbs_type_name_links_fk","columns":["bd_psapb_id"],"referencedColumns":["id"],"referencedTable":"bd_psapbs","onDelete":"CASCADE"},{"name":"bd_psapbs_type_name_links_inv_fk","columns":["bd_type_id"],"referencedColumns":["id"],"referencedTable":"bd_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_psapb_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_psapbs_roadmap_name_links","indexes":[{"name":"bd_psapbs_roadmap_name_links_fk","columns":["bd_psapb_id"]},{"name":"bd_psapbs_roadmap_name_links_inv_fk","columns":["bd_road_map_id"]},{"name":"bd_psapbs_roadmap_name_links_unique","columns":["bd_psapb_id","bd_road_map_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_psapbs_roadmap_name_links_fk","columns":["bd_psapb_id"],"referencedColumns":["id"],"referencedTable":"bd_psapbs","onDelete":"CASCADE"},{"name":"bd_psapbs_roadmap_name_links_inv_fk","columns":["bd_road_map_id"],"referencedColumns":["id"],"referencedTable":"bd_road_maps","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_psapb_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_road_map_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bd_psapbs_committee_name_links","indexes":[{"name":"bd_psapbs_committee_name_links_fk","columns":["bd_psapb_id"]},{"name":"bd_psapbs_committee_name_links_inv_fk","columns":["bd_intersect_committee_id"]},{"name":"bd_psapbs_committee_name_links_unique","columns":["bd_psapb_id","bd_intersect_committee_id"],"type":"unique"}],"foreignKeys":[{"name":"bd_psapbs_committee_name_links_fk","columns":["bd_psapb_id"],"referencedColumns":["id"],"referencedTable":"bd_psapbs","onDelete":"CASCADE"},{"name":"bd_psapbs_committee_name_links_inv_fk","columns":["bd_intersect_committee_id"],"referencedColumns":["id"],"referencedTable":"bd_intersect_committees","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bd_psapb_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bd_intersect_committee_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_reports_comment_links","indexes":[{"name":"comments_reports_comment_links_fk","columns":["comments_report_id"]},{"name":"comments_reports_comment_links_inv_fk","columns":["comment_id"]},{"name":"comments_reports_comment_links_unique","columns":["comments_report_id","comment_id"],"type":"unique"},{"name":"comments_reports_comment_links_order_inv_fk","columns":["comments_report_order"]}],"foreignKeys":[{"name":"comments_reports_comment_links_fk","columns":["comments_report_id"],"referencedColumns":["id"],"referencedTable":"comments_reports","onDelete":"CASCADE"},{"name":"comments_reports_comment_links_inv_fk","columns":["comment_id"],"referencedColumns":["id"],"referencedTable":"comments","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comments_report_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comment_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comments_report_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_reports_reporter_links","indexes":[{"name":"comments_reports_reporter_links_fk","columns":["comments_report_id"]},{"name":"comments_reports_reporter_links_inv_fk","columns":["user_id"]},{"name":"comments_reports_reporter_links_unique","columns":["comments_report_id","user_id"],"type":"unique"},{"name":"comments_reports_reporter_links_order_inv_fk","columns":["comments_report_order"]}],"foreignKeys":[{"name":"comments_reports_reporter_links_fk","columns":["comments_report_id"],"referencedColumns":["id"],"referencedTable":"comments_reports","onDelete":"CASCADE"},{"name":"comments_reports_reporter_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comments_report_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comments_report_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comments_reports_moderator_links","indexes":[{"name":"comments_reports_moderator_links_fk","columns":["comments_report_id"]},{"name":"comments_reports_moderator_links_inv_fk","columns":["user_id"]},{"name":"comments_reports_moderator_links_unique","columns":["comments_report_id","user_id"],"type":"unique"},{"name":"comments_reports_moderator_links_order_inv_fk","columns":["comments_report_order"]}],"foreignKeys":[{"name":"comments_reports_moderator_links_fk","columns":["comments_report_id"],"referencedColumns":["id"],"referencedTable":"comments_reports","onDelete":"CASCADE"},{"name":"comments_reports_moderator_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comments_report_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comments_report_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_constitution_contents_proposal_content_links","indexes":[{"name":"proposal_constitution_contents_proposal_content_links_fk","columns":["proposal_constitution_content_id"]},{"name":"proposal_constitution_contents_proposal_content_links_inv_fk","columns":["proposal_content_id"]},{"name":"proposal_constitution_contents_proposal_content_links_unique","columns":["proposal_constitution_content_id","proposal_content_id"],"type":"unique"}],"foreignKeys":[{"name":"proposal_constitution_contents_proposal_content_links_fk","columns":["proposal_constitution_content_id"],"referencedColumns":["id"],"referencedTable":"proposal_constitution_contents","onDelete":"CASCADE"},{"name":"proposal_constitution_contents_proposal_content_links_inv_fk","columns":["proposal_content_id"],"referencedColumns":["id"],"referencedTable":"proposal_contents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_constitution_content_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"proposal_content_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_contents_components","indexes":[{"name":"proposal_contents_field_index","columns":["field"]},{"name":"proposal_contents_component_type_index","columns":["component_type"]},{"name":"proposal_contents_entity_fk","columns":["entity_id"]},{"name":"proposal_contents_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"proposal_contents_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"proposal_contents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_contents_proposal_hard_fork_content_links","indexes":[{"name":"proposal_contents_proposal_hard_fork_content_links_fk","columns":["proposal_content_id"]},{"name":"proposal_contents_proposal_hard_fork_content_links_inv_fk","columns":["proposal_hard_fork_content_id"]},{"name":"proposal_contents_proposal_hard_fork_content_links_unique","columns":["proposal_content_id","proposal_hard_fork_content_id"],"type":"unique"}],"foreignKeys":[{"name":"proposal_contents_proposal_hard_fork_content_links_fk","columns":["proposal_content_id"],"referencedColumns":["id"],"referencedTable":"proposal_contents","onDelete":"CASCADE"},{"name":"proposal_contents_proposal_hard_fork_content_links_inv_fk","columns":["proposal_hard_fork_content_id"],"referencedColumns":["id"],"referencedTable":"proposal_hard_fork_contents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_content_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"proposal_hard_fork_content_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_contents_proposal_links","indexes":[{"name":"proposal_contents_proposal_links_fk","columns":["proposal_content_id"]},{"name":"proposal_contents_proposal_links_inv_fk","columns":["proposal_id"]},{"name":"proposal_contents_proposal_links_unique","columns":["proposal_content_id","proposal_id"],"type":"unique"},{"name":"proposal_contents_proposal_links_order_inv_fk","columns":["proposal_content_order"]}],"foreignKeys":[{"name":"proposal_contents_proposal_links_fk","columns":["proposal_content_id"],"referencedColumns":["id"],"referencedTable":"proposal_contents","onDelete":"CASCADE"},{"name":"proposal_contents_proposal_links_inv_fk","columns":["proposal_id"],"referencedColumns":["id"],"referencedTable":"proposals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"proposal_content_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"proposal_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"proposal_content_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proposal_update_committee_contents_components","indexes":[{"name":"proposal_update_committee_contents_field_index","columns":["field"]},{"name":"proposal_update_committee_contents_component_type_index","columns":["component_type"]},{"name":"proposal_update_committee_contents_entity_fk","columns":["entity_id"]},{"name":"proposal_update_committee_contents_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"proposal_update_committee_contents_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"proposal_update_committee_contents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-05-11 09:02:36.586	38d490ae929c8db6a809c5cd2161420d
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
1	20241121_1_WithdrawalsCopyDataToTempSchema.js	2026-05-11 07:02:20.336
2	20241121_2_WithdrawalsRestoreDataAndDropSchema.js	2026-05-11 07:02:20.397
3	20250502_1_add_strapi_api_token_permissions_pk.js	2026-05-11 07:02:20.42
4	20250502_2_Insert_and_update_gov_actions.js	2026-05-11 07:02:20.425
5	20251002_1_add_strapi_api_token_permissions_pk copy.js	2026-05-11 07:02:20.442
6	20251002_2_Insert_and_update_gov_actions.js	2026-05-11 07:02:20.444
7	20252002_1_Insert_or_update_gov_actions.js	2026-05-11 07:02:20.446
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2026-04-01 09:59:43.361	2026-04-01 09:59:43.361	\N	\N
2	plugin::users-permissions.auth.changePassword	2026-04-01 09:59:43.361	2026-04-01 09:59:43.361	\N	\N
3	plugin::users-permissions.auth.callback	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
4	plugin::users-permissions.auth.connect	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
6	plugin::users-permissions.auth.resetPassword	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
7	plugin::users-permissions.auth.register	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2026-04-01 09:59:43.369	2026-04-01 09:59:43.369	\N	\N
10	api::comment.comment.find	2026-04-01 09:59:43.526	2026-04-01 09:59:43.526	\N	\N
11	api::comment.comment.findOne	2026-04-01 09:59:43.527	2026-04-01 09:59:43.527	\N	\N
12	api::comment.comment.create	2026-04-01 09:59:43.527	2026-04-01 09:59:43.527	\N	\N
13	api::governance-action-type.governance-action-type.find	2026-04-01 09:59:43.528	2026-04-01 09:59:43.528	\N	\N
14	api::governance-action-type.governance-action-type.find	2026-04-01 09:59:43.529	2026-04-01 09:59:43.529	\N	\N
15	api::poll.poll.find	2026-04-01 09:59:43.53	2026-04-01 09:59:43.53	\N	\N
16	api::comment.comment.find	2026-04-01 09:59:43.531	2026-04-01 09:59:43.531	\N	\N
17	api::poll.poll.update	2026-04-01 09:59:43.532	2026-04-01 09:59:43.532	\N	\N
18	api::poll-vote.poll-vote.find	2026-04-01 09:59:43.532	2026-04-01 09:59:43.532	\N	\N
19	api::poll-vote.poll-vote.create	2026-04-01 09:59:43.533	2026-04-01 09:59:43.533	\N	\N
20	api::poll-vote.poll-vote.update	2026-04-01 09:59:43.533	2026-04-01 09:59:43.533	\N	\N
21	api::poll-vote.poll-vote.delete	2026-04-01 09:59:43.534	2026-04-01 09:59:43.534	\N	\N
22	api::proposal.proposal.find	2026-04-01 09:59:43.534	2026-04-01 09:59:43.534	\N	\N
23	api::poll.poll.create	2026-04-01 09:59:43.535	2026-04-01 09:59:43.535	\N	\N
24	api::comment.comment.findOne	2026-04-01 09:59:43.535	2026-04-01 09:59:43.535	\N	\N
25	api::poll.poll.findOne	2026-04-01 09:59:43.536	2026-04-01 09:59:43.536	\N	\N
26	api::poll.poll.findOne	2026-04-01 09:59:43.536	2026-04-01 09:59:43.536	\N	\N
27	api::proposal.proposal.findOne	2026-04-01 09:59:43.537	2026-04-01 09:59:43.537	\N	\N
28	api::proposal.proposal.findOne	2026-04-01 09:59:43.537	2026-04-01 09:59:43.537	\N	\N
29	api::proposal.proposal.create	2026-04-01 09:59:43.538	2026-04-01 09:59:43.538	\N	\N
30	api::proposal.proposal.delete	2026-04-01 09:59:43.538	2026-04-01 09:59:43.538	\N	\N
31	api::proposal-content.proposal-content.find	2026-04-01 09:59:43.539	2026-04-01 09:59:43.539	\N	\N
32	api::poll.poll.find	2026-04-01 09:59:43.539	2026-04-01 09:59:43.539	\N	\N
33	api::proposal.proposal.find	2026-04-01 09:59:43.541	2026-04-01 09:59:43.541	\N	\N
34	api::proposal-content.proposal-content.findOne	2026-04-01 09:59:43.541	2026-04-01 09:59:43.541	\N	\N
35	api::proposal-submition.proposal-submition.find	2026-04-01 09:59:43.542	2026-04-01 09:59:43.542	\N	\N
36	api::proposal-submition.proposal-submition.findOne	2026-04-01 09:59:43.542	2026-04-01 09:59:43.542	\N	\N
37	api::proposal-submition.proposal-submition.create	2026-04-01 09:59:43.543	2026-04-01 09:59:43.543	\N	\N
38	api::proposal-submition.proposal-submition.delete	2026-04-01 09:59:43.543	2026-04-01 09:59:43.543	\N	\N
39	api::proposal-vote.proposal-vote.find	2026-04-01 09:59:43.544	2026-04-01 09:59:43.544	\N	\N
40	api::proposal-vote.proposal-vote.create	2026-04-01 09:59:43.544	2026-04-01 09:59:43.544	\N	\N
41	api::proposal-content.proposal-content.update	2026-04-01 09:59:43.545	2026-04-01 09:59:43.545	\N	\N
42	api::proposal-content.proposal-content.find	2026-04-01 09:59:43.545	2026-04-01 09:59:43.545	\N	\N
43	api::proposal-content.proposal-content.findOne	2026-04-01 09:59:43.546	2026-04-01 09:59:43.546	\N	\N
44	api::proposal-vote.proposal-vote.update	2026-04-01 09:59:43.548	2026-04-01 09:59:43.548	\N	\N
45	api::proposal-content.proposal-content.create	2026-04-01 09:59:43.561	2026-04-01 09:59:43.561	\N	\N
164	api::proposal.proposal.update	2026-05-11 09:36:12.806	2026-05-11 09:36:12.806	\N	\N
47	api::auth-challenge.auth-challenge.findOne	2026-05-11 07:02:22.23	2026-05-11 07:02:22.23	\N	\N
202	api::bd-draft.bd-draft.create	2026-05-12 10:12:36.491	2026-05-12 10:12:36.491	\N	\N
204	api::bd-draft.bd-draft.delete	2026-05-12 10:12:36.491	2026-05-12 10:12:36.491	\N	\N
232	api::bd.bd.create	2026-05-13 04:08:16.226	2026-05-13 04:08:16.226	\N	\N
51	api::auth-challenge.auth-challenge.find	2026-05-11 07:02:22.236	2026-05-11 07:02:22.236	\N	\N
57	api::auth-challenge.auth-challenge.getChallenge	2026-05-11 07:02:22.238	2026-05-11 07:02:22.238	\N	\N
59	api::bd.bd.findOne	2026-05-11 07:02:22.24	2026-05-11 07:02:22.24	\N	\N
58	api::bd.bd.find	2026-05-11 07:02:22.239	2026-05-11 07:02:22.239	\N	\N
63	api::bd-contract-type.bd-contract-type.findOne	2026-05-11 07:02:22.245	2026-05-11 07:02:22.245	\N	\N
68	api::bd-costing.bd-costing.findOne	2026-05-11 07:02:22.247	2026-05-11 07:02:22.247	\N	\N
70	api::bd-contract-type.bd-contract-type.find	2026-05-11 07:02:22.249	2026-05-11 07:02:22.249	\N	\N
76	api::bd-costing.bd-costing.find	2026-05-11 07:02:22.252	2026-05-11 07:02:22.252	\N	\N
82	api::bd-currency-list.bd-currency-list.findOne	2026-05-11 07:02:22.254	2026-05-11 07:02:22.254	\N	\N
86	api::bd-further-information.bd-further-information.find	2026-05-11 07:02:22.256	2026-05-11 07:02:22.256	\N	\N
88	api::bd-currency-list.bd-currency-list.find	2026-05-11 07:02:22.257	2026-05-11 07:02:22.257	\N	\N
89	api::bd-intersect-committee.bd-intersect-committee.find	2026-05-11 07:02:22.257	2026-05-11 07:02:22.257	\N	\N
165	api::proposal-submition.proposal-submition.update	2026-05-11 09:36:12.806	2026-05-11 09:36:12.806	\N	\N
166	plugin::users-permissions.user.update	2026-05-11 09:37:01.606	2026-05-11 09:37:01.606	\N	\N
203	api::bd-draft.bd-draft.update	2026-05-12 10:12:36.491	2026-05-12 10:12:36.491	\N	\N
206	api::bd-draft.bd-draft.findOne	2026-05-12 10:12:58.583	2026-05-12 10:12:58.583	\N	\N
233	api::bd.bd.update	2026-05-19 03:50:37.807	2026-05-19 03:50:37.807	\N	\N
92	api::bd-intersect-committee.bd-intersect-committee.findOne	2026-05-11 07:02:22.259	2026-05-11 07:02:22.259	\N	\N
110	api::bd-proposal-ownership.bd-proposal-ownership.find	2026-05-11 07:02:22.267	2026-05-11 07:02:22.267	\N	\N
119	api::bd-proposal-detail.bd-proposal-detail.find	2026-05-11 07:02:22.271	2026-05-11 07:02:22.271	\N	\N
169	api::country-list.country-list.find	2026-05-12 10:03:36.103	2026-05-12 10:03:36.103	\N	\N
170	api::bd.bd.find	2026-05-12 10:05:25.973	2026-05-12 10:05:25.973	\N	\N
173	api::bd-road-map.bd-road-map.update	2026-05-12 10:06:03.171	2026-05-12 10:06:03.171	\N	\N
156	api::proxy.proxy.getGovtoolData	2026-05-11 07:02:22.288	2026-05-11 07:02:22.288	\N	\N
205	api::bd-draft.bd-draft.find	2026-05-12 10:12:58.583	2026-05-12 10:12:58.583	\N	\N
208	api::country-list.country-list.findOne	2026-05-12 10:18:52.249	2026-05-12 10:18:52.249	\N	\N
210	api::migration.migration.migrateCountries	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
212	api::migration.migration.migrateContractTypes	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
214	api::migration.migration.migrateBdIntersectCommittees	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
216	api::migration.migration.migrateSubmissions	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
102	api::bd-poll.bd-poll.find	2026-05-11 07:02:22.263	2026-05-11 07:02:22.263	\N	\N
171	api::governance-action-type.governance-action-type.findOne	2026-05-12 10:05:25.973	2026-05-12 10:05:25.973	\N	\N
172	api::bd-road-map.bd-road-map.create	2026-05-12 10:06:03.171	2026-05-12 10:06:03.171	\N	\N
129	api::bd-proposal-ownership.bd-proposal-ownership.findOne	2026-05-11 07:02:22.276	2026-05-11 07:02:22.276	\N	\N
175	api::bd-contact-information.bd-contact-information.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
148	api::bd-type.bd-type.findOne	2026-05-11 07:02:22.284	2026-05-11 07:02:22.284	\N	\N
157	api::proposal-update-committee-content.proposal-update-committee-content.find	2026-05-11 07:02:22.288	2026-05-11 07:02:22.288	\N	\N
177	api::bd-contract-type.bd-contract-type.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
179	api::bd-costing.bd-costing.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
181	api::bd-currency-list.bd-currency-list.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
183	api::bd-draft.bd-draft.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
189	api::bd-poll.bd-poll.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
196	api::bd-road-map.bd-road-map.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
207	api::country-list.country-list.find	2026-05-12 10:18:52.249	2026-05-12 10:18:52.249	\N	\N
94	api::bd-further-information.bd-further-information.findOne	2026-05-11 07:02:22.26	2026-05-11 07:02:22.26	\N	\N
174	api::bd.bd.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
176	api::bd-contact-information.bd-contact-information.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
178	api::bd-contract-type.bd-contract-type.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
180	api::bd-costing.bd-costing.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
182	api::bd-currency-list.bd-currency-list.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
188	api::bd-intersect-committee.bd-intersect-committee.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
195	api::bd-road-map.bd-road-map.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
211	api::migration.migration.migrateCurrencies	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
213	api::migration.migration.migrateRoadMap	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
215	api::migration.migration.migrateBdTypes	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
217	api::migration.migration.migrateBDProposalsMasterId	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
184	api::bd-draft.bd-draft.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
104	api::bd-poll.bd-poll.findOne	2026-05-11 07:02:22.264	2026-05-11 07:02:22.264	\N	\N
190	api::bd-poll.bd-poll.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
197	api::bd-type.bd-type.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
131	api::comments-report.comments-report.find	2026-05-11 07:02:22.277	2026-05-11 07:02:22.277	\N	\N
140	api::country-list.country-list.findOne	2026-05-11 07:02:22.281	2026-05-11 07:02:22.281	\N	\N
218	api::migration.migration.migrateCommentsAndPollMasterId	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
186	api::bd-intersect-committee.bd-intersect-committee.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
193	api::bd-proposal-detail.bd-proposal-detail.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
200	api::governance-action-type.governance-action-type.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
219	api::migration.migration.migrateAmounts	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
132	api::bd-type.bd-type.find	2026-05-11 07:02:22.277	2026-05-11 07:02:22.277	\N	\N
151	api::proposal-update-committee-content.proposal-update-committee-content.findOne	2026-05-11 07:02:22.286	2026-05-11 07:02:22.286	\N	\N
163	api::proxy.proxy.postGovtoolData	2026-05-11 07:02:22.302	2026-05-11 07:02:22.302	\N	\N
185	api::bd-further-information.bd-further-information.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
191	api::bd-poll-vote.bd-poll-vote.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
198	api::bd-type.bd-type.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
124	api::bd-road-map.bd-road-map.find	2026-05-11 07:02:22.273	2026-05-11 07:02:22.273	\N	\N
220	api::migration.migration.migrateLinkProposalToProposalContent	2026-05-12 10:43:23.633	2026-05-12 10:43:23.633	\N	\N
142	api::proposal-hard-fork-content.proposal-hard-fork-content.find	2026-05-11 07:02:22.282	2026-05-11 07:02:22.282	\N	\N
98	api::bd-poll-vote.bd-poll-vote.find	2026-05-11 07:02:22.261	2026-05-11 07:02:22.261	\N	\N
107	api::bd-proposal-detail.bd-proposal-detail.findOne	2026-05-11 07:02:22.265	2026-05-11 07:02:22.265	\N	\N
116	api::bd-psapb.bd-psapb.find	2026-05-11 07:02:22.27	2026-05-11 07:02:22.27	\N	\N
187	api::bd-further-information.bd-further-information.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
192	api::bd-poll-vote.bd-poll-vote.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
143	api::proposal-hard-fork-content.proposal-hard-fork-content.findOne	2026-05-11 07:02:22.282	2026-05-11 07:02:22.282	\N	\N
199	api::comments-report.comments-report.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
221	api::migration.migration.migrateCountries	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
224	api::migration.migration.migrateRoadMap	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
227	api::migration.migration.migrateSubmissions	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
230	api::migration.migration.migrateAmounts	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
194	api::bd-proposal-ownership.bd-proposal-ownership.find	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
222	api::migration.migration.migrateCurrencies	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
225	api::migration.migration.migrateBdTypes	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
126	api::bd-road-map.bd-road-map.findOne	2026-05-11 07:02:22.274	2026-05-11 07:02:22.274	\N	\N
228	api::migration.migration.migrateBDProposalsMasterId	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
231	api::migration.migration.migrateLinkProposalToProposalContent	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
160	api::report.report.generateSnapShootReport	2026-05-11 07:02:22.291	2026-05-11 07:02:22.291	\N	\N
201	api::bd-proposal-ownership.bd-proposal-ownership.findOne	2026-05-12 10:08:35.488	2026-05-12 10:08:35.488	\N	\N
118	api::bd-psapb.bd-psapb.findOne	2026-05-11 07:02:22.271	2026-05-11 07:02:22.271	\N	\N
136	api::comments-report.comments-report.findOne	2026-05-11 07:02:22.279	2026-05-11 07:02:22.279	\N	\N
155	api::proxy.proxy.forward	2026-05-11 07:02:22.288	2026-05-11 07:02:22.288	\N	\N
223	api::migration.migration.migrateContractTypes	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
226	api::migration.migration.migrateBdIntersectCommittees	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
229	api::migration.migration.migrateCommentsAndPollMasterId	2026-05-12 11:02:27.35	2026-05-12 11:02:27.35	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	6	2	2
7	8	2	2
8	7	2	2
9	9	2	2
10	10	1	2
11	11	2	3
12	12	1	2
13	13	1	2
14	14	2	3
15	17	1	2
16	15	2	3
17	19	1	3
18	18	1	3
19	21	1	3
20	22	1	3
21	23	1	3
22	24	1	3
23	16	2	4
24	20	1	3
25	25	2	4
26	26	1	4
27	27	1	4
28	28	2	5
29	29	1	4
30	30	1	4
31	31	1	4
32	32	1	5
33	33	2	5
34	36	1	5
35	35	1	5
36	38	1	6
37	39	1	6
38	40	1	6
39	41	1	6
40	42	2	6
41	37	1	5
42	34	1	6
43	44	1	7
44	43	2	7
45	45	1	8
164	164	1	29
47	47	2	8
178	178	1	32
187	186	1	34
50	51	2	8
196	196	1	36
208	207	1	39
218	218	1	41
227	225	2	28
55	58	1	10
56	59	2	9
60	63	2	9
66	68	2	10
67	57	2	10
70	70	2	11
74	76	2	11
84	86	2	12
87	88	2	13
89	82	2	13
90	92	2	13
92	89	2	13
94	94	2	14
97	98	2	14
100	102	2	14
104	104	2	15
106	107	1	19
109	110	2	15
115	116	2	16
120	119	2	16
123	124	2	17
125	126	2	17
127	129	2	17
129	118	2	17
130	131	2	18
131	132	2	18
137	136	1	24
140	140	2	19
142	142	2	19
143	143	1	25
146	148	2	20
150	151	2	20
153	156	1	27
155	157	1	27
165	165	1	29
166	166	1	30
179	181	1	32
192	192	1	35
211	211	1	40
219	216	1	42
228	228	2	28
159	160	2	21
169	169	2	23
171	170	2	24
173	173	2	25
180	179	1	32
195	193	1	35
212	213	1	40
220	219	1	42
229	227	2	29
160	155	1	28
170	171	2	24
172	172	2	25
175	177	1	32
181	175	1	33
184	185	1	33
190	190	1	34
193	194	1	35
199	200	1	36
203	203	1	37
204	204	1	38
213	212	1	40
221	221	2	27
225	229	2	28
230	226	2	29
174	176	1	32
182	183	1	33
183	184	1	33
189	189	1	34
191	191	1	35
198	199	1	36
200	201	1	36
214	214	1	40
222	222	2	27
226	231	2	28
231	230	2	29
176	174	1	32
185	182	1	33
186	187	1	34
194	195	1	35
201	198	1	36
202	202	1	37
206	206	2	26
215	215	1	40
223	223	2	27
232	232	1	43
163	163	2	22
177	180	1	32
188	188	1	34
197	197	1	36
205	205	2	26
207	208	1	39
210	210	1	40
216	220	1	41
217	217	1	41
224	224	2	28
233	233	1	44
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	2026-04-01 09:59:43.356	2026-05-12 11:02:27.345	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	2026-04-01 09:59:43.353	2026-05-19 03:50:37.8	\N	\N
\.


--
-- Data for Name: wallet_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.wallet_types (id, wallet_name, wallet_image, wallet_active, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 401, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 401, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: auth_challenges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_challenges_id_seq', 776, true);


--
-- Name: bd_contact_informations_be_country_of_res_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_contact_informations_be_country_of_res_links_id_seq', 1, false);


--
-- Name: bd_contact_informations_be_nationality_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_contact_informations_be_nationality_links_id_seq', 1, false);


--
-- Name: bd_contact_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_contact_informations_id_seq', 1, false);


--
-- Name: bd_contract_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_contract_types_id_seq', 6, true);


--
-- Name: bd_costings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_costings_id_seq', 18, true);


--
-- Name: bd_costings_preferred_currency_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_costings_preferred_currency_links_id_seq', 18, true);


--
-- Name: bd_currency_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_currency_lists_id_seq', 149, true);


--
-- Name: bd_drafts_creator_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_drafts_creator_links_id_seq', 11, true);


--
-- Name: bd_drafts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_drafts_id_seq', 11, true);


--
-- Name: bd_further_informations_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_further_informations_components_id_seq', 53, true);


--
-- Name: bd_further_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_further_informations_id_seq', 18, true);


--
-- Name: bd_intersect_committees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_intersect_committees_id_seq', 9, true);


--
-- Name: bd_poll_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_poll_votes_id_seq', 1, false);


--
-- Name: bd_polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_polls_id_seq', 18, true);


--
-- Name: bd_proposal_details_contract_type_name_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_proposal_details_contract_type_name_links_id_seq', 18, true);


--
-- Name: bd_proposal_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_proposal_details_id_seq', 18, true);


--
-- Name: bd_proposal_ownerships_be_country_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_proposal_ownerships_be_country_links_id_seq', 5, true);


--
-- Name: bd_proposal_ownerships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_proposal_ownerships_id_seq', 18, true);


--
-- Name: bd_psapbs_committee_name_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_psapbs_committee_name_links_id_seq', 18, true);


--
-- Name: bd_psapbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_psapbs_id_seq', 18, true);


--
-- Name: bd_psapbs_roadmap_name_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_psapbs_roadmap_name_links_id_seq', 18, true);


--
-- Name: bd_psapbs_type_name_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_psapbs_type_name_links_id_seq', 18, true);


--
-- Name: bd_road_maps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_road_maps_id_seq', 11, true);


--
-- Name: bd_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bd_types_id_seq', 5, true);


--
-- Name: bds_bd_contact_information_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_contact_information_links_id_seq', 1, false);


--
-- Name: bds_bd_costing_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_costing_links_id_seq', 18, true);


--
-- Name: bds_bd_further_information_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_further_information_links_id_seq', 18, true);


--
-- Name: bds_bd_proposal_detail_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_proposal_detail_links_id_seq', 18, true);


--
-- Name: bds_bd_proposal_ownership_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_proposal_ownership_links_id_seq', 18, true);


--
-- Name: bds_bd_psapb_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_bd_psapb_links_id_seq', 18, true);


--
-- Name: bds_creator_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_creator_links_id_seq', 18, true);


--
-- Name: bds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_id_seq', 18, true);


--
-- Name: bds_old_ver_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bds_old_ver_links_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_id_seq', 53, true);


--
-- Name: comments_reports_comment_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_reports_comment_links_id_seq', 1, false);


--
-- Name: comments_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_reports_id_seq', 1, false);


--
-- Name: comments_reports_moderator_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_reports_moderator_links_id_seq', 1, false);


--
-- Name: comments_reports_reporter_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comments_reports_reporter_links_id_seq', 1, false);


--
-- Name: components_bd_bd_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_bd_bd_links_id_seq', 53, true);


--
-- Name: components_proposal_committee_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_proposal_committee_members_id_seq', 1, false);


--
-- Name: components_proposal_proposal_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_proposal_proposal_links_id_seq', 89, true);


--
-- Name: components_proposal_proposal_withdrawals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_proposal_proposal_withdrawals_id_seq', 98, true);


--
-- Name: country_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.country_lists_id_seq', 252, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: governance_action_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.governance_action_types_id_seq', 2, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: poll_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.poll_votes_id_seq', 4, true);


--
-- Name: polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.polls_id_seq', 11, true);


--
-- Name: proposal_constitution_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_constitution_contents_id_seq', 25, true);


--
-- Name: proposal_constitution_contents_proposal_content_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_constitution_contents_proposal_content_links_id_seq', 25, true);


--
-- Name: proposal_contents_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_contents_components_id_seq', 187, true);


--
-- Name: proposal_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_contents_id_seq', 99, true);


--
-- Name: proposal_contents_proposal_hard_fork_content_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_contents_proposal_hard_fork_content_links_id_seq', 1, false);


--
-- Name: proposal_contents_proposal_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_contents_proposal_links_id_seq', 98, true);


--
-- Name: proposal_hard_fork_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_hard_fork_contents_id_seq', 1, false);


--
-- Name: proposal_submitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_submitions_id_seq', 1, false);


--
-- Name: proposal_update_committee_contents_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_update_committee_contents_components_id_seq', 1, false);


--
-- Name: proposal_update_committee_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_update_committee_contents_id_seq', 1, false);


--
-- Name: proposal_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposal_votes_id_seq', 4, true);


--
-- Name: proposals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proposals_id_seq', 100, true);


--
-- Name: route_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.route_permissions_id_seq', 154, true);


--
-- Name: route_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.route_permissions_role_links_id_seq', 154, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 84, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 4, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 7, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 233, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 233, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_users_id_seq', 140, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 140, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: wallet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.wallet_types_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: auth_challenges auth_challenges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_challenges
    ADD CONSTRAINT auth_challenges_pkey PRIMARY KEY (id);


--
-- Name: bd_contact_informations_be_country_of_res_links bd_contact_informations_be_country_of_res_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_country_of_res_links
    ADD CONSTRAINT bd_contact_informations_be_country_of_res_links_pkey PRIMARY KEY (id);


--
-- Name: bd_contact_informations_be_country_of_res_links bd_contact_informations_be_country_of_res_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_country_of_res_links
    ADD CONSTRAINT bd_contact_informations_be_country_of_res_links_unique UNIQUE (bd_contact_information_id, country_list_id);


--
-- Name: bd_contact_informations_be_nationality_links bd_contact_informations_be_nationality_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_nationality_links
    ADD CONSTRAINT bd_contact_informations_be_nationality_links_pkey PRIMARY KEY (id);


--
-- Name: bd_contact_informations_be_nationality_links bd_contact_informations_be_nationality_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_nationality_links
    ADD CONSTRAINT bd_contact_informations_be_nationality_links_unique UNIQUE (bd_contact_information_id, country_list_id);


--
-- Name: bd_contact_informations bd_contact_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations
    ADD CONSTRAINT bd_contact_informations_pkey PRIMARY KEY (id);


--
-- Name: bd_contract_types bd_contract_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contract_types
    ADD CONSTRAINT bd_contract_types_pkey PRIMARY KEY (id);


--
-- Name: bd_costings bd_costings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings
    ADD CONSTRAINT bd_costings_pkey PRIMARY KEY (id);


--
-- Name: bd_costings_preferred_currency_links bd_costings_preferred_currency_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings_preferred_currency_links
    ADD CONSTRAINT bd_costings_preferred_currency_links_pkey PRIMARY KEY (id);


--
-- Name: bd_costings_preferred_currency_links bd_costings_preferred_currency_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings_preferred_currency_links
    ADD CONSTRAINT bd_costings_preferred_currency_links_unique UNIQUE (bd_costing_id, bd_currency_list_id);


--
-- Name: bd_currency_lists bd_currency_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_currency_lists
    ADD CONSTRAINT bd_currency_lists_pkey PRIMARY KEY (id);


--
-- Name: bd_drafts_creator_links bd_drafts_creator_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts_creator_links
    ADD CONSTRAINT bd_drafts_creator_links_pkey PRIMARY KEY (id);


--
-- Name: bd_drafts_creator_links bd_drafts_creator_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts_creator_links
    ADD CONSTRAINT bd_drafts_creator_links_unique UNIQUE (bd_draft_id, user_id);


--
-- Name: bd_drafts bd_drafts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts
    ADD CONSTRAINT bd_drafts_pkey PRIMARY KEY (id);


--
-- Name: bd_further_informations_components bd_further_informations_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations_components
    ADD CONSTRAINT bd_further_informations_components_pkey PRIMARY KEY (id);


--
-- Name: bd_further_informations bd_further_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations
    ADD CONSTRAINT bd_further_informations_pkey PRIMARY KEY (id);


--
-- Name: bd_further_informations_components bd_further_informations_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations_components
    ADD CONSTRAINT bd_further_informations_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: bd_intersect_committees bd_intersect_committees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_intersect_committees
    ADD CONSTRAINT bd_intersect_committees_pkey PRIMARY KEY (id);


--
-- Name: bd_poll_votes bd_poll_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_poll_votes
    ADD CONSTRAINT bd_poll_votes_pkey PRIMARY KEY (id);


--
-- Name: bd_polls bd_polls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_polls
    ADD CONSTRAINT bd_polls_pkey PRIMARY KEY (id);


--
-- Name: bd_proposal_details_contract_type_name_links bd_proposal_details_contract_type_name_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details_contract_type_name_links
    ADD CONSTRAINT bd_proposal_details_contract_type_name_links_pkey PRIMARY KEY (id);


--
-- Name: bd_proposal_details_contract_type_name_links bd_proposal_details_contract_type_name_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details_contract_type_name_links
    ADD CONSTRAINT bd_proposal_details_contract_type_name_links_unique UNIQUE (bd_proposal_detail_id, bd_contract_type_id);


--
-- Name: bd_proposal_details bd_proposal_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details
    ADD CONSTRAINT bd_proposal_details_pkey PRIMARY KEY (id);


--
-- Name: bd_proposal_ownerships_be_country_links bd_proposal_ownerships_be_country_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships_be_country_links
    ADD CONSTRAINT bd_proposal_ownerships_be_country_links_pkey PRIMARY KEY (id);


--
-- Name: bd_proposal_ownerships_be_country_links bd_proposal_ownerships_be_country_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships_be_country_links
    ADD CONSTRAINT bd_proposal_ownerships_be_country_links_unique UNIQUE (bd_proposal_ownership_id, country_list_id);


--
-- Name: bd_proposal_ownerships bd_proposal_ownerships_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships
    ADD CONSTRAINT bd_proposal_ownerships_pkey PRIMARY KEY (id);


--
-- Name: bd_psapbs_committee_name_links bd_psapbs_committee_name_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_committee_name_links
    ADD CONSTRAINT bd_psapbs_committee_name_links_pkey PRIMARY KEY (id);


--
-- Name: bd_psapbs_committee_name_links bd_psapbs_committee_name_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_committee_name_links
    ADD CONSTRAINT bd_psapbs_committee_name_links_unique UNIQUE (bd_psapb_id, bd_intersect_committee_id);


--
-- Name: bd_psapbs bd_psapbs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs
    ADD CONSTRAINT bd_psapbs_pkey PRIMARY KEY (id);


--
-- Name: bd_psapbs_roadmap_name_links bd_psapbs_roadmap_name_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_roadmap_name_links
    ADD CONSTRAINT bd_psapbs_roadmap_name_links_pkey PRIMARY KEY (id);


--
-- Name: bd_psapbs_roadmap_name_links bd_psapbs_roadmap_name_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_roadmap_name_links
    ADD CONSTRAINT bd_psapbs_roadmap_name_links_unique UNIQUE (bd_psapb_id, bd_road_map_id);


--
-- Name: bd_psapbs_type_name_links bd_psapbs_type_name_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_type_name_links
    ADD CONSTRAINT bd_psapbs_type_name_links_pkey PRIMARY KEY (id);


--
-- Name: bd_psapbs_type_name_links bd_psapbs_type_name_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_type_name_links
    ADD CONSTRAINT bd_psapbs_type_name_links_unique UNIQUE (bd_psapb_id, bd_type_id);


--
-- Name: bd_road_maps bd_road_maps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_road_maps
    ADD CONSTRAINT bd_road_maps_pkey PRIMARY KEY (id);


--
-- Name: bd_types bd_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_types
    ADD CONSTRAINT bd_types_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_contact_information_links bds_bd_contact_information_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_contact_information_links
    ADD CONSTRAINT bds_bd_contact_information_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_contact_information_links bds_bd_contact_information_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_contact_information_links
    ADD CONSTRAINT bds_bd_contact_information_links_unique UNIQUE (bd_id, bd_contact_information_id);


--
-- Name: bds_bd_costing_links bds_bd_costing_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_costing_links
    ADD CONSTRAINT bds_bd_costing_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_costing_links bds_bd_costing_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_costing_links
    ADD CONSTRAINT bds_bd_costing_links_unique UNIQUE (bd_id, bd_costing_id);


--
-- Name: bds_bd_further_information_links bds_bd_further_information_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_further_information_links
    ADD CONSTRAINT bds_bd_further_information_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_further_information_links bds_bd_further_information_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_further_information_links
    ADD CONSTRAINT bds_bd_further_information_links_unique UNIQUE (bd_id, bd_further_information_id);


--
-- Name: bds_bd_proposal_detail_links bds_bd_proposal_detail_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_detail_links
    ADD CONSTRAINT bds_bd_proposal_detail_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_proposal_detail_links bds_bd_proposal_detail_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_detail_links
    ADD CONSTRAINT bds_bd_proposal_detail_links_unique UNIQUE (bd_id, bd_proposal_detail_id);


--
-- Name: bds_bd_proposal_ownership_links bds_bd_proposal_ownership_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_ownership_links
    ADD CONSTRAINT bds_bd_proposal_ownership_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_proposal_ownership_links bds_bd_proposal_ownership_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_ownership_links
    ADD CONSTRAINT bds_bd_proposal_ownership_links_unique UNIQUE (bd_id, bd_proposal_ownership_id);


--
-- Name: bds_bd_psapb_links bds_bd_psapb_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_psapb_links
    ADD CONSTRAINT bds_bd_psapb_links_pkey PRIMARY KEY (id);


--
-- Name: bds_bd_psapb_links bds_bd_psapb_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_psapb_links
    ADD CONSTRAINT bds_bd_psapb_links_unique UNIQUE (bd_id, bd_psapb_id);


--
-- Name: bds_creator_links bds_creator_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_creator_links
    ADD CONSTRAINT bds_creator_links_pkey PRIMARY KEY (id);


--
-- Name: bds_creator_links bds_creator_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_creator_links
    ADD CONSTRAINT bds_creator_links_unique UNIQUE (bd_id, user_id);


--
-- Name: bds_old_ver_links bds_old_ver_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_old_ver_links
    ADD CONSTRAINT bds_old_ver_links_pkey PRIMARY KEY (id);


--
-- Name: bds_old_ver_links bds_old_ver_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_old_ver_links
    ADD CONSTRAINT bds_old_ver_links_unique UNIQUE (bd_id, inv_bd_id);


--
-- Name: bds bds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds
    ADD CONSTRAINT bds_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: comments_reports_comment_links comments_reports_comment_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_comment_links
    ADD CONSTRAINT comments_reports_comment_links_pkey PRIMARY KEY (id);


--
-- Name: comments_reports_comment_links comments_reports_comment_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_comment_links
    ADD CONSTRAINT comments_reports_comment_links_unique UNIQUE (comments_report_id, comment_id);


--
-- Name: comments_reports_moderator_links comments_reports_moderator_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_moderator_links
    ADD CONSTRAINT comments_reports_moderator_links_pkey PRIMARY KEY (id);


--
-- Name: comments_reports_moderator_links comments_reports_moderator_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_moderator_links
    ADD CONSTRAINT comments_reports_moderator_links_unique UNIQUE (comments_report_id, user_id);


--
-- Name: comments_reports comments_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports
    ADD CONSTRAINT comments_reports_pkey PRIMARY KEY (id);


--
-- Name: comments_reports_reporter_links comments_reports_reporter_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_reporter_links
    ADD CONSTRAINT comments_reports_reporter_links_pkey PRIMARY KEY (id);


--
-- Name: comments_reports_reporter_links comments_reports_reporter_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_reporter_links
    ADD CONSTRAINT comments_reports_reporter_links_unique UNIQUE (comments_report_id, user_id);


--
-- Name: components_bd_bd_links components_bd_bd_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_bd_bd_links
    ADD CONSTRAINT components_bd_bd_links_pkey PRIMARY KEY (id);


--
-- Name: components_proposal_committee_members components_proposal_committee_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_committee_members
    ADD CONSTRAINT components_proposal_committee_members_pkey PRIMARY KEY (id);


--
-- Name: components_proposal_proposal_links components_proposal_proposal_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_proposal_links
    ADD CONSTRAINT components_proposal_proposal_links_pkey PRIMARY KEY (id);


--
-- Name: components_proposal_proposal_withdrawals components_proposal_proposal_withdrawals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_proposal_proposal_withdrawals
    ADD CONSTRAINT components_proposal_proposal_withdrawals_pkey PRIMARY KEY (id);


--
-- Name: country_lists country_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.country_lists
    ADD CONSTRAINT country_lists_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: governance_action_types governance_action_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.governance_action_types
    ADD CONSTRAINT governance_action_types_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: poll_votes poll_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (id);


--
-- Name: polls polls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);


--
-- Name: proposal_constitution_contents proposal_constitution_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents
    ADD CONSTRAINT proposal_constitution_contents_pkey PRIMARY KEY (id);


--
-- Name: proposal_constitution_contents_proposal_content_links proposal_constitution_contents_proposal_content_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents_proposal_content_links
    ADD CONSTRAINT proposal_constitution_contents_proposal_content_links_pkey PRIMARY KEY (id);


--
-- Name: proposal_constitution_contents_proposal_content_links proposal_constitution_contents_proposal_content_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents_proposal_content_links
    ADD CONSTRAINT proposal_constitution_contents_proposal_content_links_unique UNIQUE (proposal_constitution_content_id, proposal_content_id);


--
-- Name: proposal_contents_components proposal_contents_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_components
    ADD CONSTRAINT proposal_contents_components_pkey PRIMARY KEY (id);


--
-- Name: proposal_contents proposal_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents
    ADD CONSTRAINT proposal_contents_pkey PRIMARY KEY (id);


--
-- Name: proposal_contents_proposal_hard_fork_content_links proposal_contents_proposal_hard_fork_content_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_hard_fork_content_links
    ADD CONSTRAINT proposal_contents_proposal_hard_fork_content_links_pkey PRIMARY KEY (id);


--
-- Name: proposal_contents_proposal_hard_fork_content_links proposal_contents_proposal_hard_fork_content_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_hard_fork_content_links
    ADD CONSTRAINT proposal_contents_proposal_hard_fork_content_links_unique UNIQUE (proposal_content_id, proposal_hard_fork_content_id);


--
-- Name: proposal_contents_proposal_links proposal_contents_proposal_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_links
    ADD CONSTRAINT proposal_contents_proposal_links_pkey PRIMARY KEY (id);


--
-- Name: proposal_contents_proposal_links proposal_contents_proposal_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_links
    ADD CONSTRAINT proposal_contents_proposal_links_unique UNIQUE (proposal_content_id, proposal_id);


--
-- Name: proposal_contents_components proposal_contents_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_components
    ADD CONSTRAINT proposal_contents_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: proposal_hard_fork_contents proposal_hard_fork_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_hard_fork_contents
    ADD CONSTRAINT proposal_hard_fork_contents_pkey PRIMARY KEY (id);


--
-- Name: proposal_submitions proposal_submitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_submitions
    ADD CONSTRAINT proposal_submitions_pkey PRIMARY KEY (id);


--
-- Name: proposal_update_committee_contents_components proposal_update_committee_contents_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents_components
    ADD CONSTRAINT proposal_update_committee_contents_components_pkey PRIMARY KEY (id);


--
-- Name: proposal_update_committee_contents proposal_update_committee_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents
    ADD CONSTRAINT proposal_update_committee_contents_pkey PRIMARY KEY (id);


--
-- Name: proposal_update_committee_contents_components proposal_update_committee_contents_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents_components
    ADD CONSTRAINT proposal_update_committee_contents_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: proposal_votes proposal_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_votes
    ADD CONSTRAINT proposal_votes_pkey PRIMARY KEY (id);


--
-- Name: proposals proposals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposals
    ADD CONSTRAINT proposals_pkey PRIMARY KEY (id);


--
-- Name: route_permissions route_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions
    ADD CONSTRAINT route_permissions_pkey PRIMARY KEY (id);


--
-- Name: route_permissions_role_links route_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions_role_links
    ADD CONSTRAINT route_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: route_permissions_role_links route_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions_role_links
    ADD CONSTRAINT route_permissions_role_links_unique UNIQUE (route_permission_id, role_id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: wallet_types wallet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wallet_types
    ADD CONSTRAINT wallet_types_pkey PRIMARY KEY (id);


--
-- Name: temp_migrate_data temp_migrate_data_pkey; Type: CONSTRAINT; Schema: temp; Owner: -
--

ALTER TABLE ONLY temp.temp_migrate_data
    ADD CONSTRAINT temp_migrate_data_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: auth_challenges_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_challenges_created_by_id_fk ON public.auth_challenges USING btree (created_by_id);


--
-- Name: auth_challenges_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_challenges_updated_by_id_fk ON public.auth_challenges USING btree (updated_by_id);


--
-- Name: bd_contact_informations_be_country_of_res_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_be_country_of_res_links_fk ON public.bd_contact_informations_be_country_of_res_links USING btree (bd_contact_information_id);


--
-- Name: bd_contact_informations_be_country_of_res_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_be_country_of_res_links_inv_fk ON public.bd_contact_informations_be_country_of_res_links USING btree (country_list_id);


--
-- Name: bd_contact_informations_be_nationality_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_be_nationality_links_fk ON public.bd_contact_informations_be_nationality_links USING btree (bd_contact_information_id);


--
-- Name: bd_contact_informations_be_nationality_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_be_nationality_links_inv_fk ON public.bd_contact_informations_be_nationality_links USING btree (country_list_id);


--
-- Name: bd_contact_informations_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_created_by_id_fk ON public.bd_contact_informations USING btree (created_by_id);


--
-- Name: bd_contact_informations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contact_informations_updated_by_id_fk ON public.bd_contact_informations USING btree (updated_by_id);


--
-- Name: bd_contract_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contract_types_created_by_id_fk ON public.bd_contract_types USING btree (created_by_id);


--
-- Name: bd_contract_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_contract_types_updated_by_id_fk ON public.bd_contract_types USING btree (updated_by_id);


--
-- Name: bd_costings_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_costings_created_by_id_fk ON public.bd_costings USING btree (created_by_id);


--
-- Name: bd_costings_preferred_currency_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_costings_preferred_currency_links_fk ON public.bd_costings_preferred_currency_links USING btree (bd_costing_id);


--
-- Name: bd_costings_preferred_currency_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_costings_preferred_currency_links_inv_fk ON public.bd_costings_preferred_currency_links USING btree (bd_currency_list_id);


--
-- Name: bd_costings_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_costings_updated_by_id_fk ON public.bd_costings USING btree (updated_by_id);


--
-- Name: bd_currency_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_currency_lists_created_by_id_fk ON public.bd_currency_lists USING btree (created_by_id);


--
-- Name: bd_currency_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_currency_lists_updated_by_id_fk ON public.bd_currency_lists USING btree (updated_by_id);


--
-- Name: bd_drafts_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_drafts_created_by_id_fk ON public.bd_drafts USING btree (created_by_id);


--
-- Name: bd_drafts_creator_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_drafts_creator_links_fk ON public.bd_drafts_creator_links USING btree (bd_draft_id);


--
-- Name: bd_drafts_creator_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_drafts_creator_links_inv_fk ON public.bd_drafts_creator_links USING btree (user_id);


--
-- Name: bd_drafts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_drafts_updated_by_id_fk ON public.bd_drafts USING btree (updated_by_id);


--
-- Name: bd_further_informations_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_further_informations_component_type_index ON public.bd_further_informations_components USING btree (component_type);


--
-- Name: bd_further_informations_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_further_informations_created_by_id_fk ON public.bd_further_informations USING btree (created_by_id);


--
-- Name: bd_further_informations_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_further_informations_entity_fk ON public.bd_further_informations_components USING btree (entity_id);


--
-- Name: bd_further_informations_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_further_informations_field_index ON public.bd_further_informations_components USING btree (field);


--
-- Name: bd_further_informations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_further_informations_updated_by_id_fk ON public.bd_further_informations USING btree (updated_by_id);


--
-- Name: bd_intersect_committees_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_intersect_committees_created_by_id_fk ON public.bd_intersect_committees USING btree (created_by_id);


--
-- Name: bd_intersect_committees_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_intersect_committees_updated_by_id_fk ON public.bd_intersect_committees USING btree (updated_by_id);


--
-- Name: bd_poll_votes_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_poll_votes_created_by_id_fk ON public.bd_poll_votes USING btree (created_by_id);


--
-- Name: bd_poll_votes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_poll_votes_updated_by_id_fk ON public.bd_poll_votes USING btree (updated_by_id);


--
-- Name: bd_polls_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_polls_created_by_id_fk ON public.bd_polls USING btree (created_by_id);


--
-- Name: bd_polls_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_polls_updated_by_id_fk ON public.bd_polls USING btree (updated_by_id);


--
-- Name: bd_proposal_details_contract_type_name_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_details_contract_type_name_links_fk ON public.bd_proposal_details_contract_type_name_links USING btree (bd_proposal_detail_id);


--
-- Name: bd_proposal_details_contract_type_name_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_details_contract_type_name_links_inv_fk ON public.bd_proposal_details_contract_type_name_links USING btree (bd_contract_type_id);


--
-- Name: bd_proposal_details_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_details_created_by_id_fk ON public.bd_proposal_details USING btree (created_by_id);


--
-- Name: bd_proposal_details_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_details_updated_by_id_fk ON public.bd_proposal_details USING btree (updated_by_id);


--
-- Name: bd_proposal_ownerships_be_country_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_ownerships_be_country_links_fk ON public.bd_proposal_ownerships_be_country_links USING btree (bd_proposal_ownership_id);


--
-- Name: bd_proposal_ownerships_be_country_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_ownerships_be_country_links_inv_fk ON public.bd_proposal_ownerships_be_country_links USING btree (country_list_id);


--
-- Name: bd_proposal_ownerships_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_ownerships_created_by_id_fk ON public.bd_proposal_ownerships USING btree (created_by_id);


--
-- Name: bd_proposal_ownerships_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_proposal_ownerships_updated_by_id_fk ON public.bd_proposal_ownerships USING btree (updated_by_id);


--
-- Name: bd_psapbs_committee_name_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_committee_name_links_fk ON public.bd_psapbs_committee_name_links USING btree (bd_psapb_id);


--
-- Name: bd_psapbs_committee_name_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_committee_name_links_inv_fk ON public.bd_psapbs_committee_name_links USING btree (bd_intersect_committee_id);


--
-- Name: bd_psapbs_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_created_by_id_fk ON public.bd_psapbs USING btree (created_by_id);


--
-- Name: bd_psapbs_roadmap_name_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_roadmap_name_links_fk ON public.bd_psapbs_roadmap_name_links USING btree (bd_psapb_id);


--
-- Name: bd_psapbs_roadmap_name_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_roadmap_name_links_inv_fk ON public.bd_psapbs_roadmap_name_links USING btree (bd_road_map_id);


--
-- Name: bd_psapbs_type_name_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_type_name_links_fk ON public.bd_psapbs_type_name_links USING btree (bd_psapb_id);


--
-- Name: bd_psapbs_type_name_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_type_name_links_inv_fk ON public.bd_psapbs_type_name_links USING btree (bd_type_id);


--
-- Name: bd_psapbs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_psapbs_updated_by_id_fk ON public.bd_psapbs USING btree (updated_by_id);


--
-- Name: bd_road_maps_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_road_maps_created_by_id_fk ON public.bd_road_maps USING btree (created_by_id);


--
-- Name: bd_road_maps_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_road_maps_updated_by_id_fk ON public.bd_road_maps USING btree (updated_by_id);


--
-- Name: bd_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_types_created_by_id_fk ON public.bd_types USING btree (created_by_id);


--
-- Name: bd_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bd_types_updated_by_id_fk ON public.bd_types USING btree (updated_by_id);


--
-- Name: bds_bd_contact_information_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_contact_information_links_fk ON public.bds_bd_contact_information_links USING btree (bd_id);


--
-- Name: bds_bd_contact_information_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_contact_information_links_inv_fk ON public.bds_bd_contact_information_links USING btree (bd_contact_information_id);


--
-- Name: bds_bd_costing_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_costing_links_fk ON public.bds_bd_costing_links USING btree (bd_id);


--
-- Name: bds_bd_costing_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_costing_links_inv_fk ON public.bds_bd_costing_links USING btree (bd_costing_id);


--
-- Name: bds_bd_further_information_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_further_information_links_fk ON public.bds_bd_further_information_links USING btree (bd_id);


--
-- Name: bds_bd_further_information_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_further_information_links_inv_fk ON public.bds_bd_further_information_links USING btree (bd_further_information_id);


--
-- Name: bds_bd_proposal_detail_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_proposal_detail_links_fk ON public.bds_bd_proposal_detail_links USING btree (bd_id);


--
-- Name: bds_bd_proposal_detail_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_proposal_detail_links_inv_fk ON public.bds_bd_proposal_detail_links USING btree (bd_proposal_detail_id);


--
-- Name: bds_bd_proposal_ownership_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_proposal_ownership_links_fk ON public.bds_bd_proposal_ownership_links USING btree (bd_id);


--
-- Name: bds_bd_proposal_ownership_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_proposal_ownership_links_inv_fk ON public.bds_bd_proposal_ownership_links USING btree (bd_proposal_ownership_id);


--
-- Name: bds_bd_psapb_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_psapb_links_fk ON public.bds_bd_psapb_links USING btree (bd_id);


--
-- Name: bds_bd_psapb_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_bd_psapb_links_inv_fk ON public.bds_bd_psapb_links USING btree (bd_psapb_id);


--
-- Name: bds_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_created_by_id_fk ON public.bds USING btree (created_by_id);


--
-- Name: bds_creator_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_creator_links_fk ON public.bds_creator_links USING btree (bd_id);


--
-- Name: bds_creator_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_creator_links_inv_fk ON public.bds_creator_links USING btree (user_id);


--
-- Name: bds_old_ver_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_old_ver_links_fk ON public.bds_old_ver_links USING btree (bd_id);


--
-- Name: bds_old_ver_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_old_ver_links_inv_fk ON public.bds_old_ver_links USING btree (inv_bd_id);


--
-- Name: bds_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX bds_updated_by_id_fk ON public.bds USING btree (updated_by_id);


--
-- Name: comments_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_created_by_id_fk ON public.comments USING btree (created_by_id);


--
-- Name: comments_reports_comment_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_comment_links_fk ON public.comments_reports_comment_links USING btree (comments_report_id);


--
-- Name: comments_reports_comment_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_comment_links_inv_fk ON public.comments_reports_comment_links USING btree (comment_id);


--
-- Name: comments_reports_comment_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_comment_links_order_inv_fk ON public.comments_reports_comment_links USING btree (comments_report_order);


--
-- Name: comments_reports_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_created_by_id_fk ON public.comments_reports USING btree (created_by_id);


--
-- Name: comments_reports_moderator_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_moderator_links_fk ON public.comments_reports_moderator_links USING btree (comments_report_id);


--
-- Name: comments_reports_moderator_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_moderator_links_inv_fk ON public.comments_reports_moderator_links USING btree (user_id);


--
-- Name: comments_reports_moderator_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_moderator_links_order_inv_fk ON public.comments_reports_moderator_links USING btree (comments_report_order);


--
-- Name: comments_reports_reporter_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_reporter_links_fk ON public.comments_reports_reporter_links USING btree (comments_report_id);


--
-- Name: comments_reports_reporter_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_reporter_links_inv_fk ON public.comments_reports_reporter_links USING btree (user_id);


--
-- Name: comments_reports_reporter_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_reporter_links_order_inv_fk ON public.comments_reports_reporter_links USING btree (comments_report_order);


--
-- Name: comments_reports_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_reports_updated_by_id_fk ON public.comments_reports USING btree (updated_by_id);


--
-- Name: comments_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comments_updated_by_id_fk ON public.comments USING btree (updated_by_id);


--
-- Name: country_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX country_lists_created_by_id_fk ON public.country_lists USING btree (created_by_id);


--
-- Name: country_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX country_lists_updated_by_id_fk ON public.country_lists USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: governance_action_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX governance_action_types_created_by_id_fk ON public.governance_action_types USING btree (created_by_id);


--
-- Name: governance_action_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX governance_action_types_updated_by_id_fk ON public.governance_action_types USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: poll_votes_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX poll_votes_created_by_id_fk ON public.poll_votes USING btree (created_by_id);


--
-- Name: poll_votes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX poll_votes_updated_by_id_fk ON public.poll_votes USING btree (updated_by_id);


--
-- Name: polls_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX polls_created_by_id_fk ON public.polls USING btree (created_by_id);


--
-- Name: polls_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX polls_updated_by_id_fk ON public.polls USING btree (updated_by_id);


--
-- Name: proposal_constitution_contents_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_constitution_contents_created_by_id_fk ON public.proposal_constitution_contents USING btree (created_by_id);


--
-- Name: proposal_constitution_contents_proposal_content_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_constitution_contents_proposal_content_links_fk ON public.proposal_constitution_contents_proposal_content_links USING btree (proposal_constitution_content_id);


--
-- Name: proposal_constitution_contents_proposal_content_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_constitution_contents_proposal_content_links_inv_fk ON public.proposal_constitution_contents_proposal_content_links USING btree (proposal_content_id);


--
-- Name: proposal_constitution_contents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_constitution_contents_updated_by_id_fk ON public.proposal_constitution_contents USING btree (updated_by_id);


--
-- Name: proposal_contents_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_component_type_index ON public.proposal_contents_components USING btree (component_type);


--
-- Name: proposal_contents_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_created_by_id_fk ON public.proposal_contents USING btree (created_by_id);


--
-- Name: proposal_contents_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_entity_fk ON public.proposal_contents_components USING btree (entity_id);


--
-- Name: proposal_contents_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_field_index ON public.proposal_contents_components USING btree (field);


--
-- Name: proposal_contents_proposal_hard_fork_content_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_proposal_hard_fork_content_links_fk ON public.proposal_contents_proposal_hard_fork_content_links USING btree (proposal_content_id);


--
-- Name: proposal_contents_proposal_hard_fork_content_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_proposal_hard_fork_content_links_inv_fk ON public.proposal_contents_proposal_hard_fork_content_links USING btree (proposal_hard_fork_content_id);


--
-- Name: proposal_contents_proposal_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_proposal_links_fk ON public.proposal_contents_proposal_links USING btree (proposal_content_id);


--
-- Name: proposal_contents_proposal_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_proposal_links_inv_fk ON public.proposal_contents_proposal_links USING btree (proposal_id);


--
-- Name: proposal_contents_proposal_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_proposal_links_order_inv_fk ON public.proposal_contents_proposal_links USING btree (proposal_content_order);


--
-- Name: proposal_contents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_contents_updated_by_id_fk ON public.proposal_contents USING btree (updated_by_id);


--
-- Name: proposal_hard_fork_contents_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_hard_fork_contents_created_by_id_fk ON public.proposal_hard_fork_contents USING btree (created_by_id);


--
-- Name: proposal_hard_fork_contents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_hard_fork_contents_updated_by_id_fk ON public.proposal_hard_fork_contents USING btree (updated_by_id);


--
-- Name: proposal_submitions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_submitions_created_by_id_fk ON public.proposal_submitions USING btree (created_by_id);


--
-- Name: proposal_submitions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_submitions_updated_by_id_fk ON public.proposal_submitions USING btree (updated_by_id);


--
-- Name: proposal_update_committee_contents_component_type_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_update_committee_contents_component_type_index ON public.proposal_update_committee_contents_components USING btree (component_type);


--
-- Name: proposal_update_committee_contents_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_update_committee_contents_created_by_id_fk ON public.proposal_update_committee_contents USING btree (created_by_id);


--
-- Name: proposal_update_committee_contents_entity_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_update_committee_contents_entity_fk ON public.proposal_update_committee_contents_components USING btree (entity_id);


--
-- Name: proposal_update_committee_contents_field_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_update_committee_contents_field_index ON public.proposal_update_committee_contents_components USING btree (field);


--
-- Name: proposal_update_committee_contents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_update_committee_contents_updated_by_id_fk ON public.proposal_update_committee_contents USING btree (updated_by_id);


--
-- Name: proposal_votes_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_votes_created_by_id_fk ON public.proposal_votes USING btree (created_by_id);


--
-- Name: proposal_votes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposal_votes_updated_by_id_fk ON public.proposal_votes USING btree (updated_by_id);


--
-- Name: proposals_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposals_created_by_id_fk ON public.proposals USING btree (created_by_id);


--
-- Name: proposals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proposals_updated_by_id_fk ON public.proposals USING btree (updated_by_id);


--
-- Name: route_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX route_permissions_created_by_id_fk ON public.route_permissions USING btree (created_by_id);


--
-- Name: route_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX route_permissions_role_links_fk ON public.route_permissions_role_links USING btree (route_permission_id);


--
-- Name: route_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX route_permissions_role_links_inv_fk ON public.route_permissions_role_links USING btree (role_id);


--
-- Name: route_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX route_permissions_updated_by_id_fk ON public.route_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: wallet_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wallet_types_created_by_id_fk ON public.wallet_types USING btree (created_by_id);


--
-- Name: wallet_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX wallet_types_updated_by_id_fk ON public.wallet_types USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: auth_challenges auth_challenges_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_challenges
    ADD CONSTRAINT auth_challenges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: auth_challenges auth_challenges_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_challenges
    ADD CONSTRAINT auth_challenges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_contact_informations_be_country_of_res_links bd_contact_informations_be_country_of_res_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_country_of_res_links
    ADD CONSTRAINT bd_contact_informations_be_country_of_res_links_fk FOREIGN KEY (bd_contact_information_id) REFERENCES public.bd_contact_informations(id) ON DELETE CASCADE;


--
-- Name: bd_contact_informations_be_country_of_res_links bd_contact_informations_be_country_of_res_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_country_of_res_links
    ADD CONSTRAINT bd_contact_informations_be_country_of_res_links_inv_fk FOREIGN KEY (country_list_id) REFERENCES public.country_lists(id) ON DELETE CASCADE;


--
-- Name: bd_contact_informations_be_nationality_links bd_contact_informations_be_nationality_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_nationality_links
    ADD CONSTRAINT bd_contact_informations_be_nationality_links_fk FOREIGN KEY (bd_contact_information_id) REFERENCES public.bd_contact_informations(id) ON DELETE CASCADE;


--
-- Name: bd_contact_informations_be_nationality_links bd_contact_informations_be_nationality_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations_be_nationality_links
    ADD CONSTRAINT bd_contact_informations_be_nationality_links_inv_fk FOREIGN KEY (country_list_id) REFERENCES public.country_lists(id) ON DELETE CASCADE;


--
-- Name: bd_contact_informations bd_contact_informations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations
    ADD CONSTRAINT bd_contact_informations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_contact_informations bd_contact_informations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contact_informations
    ADD CONSTRAINT bd_contact_informations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_contract_types bd_contract_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contract_types
    ADD CONSTRAINT bd_contract_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_contract_types bd_contract_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_contract_types
    ADD CONSTRAINT bd_contract_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_costings bd_costings_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings
    ADD CONSTRAINT bd_costings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_costings_preferred_currency_links bd_costings_preferred_currency_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings_preferred_currency_links
    ADD CONSTRAINT bd_costings_preferred_currency_links_fk FOREIGN KEY (bd_costing_id) REFERENCES public.bd_costings(id) ON DELETE CASCADE;


--
-- Name: bd_costings_preferred_currency_links bd_costings_preferred_currency_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings_preferred_currency_links
    ADD CONSTRAINT bd_costings_preferred_currency_links_inv_fk FOREIGN KEY (bd_currency_list_id) REFERENCES public.bd_currency_lists(id) ON DELETE CASCADE;


--
-- Name: bd_costings bd_costings_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_costings
    ADD CONSTRAINT bd_costings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_currency_lists bd_currency_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_currency_lists
    ADD CONSTRAINT bd_currency_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_currency_lists bd_currency_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_currency_lists
    ADD CONSTRAINT bd_currency_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_drafts bd_drafts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts
    ADD CONSTRAINT bd_drafts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_drafts_creator_links bd_drafts_creator_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts_creator_links
    ADD CONSTRAINT bd_drafts_creator_links_fk FOREIGN KEY (bd_draft_id) REFERENCES public.bd_drafts(id) ON DELETE CASCADE;


--
-- Name: bd_drafts_creator_links bd_drafts_creator_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts_creator_links
    ADD CONSTRAINT bd_drafts_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: bd_drafts bd_drafts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_drafts
    ADD CONSTRAINT bd_drafts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_further_informations bd_further_informations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations
    ADD CONSTRAINT bd_further_informations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_further_informations_components bd_further_informations_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations_components
    ADD CONSTRAINT bd_further_informations_entity_fk FOREIGN KEY (entity_id) REFERENCES public.bd_further_informations(id) ON DELETE CASCADE;


--
-- Name: bd_further_informations bd_further_informations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_further_informations
    ADD CONSTRAINT bd_further_informations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_intersect_committees bd_intersect_committees_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_intersect_committees
    ADD CONSTRAINT bd_intersect_committees_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_intersect_committees bd_intersect_committees_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_intersect_committees
    ADD CONSTRAINT bd_intersect_committees_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_poll_votes bd_poll_votes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_poll_votes
    ADD CONSTRAINT bd_poll_votes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_poll_votes bd_poll_votes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_poll_votes
    ADD CONSTRAINT bd_poll_votes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_polls bd_polls_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_polls
    ADD CONSTRAINT bd_polls_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_polls bd_polls_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_polls
    ADD CONSTRAINT bd_polls_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_proposal_details_contract_type_name_links bd_proposal_details_contract_type_name_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details_contract_type_name_links
    ADD CONSTRAINT bd_proposal_details_contract_type_name_links_fk FOREIGN KEY (bd_proposal_detail_id) REFERENCES public.bd_proposal_details(id) ON DELETE CASCADE;


--
-- Name: bd_proposal_details_contract_type_name_links bd_proposal_details_contract_type_name_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details_contract_type_name_links
    ADD CONSTRAINT bd_proposal_details_contract_type_name_links_inv_fk FOREIGN KEY (bd_contract_type_id) REFERENCES public.bd_contract_types(id) ON DELETE CASCADE;


--
-- Name: bd_proposal_details bd_proposal_details_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details
    ADD CONSTRAINT bd_proposal_details_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_proposal_details bd_proposal_details_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_details
    ADD CONSTRAINT bd_proposal_details_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_proposal_ownerships_be_country_links bd_proposal_ownerships_be_country_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships_be_country_links
    ADD CONSTRAINT bd_proposal_ownerships_be_country_links_fk FOREIGN KEY (bd_proposal_ownership_id) REFERENCES public.bd_proposal_ownerships(id) ON DELETE CASCADE;


--
-- Name: bd_proposal_ownerships_be_country_links bd_proposal_ownerships_be_country_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships_be_country_links
    ADD CONSTRAINT bd_proposal_ownerships_be_country_links_inv_fk FOREIGN KEY (country_list_id) REFERENCES public.country_lists(id) ON DELETE CASCADE;


--
-- Name: bd_proposal_ownerships bd_proposal_ownerships_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships
    ADD CONSTRAINT bd_proposal_ownerships_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_proposal_ownerships bd_proposal_ownerships_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_proposal_ownerships
    ADD CONSTRAINT bd_proposal_ownerships_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_psapbs_committee_name_links bd_psapbs_committee_name_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_committee_name_links
    ADD CONSTRAINT bd_psapbs_committee_name_links_fk FOREIGN KEY (bd_psapb_id) REFERENCES public.bd_psapbs(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs_committee_name_links bd_psapbs_committee_name_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_committee_name_links
    ADD CONSTRAINT bd_psapbs_committee_name_links_inv_fk FOREIGN KEY (bd_intersect_committee_id) REFERENCES public.bd_intersect_committees(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs bd_psapbs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs
    ADD CONSTRAINT bd_psapbs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_psapbs_roadmap_name_links bd_psapbs_roadmap_name_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_roadmap_name_links
    ADD CONSTRAINT bd_psapbs_roadmap_name_links_fk FOREIGN KEY (bd_psapb_id) REFERENCES public.bd_psapbs(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs_roadmap_name_links bd_psapbs_roadmap_name_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_roadmap_name_links
    ADD CONSTRAINT bd_psapbs_roadmap_name_links_inv_fk FOREIGN KEY (bd_road_map_id) REFERENCES public.bd_road_maps(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs_type_name_links bd_psapbs_type_name_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_type_name_links
    ADD CONSTRAINT bd_psapbs_type_name_links_fk FOREIGN KEY (bd_psapb_id) REFERENCES public.bd_psapbs(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs_type_name_links bd_psapbs_type_name_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs_type_name_links
    ADD CONSTRAINT bd_psapbs_type_name_links_inv_fk FOREIGN KEY (bd_type_id) REFERENCES public.bd_types(id) ON DELETE CASCADE;


--
-- Name: bd_psapbs bd_psapbs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_psapbs
    ADD CONSTRAINT bd_psapbs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_road_maps bd_road_maps_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_road_maps
    ADD CONSTRAINT bd_road_maps_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_road_maps bd_road_maps_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_road_maps
    ADD CONSTRAINT bd_road_maps_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_types bd_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_types
    ADD CONSTRAINT bd_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bd_types bd_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bd_types
    ADD CONSTRAINT bd_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bds_bd_contact_information_links bds_bd_contact_information_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_contact_information_links
    ADD CONSTRAINT bds_bd_contact_information_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_contact_information_links bds_bd_contact_information_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_contact_information_links
    ADD CONSTRAINT bds_bd_contact_information_links_inv_fk FOREIGN KEY (bd_contact_information_id) REFERENCES public.bd_contact_informations(id) ON DELETE CASCADE;


--
-- Name: bds_bd_costing_links bds_bd_costing_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_costing_links
    ADD CONSTRAINT bds_bd_costing_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_costing_links bds_bd_costing_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_costing_links
    ADD CONSTRAINT bds_bd_costing_links_inv_fk FOREIGN KEY (bd_costing_id) REFERENCES public.bd_costings(id) ON DELETE CASCADE;


--
-- Name: bds_bd_further_information_links bds_bd_further_information_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_further_information_links
    ADD CONSTRAINT bds_bd_further_information_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_further_information_links bds_bd_further_information_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_further_information_links
    ADD CONSTRAINT bds_bd_further_information_links_inv_fk FOREIGN KEY (bd_further_information_id) REFERENCES public.bd_further_informations(id) ON DELETE CASCADE;


--
-- Name: bds_bd_proposal_detail_links bds_bd_proposal_detail_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_detail_links
    ADD CONSTRAINT bds_bd_proposal_detail_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_proposal_detail_links bds_bd_proposal_detail_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_detail_links
    ADD CONSTRAINT bds_bd_proposal_detail_links_inv_fk FOREIGN KEY (bd_proposal_detail_id) REFERENCES public.bd_proposal_details(id) ON DELETE CASCADE;


--
-- Name: bds_bd_proposal_ownership_links bds_bd_proposal_ownership_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_ownership_links
    ADD CONSTRAINT bds_bd_proposal_ownership_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_proposal_ownership_links bds_bd_proposal_ownership_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_proposal_ownership_links
    ADD CONSTRAINT bds_bd_proposal_ownership_links_inv_fk FOREIGN KEY (bd_proposal_ownership_id) REFERENCES public.bd_proposal_ownerships(id) ON DELETE CASCADE;


--
-- Name: bds_bd_psapb_links bds_bd_psapb_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_psapb_links
    ADD CONSTRAINT bds_bd_psapb_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_bd_psapb_links bds_bd_psapb_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_bd_psapb_links
    ADD CONSTRAINT bds_bd_psapb_links_inv_fk FOREIGN KEY (bd_psapb_id) REFERENCES public.bd_psapbs(id) ON DELETE CASCADE;


--
-- Name: bds bds_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds
    ADD CONSTRAINT bds_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: bds_creator_links bds_creator_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_creator_links
    ADD CONSTRAINT bds_creator_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_creator_links bds_creator_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_creator_links
    ADD CONSTRAINT bds_creator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: bds_old_ver_links bds_old_ver_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_old_ver_links
    ADD CONSTRAINT bds_old_ver_links_fk FOREIGN KEY (bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds_old_ver_links bds_old_ver_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds_old_ver_links
    ADD CONSTRAINT bds_old_ver_links_inv_fk FOREIGN KEY (inv_bd_id) REFERENCES public.bds(id) ON DELETE CASCADE;


--
-- Name: bds bds_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bds
    ADD CONSTRAINT bds_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments comments_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments_reports_comment_links comments_reports_comment_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_comment_links
    ADD CONSTRAINT comments_reports_comment_links_fk FOREIGN KEY (comments_report_id) REFERENCES public.comments_reports(id) ON DELETE CASCADE;


--
-- Name: comments_reports_comment_links comments_reports_comment_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_comment_links
    ADD CONSTRAINT comments_reports_comment_links_inv_fk FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments_reports comments_reports_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports
    ADD CONSTRAINT comments_reports_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments_reports_moderator_links comments_reports_moderator_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_moderator_links
    ADD CONSTRAINT comments_reports_moderator_links_fk FOREIGN KEY (comments_report_id) REFERENCES public.comments_reports(id) ON DELETE CASCADE;


--
-- Name: comments_reports_moderator_links comments_reports_moderator_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_moderator_links
    ADD CONSTRAINT comments_reports_moderator_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: comments_reports_reporter_links comments_reports_reporter_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_reporter_links
    ADD CONSTRAINT comments_reports_reporter_links_fk FOREIGN KEY (comments_report_id) REFERENCES public.comments_reports(id) ON DELETE CASCADE;


--
-- Name: comments_reports_reporter_links comments_reports_reporter_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports_reporter_links
    ADD CONSTRAINT comments_reports_reporter_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: comments_reports comments_reports_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments_reports
    ADD CONSTRAINT comments_reports_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comments comments_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: country_lists country_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.country_lists
    ADD CONSTRAINT country_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: country_lists country_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.country_lists
    ADD CONSTRAINT country_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: governance_action_types governance_action_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.governance_action_types
    ADD CONSTRAINT governance_action_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: governance_action_types governance_action_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.governance_action_types
    ADD CONSTRAINT governance_action_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: poll_votes poll_votes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: poll_votes poll_votes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: polls polls_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: polls polls_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_constitution_contents proposal_constitution_contents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents
    ADD CONSTRAINT proposal_constitution_contents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_constitution_contents_proposal_content_links proposal_constitution_contents_proposal_content_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents_proposal_content_links
    ADD CONSTRAINT proposal_constitution_contents_proposal_content_links_fk FOREIGN KEY (proposal_constitution_content_id) REFERENCES public.proposal_constitution_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_constitution_contents_proposal_content_links proposal_constitution_contents_proposal_content_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents_proposal_content_links
    ADD CONSTRAINT proposal_constitution_contents_proposal_content_links_inv_fk FOREIGN KEY (proposal_content_id) REFERENCES public.proposal_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_constitution_contents proposal_constitution_contents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_constitution_contents
    ADD CONSTRAINT proposal_constitution_contents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_contents proposal_contents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents
    ADD CONSTRAINT proposal_contents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_contents_components proposal_contents_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_components
    ADD CONSTRAINT proposal_contents_entity_fk FOREIGN KEY (entity_id) REFERENCES public.proposal_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_contents_proposal_hard_fork_content_links proposal_contents_proposal_hard_fork_content_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_hard_fork_content_links
    ADD CONSTRAINT proposal_contents_proposal_hard_fork_content_links_fk FOREIGN KEY (proposal_content_id) REFERENCES public.proposal_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_contents_proposal_hard_fork_content_links proposal_contents_proposal_hard_fork_content_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_hard_fork_content_links
    ADD CONSTRAINT proposal_contents_proposal_hard_fork_content_links_inv_fk FOREIGN KEY (proposal_hard_fork_content_id) REFERENCES public.proposal_hard_fork_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_contents_proposal_links proposal_contents_proposal_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_links
    ADD CONSTRAINT proposal_contents_proposal_links_fk FOREIGN KEY (proposal_content_id) REFERENCES public.proposal_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_contents_proposal_links proposal_contents_proposal_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents_proposal_links
    ADD CONSTRAINT proposal_contents_proposal_links_inv_fk FOREIGN KEY (proposal_id) REFERENCES public.proposals(id) ON DELETE CASCADE;


--
-- Name: proposal_contents proposal_contents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_contents
    ADD CONSTRAINT proposal_contents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_hard_fork_contents proposal_hard_fork_contents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_hard_fork_contents
    ADD CONSTRAINT proposal_hard_fork_contents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_hard_fork_contents proposal_hard_fork_contents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_hard_fork_contents
    ADD CONSTRAINT proposal_hard_fork_contents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_submitions proposal_submitions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_submitions
    ADD CONSTRAINT proposal_submitions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_submitions proposal_submitions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_submitions
    ADD CONSTRAINT proposal_submitions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_update_committee_contents proposal_update_committee_contents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents
    ADD CONSTRAINT proposal_update_committee_contents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_update_committee_contents_components proposal_update_committee_contents_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents_components
    ADD CONSTRAINT proposal_update_committee_contents_entity_fk FOREIGN KEY (entity_id) REFERENCES public.proposal_update_committee_contents(id) ON DELETE CASCADE;


--
-- Name: proposal_update_committee_contents proposal_update_committee_contents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_update_committee_contents
    ADD CONSTRAINT proposal_update_committee_contents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_votes proposal_votes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_votes
    ADD CONSTRAINT proposal_votes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposal_votes proposal_votes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposal_votes
    ADD CONSTRAINT proposal_votes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposals proposals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposals
    ADD CONSTRAINT proposals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: proposals proposals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proposals
    ADD CONSTRAINT proposals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: route_permissions route_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions
    ADD CONSTRAINT route_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: route_permissions_role_links route_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions_role_links
    ADD CONSTRAINT route_permissions_role_links_fk FOREIGN KEY (route_permission_id) REFERENCES public.route_permissions(id) ON DELETE CASCADE;


--
-- Name: route_permissions_role_links route_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions_role_links
    ADD CONSTRAINT route_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: route_permissions route_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_permissions
    ADD CONSTRAINT route_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: wallet_types wallet_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wallet_types
    ADD CONSTRAINT wallet_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: wallet_types wallet_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wallet_types
    ADD CONSTRAINT wallet_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict olhxwEEV7ufR3dAb1SRDryIRfKXHvfq5kxnRwjl6natnVdrleQsefmjfdrbyRKt

