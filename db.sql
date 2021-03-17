--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

-- Started on 2021-03-17 13:51:25 -03

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

DROP DATABASE app_lives;
--
-- TOC entry 2971 (class 1262 OID 25047)
-- Name: app_lives; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE app_lives WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';


ALTER DATABASE app_lives OWNER TO postgres;

\connect app_lives

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
-- TOC entry 203 (class 1259 OID 25050)
-- Name: lives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lives (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    canal character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    data date,
    data_registro date
);


ALTER TABLE public.lives OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25048)
-- Name: lives_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lives_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lives_id_seq OWNER TO postgres;

--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 202
-- Name: lives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lives_id_seq OWNED BY public.lives.id;


--
-- TOC entry 2835 (class 2604 OID 25053)
-- Name: lives id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lives ALTER COLUMN id SET DEFAULT nextval('public.lives_id_seq'::regclass);


--
-- TOC entry 2965 (class 0 OID 25050)
-- Dependencies: 203
-- Data for Name: lives; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lives (id, nome, canal, link, data, data_registro) VALUES (1, 'Live Encontro Carnaval 2021 | Harmonia, Parangolé e Léo Santana', 'Encontro de Fenômenos', 'https://www.youtube.com/watch?v=TYm672hKEfk', '2021-02-13', '2021-03-16');


--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 202
-- Name: lives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lives_id_seq', 1, true);


--
-- TOC entry 2837 (class 2606 OID 25058)
-- Name: lives lives_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lives
    ADD CONSTRAINT lives_pkey PRIMARY KEY (id);


-- Completed on 2021-03-17 13:51:26 -03

--
-- PostgreSQL database dump complete
--

