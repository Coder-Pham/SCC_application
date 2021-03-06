--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2020-06-19 16:37:36 +07

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 26192)
-- Name: device_log; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.device_log (
    device_order bigint NOT NULL,
    device_id character varying NOT NULL,
    device_status boolean NOT NULL,
    device_timestamp character varying NOT NULL,
    device_updated_by character varying
);


ALTER TABLE public.device_log OWNER TO user_scc;

--
-- TOC entry 205 (class 1259 OID 26190)
-- Name: air_conditioner_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.device_log ALTER COLUMN device_order ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.air_conditioner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 26188)
-- Name: air_conditioner_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

CREATE SEQUENCE public.air_conditioner_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.air_conditioner_seq OWNER TO user_scc;

--
-- TOC entry 221 (class 1259 OID 26392)
-- Name: building; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.building (
    building_order bigint NOT NULL,
    building_name character varying(255) NOT NULL
);


ALTER TABLE public.building OWNER TO user_scc;

--
-- TOC entry 220 (class 1259 OID 26390)
-- Name: building_building_order_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.building ALTER COLUMN building_order ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.building_building_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 26156)
-- Name: config_threshold_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

CREATE SEQUENCE public.config_threshold_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_threshold_seq OWNER TO user_scc;

--
-- TOC entry 212 (class 1259 OID 26320)
-- Name: constant; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.constant (
    constant_id bigint NOT NULL,
    constant_name character varying NOT NULL,
    constant_value character varying NOT NULL
);


ALTER TABLE public.constant OWNER TO user_scc;

--
-- TOC entry 211 (class 1259 OID 26318)
-- Name: constant_constant_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.constant ALTER COLUMN constant_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.constant_constant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 26302)
-- Name: device; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.device (
    device_floor_name character varying NOT NULL,
    device_room_name character varying NOT NULL,
    device_id character varying NOT NULL,
    device_name character varying NOT NULL,
    device_status boolean NOT NULL,
    device_automation boolean NOT NULL,
    device_additional character varying(255),
    device_updated_by character varying(255),
    device_building_name character varying(255),
    device_ip character varying(255),
    device_port character varying(255),
    device_topic character varying(255),
    device_username character varying(255),
    device_password character varying(255),
    device_pid character varying(255)
);


ALTER TABLE public.device OWNER TO user_scc;

--
-- TOC entry 223 (class 1259 OID 26403)
-- Name: floor; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.floor (
    floor_order bigint NOT NULL,
    floor_building character varying(255) NOT NULL,
    floor_name character varying(255) NOT NULL
);


ALTER TABLE public.floor OWNER TO user_scc;

--
-- TOC entry 222 (class 1259 OID 26401)
-- Name: floor_floor_order_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.floor ALTER COLUMN floor_order ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.floor_floor_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 26349)
-- Name: language; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.language (
    language_id bigint NOT NULL,
    language_name character varying(255) NOT NULL,
    language_code character varying(10) NOT NULL
);


ALTER TABLE public.language OWNER TO user_scc;

--
-- TOC entry 215 (class 1259 OID 26354)
-- Name: language_language_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.language ALTER COLUMN language_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.language_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 26373)
-- Name: permission; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.permission (
    permission_id bigint NOT NULL,
    permission_role character varying(255) NOT NULL,
    permission_report boolean DEFAULT false NOT NULL,
    permission_profile boolean DEFAULT false NOT NULL,
    permission_user_list boolean DEFAULT false NOT NULL,
    permission_create_user boolean DEFAULT false NOT NULL,
    permission_edit_user boolean DEFAULT false NOT NULL,
    permission_system_settings boolean DEFAULT false NOT NULL,
    permission_dashboard_settings boolean DEFAULT false NOT NULL,
    permission_create_role boolean DEFAULT false NOT NULL,
    permission_edit_role boolean DEFAULT false NOT NULL,
    permission_dashboard boolean DEFAULT false NOT NULL,
    permission_settings boolean DEFAULT false NOT NULL,
    permission_tab_permission boolean DEFAULT false NOT NULL,
    permission_create_building_floor_room boolean DEFAULT false NOT NULL,
    permission_edit_building_floor_room boolean DEFAULT false NOT NULL,
    permission_create_device_sensor boolean DEFAULT false NOT NULL,
    permission_edit_device_sensor boolean DEFAULT false NOT NULL
);


ALTER TABLE public.permission OWNER TO user_scc;

--
-- TOC entry 218 (class 1259 OID 26371)
-- Name: permission_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.permission ALTER COLUMN permission_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.permission_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 26443)
-- Name: room; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.room (
    room_order bigint NOT NULL,
    room_building character varying(255) NOT NULL,
    room_floor character varying(255) NOT NULL,
    room_name character varying(255) NOT NULL
);


ALTER TABLE public.room OWNER TO user_scc;

