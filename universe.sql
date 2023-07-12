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
                               name character varying(30) NOT NULL,
                               age_in_millions_of_years integer,
                               disatnce_from_earth numeric,
                               has_life boolean,
                               star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
                             moon_id integer NOT NULL,
                             name character varying(30) NOT NULL,
                             age_in_millions_of_years integer,
                             disatnce_from_earth numeric,
                             has_life boolean,
                             planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
                               planet_id integer NOT NULL,
                               name character varying(30) NOT NULL,
                               age_in_millions_of_years integer,
                               disatnce_from_earth numeric,
                               has_life boolean,
                               closest_star text,
                               star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
                                     solar_system_id integer NOT NULL,
                                     name character varying(30) NOT NULL,
                                     age_in_millions_of_years integer,
                                     disatnce_from_earth numeric,
                                     has_life boolean
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
                             star_id integer NOT NULL,
                             name character varying(30) NOT NULL,
                             age_in_millions_of_years integer,
                             disatnce_from_earth numeric,
                             has_life boolean,
                             in_galaxy text,
                             galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Small magellanic Cloud', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Messier 82', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Black Eye Galaxy', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Ganymede', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Thebe', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Amalthea', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Himalia', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Adrastea', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Ananke', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Themisto', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Callirrhoe', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Carme', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Elara', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Carpo', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Sinope', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Praxidike', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Enceladus', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Kalyke', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Titan', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'CoRoT-7b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Gliese 581', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'HD 209458b', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Proxima Centauri', NULL, NULL, NULL);
INSERT INTO public.solar_system VALUES (2, 'Lalande 21185', NULL, NULL, NULL);
INSERT INTO public.solar_system VALUES (3, 'Lacaille 9352', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Antares', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Altair', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alnilam', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Bellatrix', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Aldebaran', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Deneb', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Sirius', NULL, NULL, NULL, NULL, NULL);


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
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

