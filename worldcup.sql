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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 4, 2, 441, 442);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 2, 0, 443, 444);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 2, 1, 442, 444);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 1, 0, 441, 443);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 3, 2, 442, 450);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 2, 0, 444, 452);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 2, 1, 443, 454);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 2, 0, 441, 456);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 2, 1, 444, 458);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 1, 0, 452, 460);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 3, 2, 443, 462);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 2, 0, 454, 464);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 2, 1, 442, 466);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 2, 1, 450, 468);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 2, 1, 456, 470);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 4, 3, 441, 472);
INSERT INTO public.games VALUES (113, 2014, 'Final', 1, 0, 473, 472);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 3, 0, 475, 454);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 1, 0, 472, 475);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 7, 1, 473, 454);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 1, 0, 475, 482);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 1, 0, 472, 443);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 2, 1, 454, 458);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 1, 0, 473, 441);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 2, 1, 454, 490);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 2, 0, 458, 456);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 2, 0, 441, 494);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 2, 1, 473, 496);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 2, 1, 475, 464);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 2, 1, 482, 500);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 1, 0, 472, 460);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 2, 1, 443, 504);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 441);
INSERT INTO public.teams VALUES ('Croatia', 442);
INSERT INTO public.teams VALUES ('Belgium', 443);
INSERT INTO public.teams VALUES ('England', 444);
INSERT INTO public.teams VALUES ('Russia', 450);
INSERT INTO public.teams VALUES ('Sweden', 452);
INSERT INTO public.teams VALUES ('Brazil', 454);
INSERT INTO public.teams VALUES ('Uruguay', 456);
INSERT INTO public.teams VALUES ('Colombia', 458);
INSERT INTO public.teams VALUES ('Switzerland', 460);
INSERT INTO public.teams VALUES ('Japan', 462);
INSERT INTO public.teams VALUES ('Mexico', 464);
INSERT INTO public.teams VALUES ('Denmark', 466);
INSERT INTO public.teams VALUES ('Spain', 468);
INSERT INTO public.teams VALUES ('Portugal', 470);
INSERT INTO public.teams VALUES ('Argentina', 472);
INSERT INTO public.teams VALUES ('Germany', 473);
INSERT INTO public.teams VALUES ('Netherlands', 475);
INSERT INTO public.teams VALUES ('Costa Rica', 482);
INSERT INTO public.teams VALUES ('Chile', 490);
INSERT INTO public.teams VALUES ('Nigeria', 494);
INSERT INTO public.teams VALUES ('Algeria', 496);
INSERT INTO public.teams VALUES ('Greece', 500);
INSERT INTO public.teams VALUES ('United States', 504);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 504, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

