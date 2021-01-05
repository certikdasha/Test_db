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

--
-- Name: role; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.role AS ENUM (
    'actor',
    'produser'
);


ALTER TYPE public.role OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.films (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'notitle'::character varying NOT NULL,
    genre_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_seq OWNER TO postgres;

--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    genre character varying(100) DEFAULT 'unknown'::character varying NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_seq OWNER TO postgres;

--
-- Name: genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;


--
-- Name: peop_film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peop_film (
    id integer NOT NULL,
    film_id integer DEFAULT 0 NOT NULL,
    peop_id integer DEFAULT 0 NOT NULL,
    peop_role public.role
);


ALTER TABLE public.peop_film OWNER TO postgres;

--
-- Name: peop_film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.peop_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.peop_film_id_seq OWNER TO postgres;

--
-- Name: peop_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.peop_film_id_seq OWNED BY public.peop_film.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'noname'::character varying NOT NULL
);


ALTER TABLE public.people OWNER TO postgres;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO postgres;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: films id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Name: genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);


--
-- Name: peop_film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peop_film ALTER COLUMN id SET DEFAULT nextval('public.peop_film_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.films (id, title, genre_id) FROM stdin;
1	„аг¦Ў  Ё ­ЁЄ Є®Ј® бҐЄб ?	4
2	†Ґ­йЁ­  ў зса­®¬	6
3	•®а®и® Ўлвм вЁе®­Ґ©	3
4	Ља б ўЁж  Ё зг¤®ўЁйҐ	7
5	ѓ ааЁ Џ®ввҐа Ё дЁ«®б®дбЄЁ© Є ¬Ґ­м	7
6	ѓ ааЁ Џ®ввҐа Ё ’ ©­ п Є®¬­ в 	7
7	‡ўс§¤­лҐ ў®©­л: Џа®Ўг¦¤Ґ­ЁҐ бЁ«л	0
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (id, genre) FROM stdin;
1	Ѓ®ҐўЁЄ
2	„ҐвҐЄвЁў
3	„а ¬ 
4	Љ®¬Ґ¤Ёп
5	’а ЈҐ¤Ёп
6	“¦ бл
7	”н­вҐ§Ё
\.


--
-- Data for Name: peop_film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peop_film (id, film_id, peop_id, peop_role) FROM stdin;
1	1	15	produser
2	2	13	produser
3	3	12	produser
4	4	11	produser
5	5	16	produser
6	6	16	produser
7	7	14	produser
8	1	1	actor
9	1	6	actor
10	1	7	actor
11	2	1	actor
12	2	5	actor
13	3	8	actor
14	3	3	actor
15	4	3	actor
16	5	1	actor
17	5	2	actor
18	5	3	actor
19	6	1	actor
20	6	2	actor
21	6	3	actor
22	5	4	actor
23	6	4	actor
24	7	6	actor
25	7	10	actor
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people (id, name) FROM stdin;
1	„н­ЁҐ« ђн¤Є«Ёдд
2	ђгЇҐав ѓаЁ­в
3	ќ¬¬  “®вб®­
4	Ђ« ­ ђЁЄ¬ ­
5	ЉЁ а ­ • ©­¤б
6	Ђ¤ ¬ „а ©ўҐа
7	‡®Ё Љ § ­
8	‹®Ј ­ ‹Ґа¬ ­
10	„н©§Ё ђЁ¤«Ё
11	ЃЁ«« Љ®­¤®­
12	‘вЁўҐ­ —Ў®бЄЁ
13	„¦Ґ©¬б “®вЄЁ­б
14	„¦. „¦. ЂЎа ¬б
15	Њ ©Є« „ гб
16	ЉаЁб Љ®« ¬Ўгб
\.


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.films_id_seq', 7, true);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_id_seq', 7, true);


--
-- Name: peop_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.peop_film_id_seq', 25, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.people_id_seq', 16, true);


--
-- Name: films films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- Name: peop_film peop_film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peop_film
    ADD CONSTRAINT peop_film_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

