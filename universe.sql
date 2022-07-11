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
    name character varying(30),
    galaxy_age integer,
    galaxy_desc text,
    galaxy_size numeric NOT NULL,
    notes text,
    distance_from_earth integer NOT NULL
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
    name character varying(30),
    planet_id integer,
    life_exists boolean,
    distance_from_earth integer NOT NULL,
    size integer NOT NULL
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
    name character varying(30),
    star_id integer,
    decription text,
    size numeric NOT NULL,
    distance_from_earth integer NOT NULL,
    life_exists boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_exploration; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_exploration (
    planet_exploration_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    details text NOT NULL
);


ALTER TABLE public.planet_exploration OWNER TO freecodecamp;

--
-- Name: planet_exploration_planet_exploration_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_exploration_planet_exploration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_exploration_planet_exploration_id_seq OWNER TO freecodecamp;

--
-- Name: planet_exploration_planet_exploration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_exploration_planet_exploration_id_seq OWNED BY public.planet_exploration.planet_exploration_id;


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
    name character varying(30),
    star_desc text,
    star_size numeric NOT NULL,
    star_notes text,
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
-- Name: planet_exploration planet_exploration_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_exploration ALTER COLUMN planet_exploration_id SET DEFAULT nextval('public.planet_exploration_planet_exploration_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'comet_galaxy', 30, 'this galaxy is named after unusal appearence', 500, NULL, 3);
INSERT INTO public.galaxy VALUES (2, 'milky_way', 60, 'home galaxy of earth', 800, NULL, 26);
INSERT INTO public.galaxy VALUES (3, 'andromeda galaxy', 860, 'area of the sky which it appears', 800, NULL, 752);
INSERT INTO public.galaxy VALUES (4, 'cart wheel', 467, 'is a lenticular galaxy', 332, NULL, 217);
INSERT INTO public.galaxy VALUES (5, 'tad pole', 687, 'is a spiral galaxy', 873, NULL, 874);
INSERT INTO public.galaxy VALUES (6, 'black eye', 347, 'is a relatively spiral galaxy', 233, NULL, 654);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'europa', 5, false, 400, 300000);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5, false, 600, 233341);
INSERT INTO public.moon VALUES (4, 'io', 5, false, 300, 65432);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, false, 543, 34265);
INSERT INTO public.moon VALUES (6, 'Pan', 6, false, 232, 300000);
INSERT INTO public.moon VALUES (7, 'Daphnis', 6, false, 456, 4312);
INSERT INTO public.moon VALUES (8, 'Atlas', 6, false, 123, 5533);
INSERT INTO public.moon VALUES (9, 'Prometheus', 6, false, 876, 1234);
INSERT INTO public.moon VALUES (10, 'Pandora', 6, false, 453, 56744);
INSERT INTO public.moon VALUES (11, 'Epimetheus{4}', 6, false, 321, 34453);
INSERT INTO public.moon VALUES (12, 'Janus{4}', 6, false, 986, 34431);
INSERT INTO public.moon VALUES (13, 'Aegaeon', 6, false, 567, 4212);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, false, 345, 3431);
INSERT INTO public.moon VALUES (15, 'Methone', 6, false, 234, 24356);
INSERT INTO public.moon VALUES (16, 'Anthe', 6, false, 125, 62422);
INSERT INTO public.moon VALUES (17, 'Pallene', 6, false, 765, 13445);
INSERT INTO public.moon VALUES (18, 'moon', 3, true, 400, 7187);
INSERT INTO public.moon VALUES (19, 'Ariel ', 7, false, 256, 300000);
INSERT INTO public.moon VALUES (20, 'Belinda ', 7, false, 324, 4312);
INSERT INTO public.moon VALUES (21, 'Bianca ', 7, false, 456, 5533);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 'smallest planet', 1516, 121, true);
INSERT INTO public.planet VALUES (2, 'venus', 1, 'second planet', 3760.4, 236, false);
INSERT INTO public.planet VALUES (3, 'earth', 1, 'astronomical object known to harbor life', 3958.8, 0, true);
INSERT INTO public.planet VALUES (4, 'mars', 1, 'second smallest planet in solar system', 3958.8, 116, false);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, 'largest planet in solar system', 43441, 434, false);
INSERT INTO public.planet VALUES (6, 'saturn', 1, 'second planet in solar system', 36184, 534, false);
INSERT INTO public.planet VALUES (7, 'uranus', 1, 'seventh planet in solar system', 15751, 1565, false);
INSERT INTO public.planet VALUES (8, 'neptune', 1, 'farthest planet in solar system', 15299, 656, false);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, 'dwarf planet', 738.88, 856, false);
INSERT INTO public.planet VALUES (10, 'eris', NULL, 'dwarf planet', 722.65, 356, false);
INSERT INTO public.planet VALUES (11, 'ceres', NULL, 'dwarf planet', 239.91, 456, false);
INSERT INTO public.planet VALUES (12, 'haumea', NULL, 'dwarf planet', 539.91, 656, false);


--
-- Data for Name: planet_exploration; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_exploration VALUES (1, 'mars exploration', 4, 'search for human in mars');
INSERT INTO public.planet_exploration VALUES (2, 'plutoe xploration', 9, 'declared as dwarf');
INSERT INTO public.planet_exploration VALUES (3, 'venus exploration', 2, 'impact sun onvenus ');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'bayer', 'is a stellar designation identified by greek', 60, NULL, 1);
INSERT INTO public.star VALUES (2, 'sun', 'is the star center at solar system', 32.7, NULL, 2);
INSERT INTO public.star VALUES (3, 'vega', 'is the brightest star ', 86, NULL, 2);
INSERT INTO public.star VALUES (4, 'sirius', 'is the brightest starin nightsky ', 75, NULL, 2);
INSERT INTO public.star VALUES (5, 'antares', 'is the brightest star of boters ', 87, NULL, 2);
INSERT INTO public.star VALUES (6, 'rigel', 'is the super gaint stars', 88, NULL, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_exploration_planet_exploration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_exploration_planet_exploration_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: planet_exploration planet_exploration_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_exploration
    ADD CONSTRAINT planet_exploration_name_key UNIQUE (name);


--
-- Name: planet_exploration planet_exploration_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_exploration
    ADD CONSTRAINT planet_exploration_pkey PRIMARY KEY (planet_exploration_id);


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
-- Name: planet_exploration planet_exploration_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_exploration
    ADD CONSTRAINT planet_exploration_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

