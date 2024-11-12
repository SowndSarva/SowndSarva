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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id bigint NOT NULL,
    name character varying(20),
    discovered character varying(20) NOT NULL,
    radius numeric NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    name character varying(20) NOT NULL,
    other_name character varying(20) NOT NULL,
    diameter integer,
    shape text,
    age numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
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
    moon_id bigint NOT NULL,
    name character varying(20) NOT NULL,
    planet_name character varying(20) NOT NULL,
    diameter integer,
    spherical_or_not boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
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
    planet_id bigint NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    color character varying(20) NOT NULL,
    close_to_earth boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
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
    star_id bigint NOT NULL,
    name character varying(20) NOT NULL,
    constellation_name character varying(20) NOT NULL,
    surface_temp integer,
    color character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys', 'Edmond halley', 3.4175);
INSERT INTO public.comet VALUES (2, 'Hayakutake', 'Yuji Hayakute', 84.314);
INSERT INTO public.comet VALUES (3, 'Chiron', 'Charles koval', 0.777);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'M31', 220000, 'Spiral galaxy', 10.01);
INSERT INTO public.galaxy VALUES (2, 'Cigar', 'M82', 37000, 'EDGE-ON Spiral galaxy', 13.3);
INSERT INTO public.galaxy VALUES (3, 'Black-eye', 'M64', 52962, 'Relational isolated galaxy', 13.28);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 'PGC 2248', 130000, 'Lenticular galaxy', 0.44);
INSERT INTO public.galaxy VALUES (5, 'Bodes', 'M81', 90000, 'Ring galaxy', 13.31);
INSERT INTO public.galaxy VALUES (6, 'Milky-way', 'Silver ring', 105700, 'Spiral galaxy', 13.61);
INSERT INTO public.galaxy VALUES (7, 'Comet', 'Sculptor', 600000, 'Spiral galaxy', 3.2);
INSERT INTO public.galaxy VALUES (8, 'Hoags', 'PGC 54559', 120000, 'Ring galaxy', 12.75);
INSERT INTO public.galaxy VALUES (9, 'Somberaro', 'M104', 50000, 'Spiral galaxy', 13.25);
INSERT INTO public.galaxy VALUES (10, 'Whirlpool', 'M51', 76900, 'Spiral galaxy', 8);
INSERT INTO public.galaxy VALUES (11, 'Backward', 'NGC4622', 100000, 'Spiral galaxy', 13.6);
INSERT INTO public.galaxy VALUES (12, 'Tadpole', 'UGC10214', 280000, 'Spiral galaxy', 1);
INSERT INTO public.galaxy VALUES (13, 'Antenne', 'Corvus', 500000, 'Antenne galaxy', 0.4);
INSERT INTO public.galaxy VALUES (14, 'BearPaw', 'Lynx', 13500, 'Spiral galaxy', 13);
INSERT INTO public.galaxy VALUES (15, 'Blinking', 'Serpens', 30000, 'Unbarred-Spiral galaxy', 13.6);
INSERT INTO public.galaxy VALUES (16, 'Butterfly', 'Virgo', 40800, 'Spiral galaxy', 2.2);
INSERT INTO public.galaxy VALUES (17, 'Circinus', 'Circinus', 48430, 'Spiral galaxy', 0.1);
INSERT INTO public.galaxy VALUES (18, 'Cocoon', 'Canas venatci', 53000, 'Spiral galaxy', 0.1);
INSERT INTO public.galaxy VALUES (19, 'Coma pinwheel', 'Coma Berenecies', 170000, 'Spiral galaxy', 13.51);
INSERT INTO public.galaxy VALUES (20, 'Condor', 'Pavo', 52000, 'Spiral galaxy', 5.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Phoebe', 'Saturn', 213, true, 20);
INSERT INTO public.moon VALUES (19, 'Dione', 'Saturn', 1123, false, 19);
INSERT INTO public.moon VALUES (18, 'Phobos', 'Mars', 22, false, 18);
INSERT INTO public.moon VALUES (17, 'Decimos', 'Mars', 12, false, 17);
INSERT INTO public.moon VALUES (16, 'Amalthea', 'Jupiter', 247, false, 16);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Uranus', 1200, true, 15);
INSERT INTO public.moon VALUES (14, 'Oberon', 'Uranus', 1522, false, 14);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturn', 1530, false, 13);
INSERT INTO public.moon VALUES (12, 'Titania', 'Uranus', 1478, false, 12);
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune', 2700, false, 11);
INSERT INTO public.moon VALUES (10, 'Moon', 'Earth', 3475, false, 10);
INSERT INTO public.moon VALUES (9, 'Charon', 'Pluto', 1212, true, 9);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn', 5150, false, 8);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Saturn', 396, false, 7);
INSERT INTO public.moon VALUES (6, 'Io', 'Jupitar', 1821, false, 6);
INSERT INTO public.moon VALUES (5, 'Lapetus', 'Saturn', 1440, false, 5);
INSERT INTO public.moon VALUES (4, 'Europa', 'Jupitar', 3100, true, 4);
INSERT INTO public.moon VALUES (3, 'Callisto', 'Jupitar', 4800, false, 3);
INSERT INTO public.moon VALUES (2, 'Ganymede', 'Jupitar', 5270, true, 2);
INSERT INTO public.moon VALUES (1, 'Enceladus', 'Saturn', 504, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 12104, 'Yellowish-white', true, 2);
INSERT INTO public.planet VALUES (1, 'Mercury', 1550, 'Light-grey', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12756, 'Blue', false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 6780, 'Rusty-red', false, 4);
INSERT INTO public.planet VALUES (5, 'Jupitar', 88846, 'Shadesofred', false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 120536, 'Yellow-brown', false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 51118, 'Blue-green', false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 49528, 'Greenish-blue', false, 8);
INSERT INTO public.planet VALUES (9, 'Ceres', 939, 'Dark-grey', false, 9);
INSERT INTO public.planet VALUES (10, 'Pluto', 2377, 'Reddish-brown', false, 10);
INSERT INTO public.planet VALUES (11, 'Eris', 2326, 'Grayish-white', false, 11);
INSERT INTO public.planet VALUES (12, 'Haumea', 1960, 'Bright-white', false, 12);
INSERT INTO public.planet VALUES (13, '433-Euros', 28542, 'Butterscotch-hue', false, 13);
INSERT INTO public.planet VALUES (14, 'MakeMake', 1430, 'Reddish-brown', false, 14);
INSERT INTO public.planet VALUES (15, 'Kepler-186f', 14908, 'Orange-red', false, 15);
INSERT INTO public.planet VALUES (16, 'Proxima b', 8920, 'Green', false, 16);
INSERT INTO public.planet VALUES (17, 'GJ667', 19623, 'reddish', false, 17);
INSERT INTO public.planet VALUES (18, 'Trappist-le', 11595, 'Cool red', false, 18);
INSERT INTO public.planet VALUES (19, 'WASP-1036', 10600, 'Cobalt blue', false, 19);
INSERT INTO public.planet VALUES (20, 'K2-18b', 28549, 'Blue white', false, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acherner', 'Eridanus', 14000, 'Bright-blue', 1);
INSERT INTO public.star VALUES (2, 'Alnilam', 'Orion', 50000, 'Blue-white', 2);
INSERT INTO public.star VALUES (3, 'Algol', 'Persues', 12500, 'Blue-white', 3);
INSERT INTO public.star VALUES (4, 'Sirius', 'Canis-major', 9940, 'white', 4);
INSERT INTO public.star VALUES (5, 'Arcturus', 'Bootes', 4000, 'Reddish-orange', 5);
INSERT INTO public.star VALUES (6, 'Antares', 'Scorpious', 3399, 'Red', 6);
INSERT INTO public.star VALUES (7, 'Polaris', 'Ursa-minor', 7200, 'Yellowish-white', 7);
INSERT INTO public.star VALUES (8, 'Rigel', 'Orion', 11000, 'Blue-white', 8);
INSERT INTO public.star VALUES (9, 'Vega', 'Lyra', 9602, 'Light-Bluishwhite', 9);
INSERT INTO public.star VALUES (10, 'Adhara', 'Canis-Major', 21900, 'Bright-Bluishwhite', 10);
INSERT INTO public.star VALUES (11, 'Canopus', 'Carina', 7350, 'white', 11);
INSERT INTO public.star VALUES (12, 'Cygnus', 'Swan', 6000, 'yellowish-white', 12);
INSERT INTO public.star VALUES (13, 'Alpha-centari', 'Centaurus', 5790, 'yellow-white', 13);
INSERT INTO public.star VALUES (14, 'Aquila', 'Eagle', 7250, 'red-hue', 14);
INSERT INTO public.star VALUES (15, 'Aldebaran', 'Taurus', 3900, 'red-giant', 15);
INSERT INTO public.star VALUES (16, 'Betelguse', 'Orion', 6000, 'Orange-red', 16);
INSERT INTO public.star VALUES (17, 'Draco', 'Dragon', 3964, 'Orange', 17);
INSERT INTO public.star VALUES (18, 'Pollux', 'Gemini', 4938, 'Light yello-orange', 18);
INSERT INTO public.star VALUES (19, 'Alamar', 'Gemini', 3000, 'Orange-red', 19);
INSERT INTO public.star VALUES (20, 'Ursa major', 'Great bear', 9000, 'Whitish-blue', 20);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: comet comet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_unique UNIQUE (radius);


--
-- Name: galaxy diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT diameter_key UNIQUE (diameter);


--
-- Name: moon diameter_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT diameter_unique UNIQUE (diameter);


--
-- Name: planet diamter_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT diamter_unique UNIQUE (diameter);


--
-- Name: galaxy galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_key PRIMARY KEY (galaxy_id);


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
-- Name: star temp_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT temp_unique UNIQUE (name);


--
-- Name: star fk_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_key FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_key FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_key FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

