-
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spheriical boolean
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
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
-- Name: usuario; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usuario (
    user_id integer NOT NULL,
    usernaame character varying(100) NOT NULL,
    password integer
);


ALTER TABLE public.usuario OWNER TO freecodecamp;

--
-- Name: usuario_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usuario_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_user_id_seq OWNER TO freecodecamp;

--
-- Name: usuario_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usuario_user_id_seq OWNED BY public.usuario.user_id;


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
-- Name: usuario user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuario ALTER COLUMN user_id SET DEFAULT nextval('public.usuario_user_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', true);
INSERT INTO public.galaxy VALUES (2, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false);
INSERT INTO public.galaxy VALUES (3, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false);
INSERT INTO public.galaxy VALUES (4, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false);
INSERT INTO public.galaxy VALUES (5, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false);
INSERT INTO public.galaxy VALUES (6, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 5);
INSERT INTO public.moon VALUES (2, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 5);
INSERT INTO public.moon VALUES (3, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 5);
INSERT INTO public.moon VALUES (4, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 5);
INSERT INTO public.moon VALUES (5, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (6, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (7, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (8, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (9, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (10, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.moon VALUES (11, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 7);
INSERT INTO public.moon VALUES (12, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 7);
INSERT INTO public.moon VALUES (13, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 7);
INSERT INTO public.moon VALUES (14, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 3);
INSERT INTO public.moon VALUES (15, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 3);
INSERT INTO public.moon VALUES (16, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);
INSERT INTO public.moon VALUES (17, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);
INSERT INTO public.moon VALUES (18, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);
INSERT INTO public.moon VALUES (19, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);
INSERT INTO public.moon VALUES (20, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);
INSERT INTO public.planet VALUES (2, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 2);
INSERT INTO public.planet VALUES (3, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 3);
INSERT INTO public.planet VALUES (4, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (5, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (6, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (7, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (8, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (9, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (10, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (11, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.planet VALUES (12, 'ximbinha', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 6);
INSERT INTO public.star VALUES (2, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 5);
INSERT INTO public.star VALUES (3, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 4);
INSERT INTO public.star VALUES (4, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 3);
INSERT INTO public.star VALUES (5, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 2);
INSERT INTO public.star VALUES (6, 'xatuba', 123, 10.2, 'asdlfkjasdçflkajsdfçalskdjfasçdlkfj', false, 1);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usuario VALUES (1, 'xatuba', 123456);
INSERT INTO public.usuario VALUES (2, 'bicao', 123456);
INSERT INTO public.usuario VALUES (3, 'terno', 123456);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: usuario_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usuario_user_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: usuario usuario_usernaame_password_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_usernaame_password_key UNIQUE (usernaame, password);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

