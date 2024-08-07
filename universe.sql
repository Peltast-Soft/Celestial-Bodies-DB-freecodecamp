--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    age_in_my integer,
    shape character varying(20),
    constellation character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    orbital_period_in_days integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(20)
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    description text,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_mm integer,
    bh_ratio numeric(2,1),
    gone_nova boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 16, 'helix', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 40, 'helix', NULL);
INSERT INTO public.galaxy VALUES (3, 'NN11', 300, 'irregular', NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 300, 'Cigar', 'Ursa Major');
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 200, 'Ring', 'Sculptor');
INSERT INTO public.galaxy VALUES (6, 'Antennae Galaxy', 500, 'Irregular', 'Corvus');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy', 100, 'Spiral', 'Ursa Major');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 'Made of cheese, I think?', 1, NULL);
INSERT INTO public.moon VALUES (2, 'Io', 'One of many', 2, NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', NULL, 5, 1);
INSERT INTO public.moon VALUES (5, 'Deimos', NULL, 5, 1);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, 2, 3);
INSERT INTO public.moon VALUES (7, 'Mimas', NULL, 8, 1);
INSERT INTO public.moon VALUES (8, 'Rhea', NULL, 8, 5);
INSERT INTO public.moon VALUES (9, 'Ariel', NULL, 7, 2);
INSERT INTO public.moon VALUES (10, 'Umbriel', NULL, 7, 4);
INSERT INTO public.moon VALUES (11, 'Titania', NULL, 7, 9);
INSERT INTO public.moon VALUES (3, 'Titan', 'Has a cool name', 8, NULL);
INSERT INTO public.moon VALUES (12, 'Ganymede', NULL, 2, 7);
INSERT INTO public.moon VALUES (13, 'Callisto', NULL, 2, 16);
INSERT INTO public.moon VALUES (14, 'Himalia', NULL, 2, 250);
INSERT INTO public.moon VALUES (15, 'Elara', NULL, 2, 259);
INSERT INTO public.moon VALUES (16, 'Pasiphae', NULL, 2, 743);
INSERT INTO public.moon VALUES (17, 'Sinope', NULL, 2, 758);
INSERT INTO public.moon VALUES (18, 'Lysithea', NULL, 2, 259);
INSERT INTO public.moon VALUES (19, 'Carme', NULL, 2, 734);
INSERT INTO public.moon VALUES (20, 'Leda', NULL, 2, 240);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Turtle Nebula', 'Purple');
INSERT INTO public.nebula VALUES (2, 'Ring Nebula', 'Orange');
INSERT INTO public.nebula VALUES (3, 'Blinking Planetary', 'Green');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12756, 'Its where we all live.', true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 142984, 'Dark and stormy', false, 1);
INSERT INTO public.planet VALUES (3, 'Neptune', 49528, 'Wet and gassy', true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Tau Ceti E', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'Tau Ceti F', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Tau Ceti G', NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 14, 0.3, false, 1);
INSERT INTO public.star VALUES (2, 'Giant Bug', 3, 1.4, false, 2);
INSERT INTO public.star VALUES (3, 'Black hole (former star?)', 2, 9.3, true, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Luhman 16', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Tau Ceti', NULL, NULL, NULL, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: nebula pk_nebula; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT pk_nebula PRIMARY KEY (nebula_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

