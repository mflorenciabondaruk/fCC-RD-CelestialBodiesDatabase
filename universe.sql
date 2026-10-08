--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: const; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.const (
    const_id integer NOT NULL,
    name character varying(50) NOT NULL,
    i_like_it boolean
);


ALTER TABLE public.const OWNER TO freecodecamp;

--
-- Name: const_const_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.const_const_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.const_const_id_seq OWNER TO freecodecamp;

--
-- Name: const_const_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.const_const_id_seq OWNED BY public.const.const_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_form_type character varying(30),
    galaxy_act_type character varying(30),
    vel_trasl integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    dist_planet integer NOT NULL,
    dist_earth integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    dist integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    dist numeric(7,2) NOT NULL,
    color text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: const const_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.const ALTER COLUMN const_id SET DEFAULT nextval('public.const_const_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: const; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.const VALUES (1, 'Carnero', NULL);
INSERT INTO public.const VALUES (2, 'Orion', true);
INSERT INTO public.const VALUES (3, 'Tres Marías', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Espiral', NULL, 220);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Espiral', NULL, 300);
INSERT INTO public.galaxy VALUES (3, 'Messier 77', 'Espiral', 'Act Seyfert', 1137);
INSERT INTO public.galaxy VALUES (4, 'Triángulo', 'Espiral', NULL, 179);
INSERT INTO public.galaxy VALUES (5, 'IC1101', 'Eliptica', NULL, 23400);
INSERT INTO public.galaxy VALUES (6, 'Remolino', 'Espiral', 'Act Seyfert', 463);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 385, 0);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, 9, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 23, 0);
INSERT INTO public.moon VALUES (4, 'Nayade', 8, 48, 30);
INSERT INTO public.moon VALUES (5, 'Talasa', 8, 50, 30);
INSERT INTO public.moon VALUES (6, 'Despina', 8, 53, 30);
INSERT INTO public.moon VALUES (7, 'Galatea', 8, 62, 30);
INSERT INTO public.moon VALUES (8, 'Larisa', 8, 74, 30);
INSERT INTO public.moon VALUES (9, 'Hipocampo', 8, 104, 30);
INSERT INTO public.moon VALUES (10, 'Proteo', 8, 118, 30);
INSERT INTO public.moon VALUES (11, 'Tritón', 8, 355, 30);
INSERT INTO public.moon VALUES (12, 'Nereida', 8, 5514, 30);
INSERT INTO public.moon VALUES (13, 'Halímede', 8, 16611, 30);
INSERT INTO public.moon VALUES (14, 'Sao', 8, 22228, 30);
INSERT INTO public.moon VALUES (15, 'Laomededia', 8, 23567, 30);
INSERT INTO public.moon VALUES (16, 'Psámate', 8, 48096, 30);
INSERT INTO public.moon VALUES (17, 'Neso', 8, 49285, 30);
INSERT INTO public.moon VALUES (18, 'Europa', 5, 671100, 4);
INSERT INTO public.moon VALUES (19, 'Io', 5, 421800, 4);
INSERT INTO public.moon VALUES (20, 'Metis', 5, 128100, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 3, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 3, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Tierra', 3, 0, true);
INSERT INTO public.planet VALUES (4, 'Mrte', 3, 0, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, 4, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', 3, 9, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', 3, 20, NULL);
INSERT INTO public.planet VALUES (8, 'Neptuno', 3, 30, NULL);
INSERT INTO public.planet VALUES (9, 'a', 5, 39, NULL);
INSERT INTO public.planet VALUES (10, 'b', 5, 39, NULL);
INSERT INTO public.planet VALUES (11, 'c', 5, 39, NULL);
INSERT INTO public.planet VALUES (12, 'd', 5, 39, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 1, 8.60, 'Multicolor');
INSERT INTO public.star VALUES (3, 'Sol', 1, 0.00, 'Amarilla');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 640.00, 'Roja');
INSERT INTO public.star VALUES (5, 'Trappist 1', 1, 39.00, 'Roja');
INSERT INTO public.star VALUES (6, 'Alpheratz', 2, 97.00, 'Blanca');
INSERT INTO public.star VALUES (7, 'Canis Majoris', 1, 3800.00, 'Roja');


--
-- Name: const_const_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.const_const_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: const const_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.const
    ADD CONSTRAINT const_pkey PRIMARY KEY (const_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: const un_con_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.const
    ADD CONSTRAINT un_con_name UNIQUE (name);


--
-- Name: galaxy un_gal_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT un_gal_name UNIQUE (name);


--
-- Name: moon un_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT un_moon_name UNIQUE (name);


--
-- Name: planet un_plan_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT un_plan_name UNIQUE (name);


--
-- Name: star un_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT un_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
