--
-- PostgreSQL database dump
--

\restrict qDdRoAzyc1ZdVZb0CYs8HFgv0yuigfjfgNvUpP9G9HLwpyf52fZ3bAXq8mcoeRt

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

\unrestrict qDdRoAzyc1ZdVZb0CYs8HFgv0yuigfjfgNvUpP9G9HLwpyf52fZ3bAXq8mcoeRt

