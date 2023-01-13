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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer
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
    name character varying(255) NOT NULL,
    description character varying(255),
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer,
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
    name character varying(255) NOT NULL,
    description character varying(255),
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth integer,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Pisces', 'The Milky Way galaxy is where the planet earth is located', true, false, 7000, 'various', NULL, NULL);
INSERT INTO public.constellation VALUES (2, 'Leo', 'Named after the daughter of the kings of Ethiopia', false, false, 7000, 'various', NULL, 300);
INSERT INTO public.constellation VALUES (3, 'Aries', 'Looks like the eye of Sauron in the Lord of the Rings', false, false, 7000, 'various', NULL, 20000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way galaxy is where the planet earth is located', true, false, 7000, 'various', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Named after the daughter of the kings of Ethiopia', false, false, 7000, 'various', NULL, 300);
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 'Looks like the eye of Sauron in the Lord of the Rings', false, false, 7000, 'various', NULL, 20000);
INSERT INTO public.galaxy VALUES (4, 'Backward', 'It seems to rotate in the opposite direction to what it should according to its shape', false, false, 7000, 'various', NULL, 2765467);
INSERT INTO public.galaxy VALUES (5, 'Needle', 'Named because of its thin appearance', false, false, 7000, 'various', NULL, 8567896);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Looks like a sombrero', false, false, 7000, 'various', NULL, 7777775);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Means "month"', false, false, 7000, NULL, NULL, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Home', true, true, 7000, 'major', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 'The smallest planet in the Solar System and the closest to the Sun', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Second planet from the Sun. It is sometimes called Earth''s "sister" or "twin" planet as it is almost as large and has a similar composition.', false, false, 7000, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Named after Greek sky deity Uranus (Caelus), who in Greek mythology is the father of Cronus (Saturn)', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet.', false, false, 7000, 'major', NULL, 1, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Named after the Roman god of the underworld who was able to render himself invisible.', false, false, 7000, 'dwarf', NULL, 1, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Roman goddess of corn and harvests.', false, false, 7000, 'dwarf', NULL, 1, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Hawaiian goddess of childbirth and fertility.', false, false, 7000, 'dwarf', NULL, 1, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 'Greek goddess of discord and strife.', false, false, 7000, 'dwarf', NULL, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star for planet earth''s solar system', false, false, 7000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Polaris', 'The name comes from the Latin phrase stella polaris, “polar star.” Polaris is the closest visible star to the north celestial pole.', false, false, 7000, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Polaris Australis', 'Polaris Australis is Latin for “southern pole star.” Sigma Octantis is the closest visible star to the south celestial pole.', false, false, 7000, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'The name is Latin for the “nearest (star) of Centaurus.” Proxima Centauri is the nearest known star to the solar system.', false, false, 7000, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Sun', 'Star for planet earth''s solar system', false, false, 7000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sun', 'Star for planet earth''s solar system', false, false, 7000, NULL, NULL, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: constellation constellation_constellation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_id_key UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

