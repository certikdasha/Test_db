--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    name text NOT NULL,
    second_name text NOT NULL,
    year_of_birth smallint NOT NULL,
    gender text NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id integer NOT NULL,
    name text NOT NULL,
    "time" time without time zone,
    genre text NOT NULL,
    country text NOT NULL,
    produser text NOT NULL
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_id_seq OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;


--
-- Name: producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producer (
    id integer NOT NULL,
    name text NOT NULL,
    second_name text NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.producer OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_id_seq OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producer_id_seq OWNED BY public.producer.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);


--
-- Name: producer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer ALTER COLUMN id SET DEFAULT nextval('public.producer_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, name, second_name, year_of_birth, gender) FROM stdin;
\.


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film (id, name, "time", genre, country, produser) FROM stdin;
\.


--
-- Data for Name: producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producer (id, name, second_name, date_of_birth) FROM stdin;
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 1, false);


--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_id_seq', 1, false);


--
-- Name: producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producer_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