--
-- TOC entry 224 (class 1259 OID 26441)
-- Name: room_room_order_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.room ALTER COLUMN room_order ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.room_room_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 26310)
-- Name: sensor; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.sensor (
    sensor_floor_name character varying(255) NOT NULL,
    sensor_room_name character varying(255) NOT NULL,
    sensor_id character varying(255) NOT NULL,
    sensor_name character varying(255) NOT NULL,
    sensor_building_name character varying(255) NOT NULL,
    sensor_value character varying(255),
    sensor_ip character varying(255) NOT NULL,
    sensor_port character varying(255) NOT NULL,
    sensor_topic character varying(255) NOT NULL,
    sensor_username character varying(255),
    sensor_password character varying(255),
    sensor_pid character varying(255)
);


ALTER TABLE public.sensor OWNER TO user_scc;

--
-- TOC entry 208 (class 1259 OID 26269)
-- Name: sensor_log; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.sensor_log (
    sensor_order bigint NOT NULL,
    sensor_id character varying NOT NULL,
    sensor_temp numeric(5,1) NOT NULL,
    sensor_humid numeric(5,1) NOT NULL,
    sensor_heat_index numeric(5,1) NOT NULL,
    sensor_timestamp character varying NOT NULL
);


ALTER TABLE public.sensor_log OWNER TO user_scc;

--
-- TOC entry 217 (class 1259 OID 26358)
-- Name: settings; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public.settings (
    settings_id bigint NOT NULL,
    settings_name character varying(255) NOT NULL,
    settings_value character varying(255) NOT NULL,
    settings_group character varying(255)
);


ALTER TABLE public.settings OWNER TO user_scc;

--
-- TOC entry 216 (class 1259 OID 26356)
-- Name: settings_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.settings ALTER COLUMN settings_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.settings_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 26267)
-- Name: temp_humid_sensor_id_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

ALTER TABLE public.sensor_log ALTER COLUMN sensor_order ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.temp_humid_sensor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 202 (class 1259 OID 26154)
-- Name: temp_humid_sensor_seq; Type: SEQUENCE; Schema: public; Owner: user_scc
--

CREATE SEQUENCE public.temp_humid_sensor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_humid_sensor_seq OWNER TO user_scc;

--
-- TOC entry 213 (class 1259 OID 26336)
-- Name: user; Type: TABLE; Schema: public; Owner: user_scc
--

CREATE TABLE public."user" (
    user_id character varying(255) NOT NULL,
    user_fullname character varying(255) NOT NULL,
    user_password character varying(255) NOT NULL,
    user_mobile character varying(255) NOT NULL,
    user_email character varying(255) NOT NULL,
    user_address character varying(255),
    user_role character varying(255) NOT NULL,
    user_about character varying(255),
    user_login_attempt smallint DEFAULT 0 NOT NULL,
    user_remember_token character varying(255) NOT NULL,
    user_lang character varying(2) NOT NULL,
    user_avatar character varying(255),
    user_temporary_password character varying(255)
);


ALTER TABLE public."user" OWNER TO user_scc;

--
-- TOC entry 3153 (class 2606 OID 26199)
-- Name: device_log air_conditioner_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.device_log
    ADD CONSTRAINT air_conditioner_pkey PRIMARY KEY (device_order);


--
-- TOC entry 3171 (class 2606 OID 26399)
-- Name: building building_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.building
    ADD CONSTRAINT building_pkey PRIMARY KEY (building_order);


--
-- TOC entry 3161 (class 2606 OID 26327)
-- Name: constant constant_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.constant
    ADD CONSTRAINT constant_pkey PRIMARY KEY (constant_id);


--
-- TOC entry 3157 (class 2606 OID 26309)
-- Name: device device_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_pkey PRIMARY KEY (device_id);


--
-- TOC entry 3173 (class 2606 OID 26410)
-- Name: floor floor_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.floor
    ADD CONSTRAINT floor_pkey PRIMARY KEY (floor_order);


--
-- TOC entry 3165 (class 2606 OID 26353)
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (language_id);


--
-- TOC entry 3169 (class 2606 OID 26386)
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (permission_id);


--
-- TOC entry 3175 (class 2606 OID 26450)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room_order);


--
-- TOC entry 3159 (class 2606 OID 26466)
-- Name: sensor sensor_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.sensor
    ADD CONSTRAINT sensor_pkey PRIMARY KEY (sensor_id);


--
-- TOC entry 3167 (class 2606 OID 26365)
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (settings_id);


--
-- TOC entry 3155 (class 2606 OID 26276)
-- Name: sensor_log temp_humid_sensor_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public.sensor_log
    ADD CONSTRAINT temp_humid_sensor_pkey PRIMARY KEY (sensor_order);


--
-- TOC entry 3163 (class 2606 OID 26346)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: user_scc
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


-- Completed on 2020-06-19 16:37:36 +07

--
-- PostgreSQL database dump complete
--

