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
    speed integer,
    description text,
    name character varying(50),
    nickname character varying(50) NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_id integer,
    pretty boolean
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
    name character varying(30) NOT NULL,
    ranking_size boolean,
    star_id integer,
    habitable boolean
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
-- Name: sailor_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sailor_moon (
    sailor_moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    good_char boolean,
    attacks integer,
    planet_id integer
);


ALTER TABLE public.sailor_moon OWNER TO freecodecamp;

--
-- Name: sailor_moon_sailor_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sailor_moon_sailor_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sailor_moon_sailor_moon_id_seq OWNER TO freecodecamp;

--
-- Name: sailor_moon_sailor_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sailor_moon_sailor_moon_id_seq OWNED BY public.sailor_moon.sailor_moon_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    is_spherical boolean,
    size numeric,
    galaxy_id integer,
    nickname character varying(50) NOT NULL
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
-- Name: sailor_moon sailor_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sailor_moon ALTER COLUMN sailor_moon_id SET DEFAULT nextval('public.sailor_moon_sailor_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 220000, 'the furthest galaxy from us', 'Andromeda', 'Andre');
INSERT INTO public.galaxy VALUES (2, 50000, 'the spiral galaxy', 'Sombrero', 'Somby');
INSERT INTO public.galaxy VALUES (3, 60000, 'Seyfert 2 active galaxtic nucleus', 'Whirlpool', 'Whirl');
INSERT INTO public.galaxy VALUES (4, 60000, 'beautiful spiral galaxy', 'Triangulum', 'Tripod');
INSERT INTO public.galaxy VALUES (5, 52962, 'dark band of absorbing dust in front of nucleus', 'Black Eye', 'Peas');
INSERT INTO public.galaxy VALUES (6, 105700, 'beautiful spiral galaxy', 'Milky Way', 'Choco');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Veg', false, 4, false);
INSERT INTO public.moon VALUES (2, 'Goku', false, 4, false);
INSERT INTO public.moon VALUES (3, 'Bardok', false, 4, false);
INSERT INTO public.moon VALUES (4, 'Broly', true, 2, true);
INSERT INTO public.moon VALUES (5, 'Goten', false, 4, false);
INSERT INTO public.moon VALUES (6, 'Gohan', true, 2, true);
INSERT INTO public.moon VALUES (7, 'Pikon', false, 1, false);
INSERT INTO public.moon VALUES (8, 'Picolo', true, 6, true);
INSERT INTO public.moon VALUES (9, 'Frieza', false, 8, false);
INSERT INTO public.moon VALUES (10, 'Trunks', true, 7, true);
INSERT INTO public.moon VALUES (11, 'Android 18', false, 8, false);
INSERT INTO public.moon VALUES (12, 'Cell', true, 7, true);
INSERT INTO public.moon VALUES (13, 'Super 17', false, 3, false);
INSERT INTO public.moon VALUES (14, 'Yamcha', true, 9, true);
INSERT INTO public.moon VALUES (15, 'Beerus', false, 3, false);
INSERT INTO public.moon VALUES (16, 'Kid Buu', true, 9, true);
INSERT INTO public.moon VALUES (17, 'Cold', false, 2, false);
INSERT INTO public.moon VALUES (18, 'Gotenks', true, 1, true);
INSERT INTO public.moon VALUES (19, 'Bobidi', false, 2, false);
INSERT INTO public.moon VALUES (20, 'Dabura', true, 1, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 5, false);
INSERT INTO public.planet VALUES (2, 'Venus', true, 4, false);
INSERT INTO public.planet VALUES (3, 'Mars', true, 5, false);
INSERT INTO public.planet VALUES (4, 'Evee', true, 1, false);
INSERT INTO public.planet VALUES (5, 'Bug', true, 3, true);
INSERT INTO public.planet VALUES (6, 'Tug', true, 3, true);
INSERT INTO public.planet VALUES (7, 'Tugbot', true, 2, true);
INSERT INTO public.planet VALUES (8, 'MarsVEE', true, 2, true);
INSERT INTO public.planet VALUES (9, 'Jupiter', true, 6, true);
INSERT INTO public.planet VALUES (10, 'Earth', true, 2, true);
INSERT INTO public.planet VALUES (11, 'EarthPrime', true, 4, false);
INSERT INTO public.planet VALUES (12, 'Saturn', false, 4, false);


--
-- Data for Name: sailor_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sailor_moon VALUES (1, 'Sailor Mars', true, NULL, NULL);
INSERT INTO public.sailor_moon VALUES (2, 'Sailor Venus', true, NULL, NULL);
INSERT INTO public.sailor_moon VALUES (3, 'Sailor Moon', true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A2', true, 34.6, 1, 'AT-D2');
INSERT INTO public.star VALUES (2, 'Spica', true, 4000.35, 2, 'Spikey');
INSERT INTO public.star VALUES (3, 'Brenda', true, 200.12, 3, 'Brend');
INSERT INTO public.star VALUES (4, 'Boppi', true, 302, 4, 'Bop');
INSERT INTO public.star VALUES (5, 'Top', false, 500000, 5, 'Dylan');
INSERT INTO public.star VALUES (6, 'Crater', true, 20.44565, 5, 'Craycray');


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
-- Name: sailor_moon_sailor_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sailor_moon_sailor_moon_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: sailor_moon sailor_moon_char_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sailor_moon
    ADD CONSTRAINT sailor_moon_char_name_key UNIQUE (name);


--
-- Name: sailor_moon sailor_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sailor_moon
    ADD CONSTRAINT sailor_moon_pkey PRIMARY KEY (sailor_moon_id);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: sailor_moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sailor_moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

