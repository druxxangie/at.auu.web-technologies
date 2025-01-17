SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

CREATE DATABASE webtech23rest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';

ALTER DATABASE webtech23rest OWNER TO postgres;

\connect webtech23rest

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE public.products (
    id character varying(50) NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    price INTEGER NOT NULL,
	likes_count INTEGER NOT NULL,
	dislikes_count INTEGER NOT NULL
);

ALTER TABLE public.products OWNER TO postgres;

COPY public.products (id, title, description, price, likes_count, dislikes_count) FROM stdin;
sonyAIV	Sony Alpha IV	New 2021 arrival, hot deal	2890	5	2
sony24105	Sony 24-105mm lens	Best Sony travel zoom	1300	3	8
NiconDX16400	Nicon DX 16-600	Nicon crop travel lens	900	12	1
tamron1724	Tamron 17-24mm	Full frame 17-14mm 2.8 lens	800	0	0
\.

CREATE TABLE public.tags (
    tag character varying(50) NOT NULL
);

ALTER TABLE public.tags OWNER TO postgres;

COPY public.tags (tag) FROM stdin;
sony
alpha
zoom
travel
nicon
lens
tamron
camera
\.

CREATE TABLE public.products_tags (
    id character varying(50) NOT NULL,
    tag character varying(50) NOT NULL
);

ALTER TABLE public.products_tags OWNER TO postgres;

COPY public.products_tags (id, tag) FROM stdin;
sonyAIV	sony
sonyAIV	alpha
sony24105	sony
sony24105	zoom
sony24105	travel
NiconDX16400	nicon
NiconDX16400	travel
NiconDX16400	lens
tamron1724	tamron
tamron1724	lens
\.
