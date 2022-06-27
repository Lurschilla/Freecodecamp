--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(20),
    bla text
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
    name character varying(20),
    age integer NOT NULL,
    alone boolean NOT NULL,
    planet_id integer
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
    name character varying(20),
    distance_from_earth numeric(10,1) NOT NULL,
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(20),
    age integer NOT NULL,
    color text NOT NULL,
    galaxy_id integer
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
-- Name: stuff; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stuff (
    stuff_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num integer NOT NULL
);


ALTER TABLE public.stuff OWNER TO freecodecamp;

--
-- Name: stuff_stuff_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stuff_stuff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stuff_stuff_id_seq OWNER TO freecodecamp;

--
-- Name: stuff_stuff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stuff_stuff_id_seq OWNED BY public.stuff.stuff_id;


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
-- Name: stuff stuff_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stuff ALTER COLUMN stuff_id SET DEFAULT nextval('public.stuff_stuff_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, true, 'a', NULL);
INSERT INTO public.galaxy VALUES (3, true, true, 'ab', NULL);
INSERT INTO public.galaxy VALUES (4, true, true, 'abc', NULL);
INSERT INTO public.galaxy VALUES (5, true, true, 'abcd', NULL);
INSERT INTO public.galaxy VALUES (6, true, true, 'abcde', NULL);
INSERT INTO public.galaxy VALUES (7, true, true, 'abcdef', NULL);
INSERT INTO public.galaxy VALUES (8, true, true, 'abcdefg', NULL);
INSERT INTO public.galaxy VALUES (9, true, true, 'abcdefgi', NULL);
INSERT INTO public.galaxy VALUES (10, true, true, 'abcdefgiju', NULL);
INSERT INTO public.galaxy VALUES (11, true, true, 'abcdefgij', NULL);
INSERT INTO public.galaxy VALUES (12, true, true, 'abcdefgijh', NULL);
INSERT INTO public.galaxy VALUES (13, true, true, 'abcdefgijhk', NULL);
INSERT INTO public.galaxy VALUES (14, true, true, 'abcdefgijhkl', NULL);
INSERT INTO public.galaxy VALUES (15, true, true, 'abcdefgijhklm', NULL);
INSERT INTO public.galaxy VALUES (16, true, true, 'abcdefgijhklmn', NULL);
INSERT INTO public.galaxy VALUES (17, true, true, 'abcdefgijhklmno', NULL);
INSERT INTO public.galaxy VALUES (18, true, true, 'abcdefgijhklmnop', NULL);
INSERT INTO public.galaxy VALUES (19, true, true, 'abcdefgijhklmnopq', NULL);
INSERT INTO public.galaxy VALUES (20, true, true, 'abcdefgijhklmnopqr', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 234, false, 4);
INSERT INTO public.moon VALUES (2, 'ta', 234, false, 4);
INSERT INTO public.moon VALUES (3, 'erta', 234, false, 4);
INSERT INTO public.moon VALUES (4, 'ertta', 234, false, 4);
INSERT INTO public.moon VALUES (5, 'eretta', 234, false, 4);
INSERT INTO public.moon VALUES (6, 'eret4ta', 234, false, 4);
INSERT INTO public.moon VALUES (7, 'eret34ta', 234, false, 4);
INSERT INTO public.moon VALUES (8, 'ere6t34ta', 234, false, 4);
INSERT INTO public.moon VALUES (9, 'e8re6t34ta', 234, false, 4);
INSERT INTO public.moon VALUES (10, 'e8r9e6t34ta', 234, false, 4);
INSERT INTO public.moon VALUES (11, 'e8r9e6t324ta', 234, false, 4);
INSERT INTO public.moon VALUES (12, 'e8r9esdf6t324ta', 234, false, 4);
INSERT INTO public.moon VALUES (13, 'e84r9esdf6t324ta', 234, false, 4);
INSERT INTO public.moon VALUES (14, 'e84r9esdf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (15, 'e84r9edf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (16, 'e849edf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (17, 'e84a9edf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (18, 'e84a9edgf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (19, 'e84a9ed5gf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (20, 'e84a89ed5gf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (21, 'e84a89efd5gf24ta', 234, false, 4);
INSERT INTO public.moon VALUES (22, 'e84a89efd524ta', 234, false, 4);
INSERT INTO public.moon VALUES (23, 'e849efd524ta', 234, false, 4);
INSERT INTO public.moon VALUES (24, 'e849efd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (25, 'e849esfd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (26, 'e8449esfd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (27, 'e8449esfzd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (28, 'e8449esfazd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (29, 'e84493esfazd54ta', 234, false, 4);
INSERT INTO public.moon VALUES (30, 'e844933esfazd54ta', 234, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 23.0, false, 3);
INSERT INTO public.planet VALUES (2, 'ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (3, 'sdab', 23.0, false, 3);
INSERT INTO public.planet VALUES (4, 'sasdfdab', 23.0, false, 3);
INSERT INTO public.planet VALUES (5, 'sasdf34dab', 23.0, false, 3);
INSERT INTO public.planet VALUES (6, 'sasdf3sd4dab', 23.0, false, 3);
INSERT INTO public.planet VALUES (7, 'sasdf4dab', 23.0, false, 3);
INSERT INTO public.planet VALUES (8, 'saf4dab', 23.0, false, 3);
INSERT INTO public.planet VALUES (9, 'saf4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (10, 'sawertf4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (11, 'sawerthgf4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (12, 'sawerthgfd4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (13, 'sawerfd4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (14, 'sarfd4ab', 23.0, false, 3);
INSERT INTO public.planet VALUES (15, 'sarfd544ab', 23.0, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 123, 'blue', 3);
INSERT INTO public.star VALUES (3, 'ba', 123, 'blue', 3);
INSERT INTO public.star VALUES (4, 'cba', 123, 'blue', 3);
INSERT INTO public.star VALUES (5, 'dcba', 123, 'blue', 3);
INSERT INTO public.star VALUES (6, 'dcdba', 123, 'blue', 3);
INSERT INTO public.star VALUES (7, 'dhfcdba', 123, 'blue', 3);
INSERT INTO public.star VALUES (8, 'dhfchddba', 123, 'blue', 3);


--
-- Data for Name: stuff; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stuff VALUES (1, '32', 23);
INSERT INTO public.stuff VALUES (2, 'aa32', 23);
INSERT INTO public.stuff VALUES (3, 'aa3dafs2', 23);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: stuff_stuff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stuff_stuff_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: stuff stuff_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_name_key UNIQUE (name);


--
-- Name: stuff stuff_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY (stuff_id);


--
-- Name: star galaxy_id_c; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_c FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_c; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_c FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_c; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_c FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

