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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    area numeric(4,1)
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(40) NOT NULL,
    has_life boolean,
    age numeric,
    description text
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
    name character varying(40) NOT NULL,
    planet_id integer,
    moon_type character varying(20),
    discovery_year integer,
    has_atmosphere boolean
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
    name character varying(20) NOT NULL,
    has_life boolean,
    moons integer,
    discovery_year integer,
    link text,
    planet_type character varying(20)
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
    name character varying(20) NOT NULL,
    star_type character varying(20) NOT NULL,
    temperature character varying(30),
    color character varying(15),
    description character varying(15)
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Placa Africana', 78.0);
INSERT INTO public.earth VALUES (2, 'Placa Antártica', 60.9);
INSERT INTO public.earth VALUES (3, 'Placa Indoaustraliana', 47.2);
INSERT INTO public.earth VALUES (4, 'Placa Euroasiática', 67.8);
INSERT INTO public.earth VALUES (5, 'Placa Norteamericana', 75.9);
INSERT INTO public.earth VALUES (6, 'Placa Sudamericana', 43.6);
INSERT INTO public.earth VALUES (7, 'Placa Pacifica', 103.3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', false, 10.01, 'Devorará a la tierra en 4.000 millones de años');
INSERT INTO public.galaxy VALUES (2, 'Milky way', 'Spiral', true, 13.61, 'Se encuentra el sistema sola y la tierra');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', false, 0.0, 'Descubierta en 1654');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical', false, 13.27, 'A 14 millones de años luz de la tierra');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', false, 0.0, 'Vista en 1773');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Lenticular', false, 0.0, 'Vista en 1781');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Rocosa', 1610, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocosa', 1877, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocosa', 1877, false);
INSERT INTO public.moon VALUES (4, 'Ganimede', 3, 'Helada', 1610, false);
INSERT INTO public.moon VALUES (5, 'Titan', 4, 'Gaseosa', 1655, true);
INSERT INTO public.moon VALUES (6, 'Triton', 6, 'Helada', 1846, true);
INSERT INTO public.moon VALUES (7, 'Io', 3, 'Rocosa', 1610, true);
INSERT INTO public.moon VALUES (8, 'Europa', 3, 'Helada', 1610, true);
INSERT INTO public.moon VALUES (9, 'Callisto', 3, 'Helada', 1610, false);
INSERT INTO public.moon VALUES (10, 'Rhea', 4, 'Rocosa', 1672, false);
INSERT INTO public.moon VALUES (11, 'Iapetus', 4, 'Rocosa', 1671, false);
INSERT INTO public.moon VALUES (12, 'Dione', 4, 'Rocosa', 1684, false);
INSERT INTO public.moon VALUES (13, 'Miranda', 6, 'Helada', 1948, false);
INSERT INTO public.moon VALUES (14, 'Nereid', 6, 'Helada', 1949, false);
INSERT INTO public.moon VALUES (15, 'Charon', 9, 'Rocosa', 1978, false);
INSERT INTO public.moon VALUES (16, 'Oberon', 8, 'Rocosa', 1787, false);
INSERT INTO public.moon VALUES (17, 'Titania', 8, 'Rocosa', 1787, false);
INSERT INTO public.moon VALUES (18, 'Ariel', 8, 'Rocosa', 1851, false);
INSERT INTO public.moon VALUES (19, 'Umbriel', 8, 'Rocosa', 1851, false);
INSERT INTO public.moon VALUES (20, 'Pluto Moon', 9, 'Rocosa', 1978, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1631, 'Wikipedia.org', 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Venus', false, 0, 1761, 'Wikipedia.org', 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 1659, 'Wikipedia.org', 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 79, 1610, 'Wikipedia.org', 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', false, 82, 1610, 'Wikipedia.org', 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', false, 27, 1781, 'Wikipedia.org', 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', false, 14, 1846, 'Wikipedia.org', 'Ice Giant');
INSERT INTO public.planet VALUES (12, 'Eris', false, 1, 2005, 'Wikipedia.org', 'Dwarf Planet');
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 0, 'Wikipedia.org', 'Terrestrial');
INSERT INTO public.planet VALUES (9, 'Pluto', false, 5, 1930, 'Wikipedia.org', 'Dwarf Planet');
INSERT INTO public.planet VALUES (10, 'Makemake', false, 1, 2005, 'Wikipedia.org', 'Dwarf Planet');
INSERT INTO public.planet VALUES (11, 'Haumea', false, 2, 2005, 'Wikipedia.org', 'Dwarf Planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G', '5200-6000k', 'yellow', 'Wikipedia');
INSERT INTO public.star VALUES (2, 'Sirius', 'A', '7500-10000k', 'white', 'Wikipedia');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M', '3700k', 'red', 'Wikipedia');
INSERT INTO public.star VALUES (4, 'Vega', 'A', '7500-10000k', 'white', 'Wikipedia');
INSERT INTO public.star VALUES (5, 'Polaris', 'F', '6000-7500k', 'white-yellow', 'Wikipedia');
INSERT INTO public.star VALUES (6, 'Antares', 'M', '3700k', 'red', 'Wikipedia');


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: earth earth_tectonic_plates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_tectonic_plates_key UNIQUE (name);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

