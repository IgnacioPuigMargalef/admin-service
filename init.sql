--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: admin; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.admin (
    id bigint NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    token character varying
);


ALTER TABLE public.admin OWNER TO username;

--
-- Name: Admin_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Admin_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Admin_id_seq" OWNER TO username;

--
-- Name: Admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Admin_id_seq" OWNED BY public.admin.id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.event (
    id bigint NOT NULL,
    match_id bigint NOT NULL,
    team_id bigint NOT NULL,
    type_id bigint NOT NULL,
    minute timestamp without time zone NOT NULL
);


ALTER TABLE public.event OWNER TO username;

--
-- Name: Event_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_id_seq" OWNER TO username;

--
-- Name: Event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_id_seq" OWNED BY public.event.id;


--
-- Name: Event_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_match_id_seq" OWNER TO username;

--
-- Name: Event_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_match_id_seq" OWNED BY public.event.match_id;


--
-- Name: Event_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_team_id_seq" OWNER TO username;

--
-- Name: Event_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_team_id_seq" OWNED BY public.event.team_id;


--
-- Name: event_type; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.event_type (
    id bigint NOT NULL,
    name character varying NOT NULL,
    icon bytea NOT NULL
);


ALTER TABLE public.event_type OWNER TO username;

--
-- Name: Event_type_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_type_id_seq" OWNER TO username;

--
-- Name: Event_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_type_id_seq" OWNED BY public.event_type.id;


--
-- Name: Event_type_id_seq1; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_type_id_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_type_id_seq1" OWNER TO username;

--
-- Name: Event_type_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_type_id_seq1" OWNED BY public.event.type_id;


--
-- Name: lineup; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.lineup (
    match_id bigint NOT NULL,
    team_id bigint NOT NULL,
    formation character varying NOT NULL
);


ALTER TABLE public.lineup OWNER TO username;

--
-- Name: Lineup_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_match_id_seq" OWNER TO username;

--
-- Name: Lineup_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_match_id_seq" OWNED BY public.lineup.match_id;


--
-- Name: lineup_player; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.lineup_player (
    team_id bigint NOT NULL,
    player_id bigint NOT NULL,
    match_id bigint NOT NULL,
    "position" character varying(5) NOT NULL
);


ALTER TABLE public.lineup_player OWNER TO username;

--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_match_id_seq" OWNER TO username;

--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_match_id_seq" OWNED BY public.lineup_player.match_id;


--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_player_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_player_id_seq" OWNER TO username;

--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_player_id_seq" OWNED BY public.lineup_player.player_id;


--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_team_id_seq" OWNER TO username;

--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_team_id_seq" OWNED BY public.lineup_player.team_id;


--
-- Name: Lineup_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_team_id_seq" OWNER TO username;

--
-- Name: Lineup_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_team_id_seq" OWNED BY public.lineup.team_id;


--
-- Name: match; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.match (
    id bigint NOT NULL,
    date date NOT NULL,
    local_team_id bigint NOT NULL,
    visitor_team_id bigint NOT NULL,
    hour time without time zone NOT NULL,
    is_finished boolean
);


ALTER TABLE public.match OWNER TO username;

--
-- Name: Match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_id_seq" OWNER TO username;

--
-- Name: Match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_id_seq" OWNED BY public.match.id;


--
-- Name: Match_local_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_local_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_local_team_id_seq" OWNER TO username;

--
-- Name: Match_local_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_local_team_id_seq" OWNED BY public.match.local_team_id;


--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_visitor_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_visitor_team_id_seq" OWNER TO username;

--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_visitor_team_id_seq" OWNED BY public.match.visitor_team_id;


--
-- Name: player; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.player (
    id bigint NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    birth_date date NOT NULL,
    birth_country character varying NOT NULL,
    photo bytea NOT NULL,
    team_id bigint NOT NULL
);


ALTER TABLE public.player OWNER TO username;

--
-- Name: Player_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Player_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Player_id_seq" OWNER TO username;

--
-- Name: Player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Player_id_seq" OWNED BY public.player.id;


--
-- Name: Player_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Player_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Player_team_id_seq" OWNER TO username;

--
-- Name: Player_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Player_team_id_seq" OWNED BY public.player.team_id;


--
-- Name: scorer; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.scorer (
    match_id bigint NOT NULL,
    local_goal smallint DEFAULT 0 NOT NULL,
    visitor_goal smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.scorer OWNER TO username;

--
-- Name: Scorer_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Scorer_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Scorer_match_id_seq" OWNER TO username;

--
-- Name: Scorer_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Scorer_match_id_seq" OWNED BY public.scorer.match_id;


--
-- Name: team; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public.team (
    id bigint NOT NULL,
    name character varying NOT NULL,
    emblem bytea NOT NULL,
    city character varying,
    stadium character varying
);


ALTER TABLE public.team OWNER TO username;

--
-- Name: Team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Team_id_seq" OWNER TO username;

--
-- Name: Team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Team_id_seq" OWNED BY public.team.id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public."Admin_id_seq"'::regclass);


--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public."Event_id_seq"'::regclass);


--
-- Name: event match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event ALTER COLUMN match_id SET DEFAULT nextval('public."Event_match_id_seq"'::regclass);


--
-- Name: event team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event ALTER COLUMN team_id SET DEFAULT nextval('public."Event_team_id_seq"'::regclass);


--
-- Name: event type_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event ALTER COLUMN type_id SET DEFAULT nextval('public."Event_type_id_seq1"'::regclass);


--
-- Name: event_type id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event_type ALTER COLUMN id SET DEFAULT nextval('public."Event_type_id_seq"'::regclass);


--
-- Name: lineup match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup ALTER COLUMN match_id SET DEFAULT nextval('public."Lineup_match_id_seq"'::regclass);


--
-- Name: lineup team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup ALTER COLUMN team_id SET DEFAULT nextval('public."Lineup_team_id_seq"'::regclass);


--
-- Name: lineup_player team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player ALTER COLUMN team_id SET DEFAULT nextval('public."Lineup_player_team_id_seq"'::regclass);


--
-- Name: lineup_player player_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player ALTER COLUMN player_id SET DEFAULT nextval('public."Lineup_player_player_id_seq"'::regclass);


--
-- Name: lineup_player match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player ALTER COLUMN match_id SET DEFAULT nextval('public."Lineup_player_match_id_seq"'::regclass);


--
-- Name: match id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match ALTER COLUMN id SET DEFAULT nextval('public."Match_id_seq"'::regclass);


--
-- Name: match local_team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match ALTER COLUMN local_team_id SET DEFAULT nextval('public."Match_local_team_id_seq"'::regclass);


--
-- Name: match visitor_team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match ALTER COLUMN visitor_team_id SET DEFAULT nextval('public."Match_visitor_team_id_seq"'::regclass);


--
-- Name: player id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.player ALTER COLUMN id SET DEFAULT nextval('public."Player_id_seq"'::regclass);


--
-- Name: player team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.player ALTER COLUMN team_id SET DEFAULT nextval('public."Player_team_id_seq"'::regclass);


--
-- Name: scorer match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.scorer ALTER COLUMN match_id SET DEFAULT nextval('public."Scorer_match_id_seq"'::regclass);


--
-- Name: team id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public."Team_id_seq"'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.admin (id, username, email, password, token) FROM stdin;
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.event (id, match_id, team_id, type_id, minute) FROM stdin;
\.


--
-- Data for Name: event_type; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.event_type (id, name, icon) FROM stdin;
\.


--
-- Data for Name: lineup; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.lineup (match_id, team_id, formation) FROM stdin;
\.


--
-- Data for Name: lineup_player; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.lineup_player (team_id, player_id, match_id, "position") FROM stdin;
\.


--
-- Data for Name: match; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.match (id, date, local_team_id, visitor_team_id, hour, is_finished) FROM stdin;
\.


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.player (id, name, surname, birth_date, birth_country, photo, team_id) FROM stdin;
\.


--
-- Data for Name: scorer; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.scorer (match_id, local_goal, visitor_goal) FROM stdin;
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public.team (id, name, emblem, city, stadium) FROM stdin;
\.


--
-- Name: Admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Admin_id_seq"', 1, false);


--
-- Name: Event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_id_seq"', 1, false);


--
-- Name: Event_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_match_id_seq"', 1, false);


--
-- Name: Event_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_team_id_seq"', 1, false);


--
-- Name: Event_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_type_id_seq"', 1, false);


--
-- Name: Event_type_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_type_id_seq1"', 1, false);


--
-- Name: Lineup_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_match_id_seq"', 1, false);


--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_match_id_seq"', 1, false);


--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_player_id_seq"', 1, false);


--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_team_id_seq"', 1, false);


--
-- Name: Lineup_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_team_id_seq"', 1, false);


--
-- Name: Match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_id_seq"', 1, false);


--
-- Name: Match_local_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_local_team_id_seq"', 1, false);


--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_visitor_team_id_seq"', 1, false);


--
-- Name: Player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Player_id_seq"', 1, false);


--
-- Name: Player_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Player_team_id_seq"', 1, false);


--
-- Name: Scorer_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Scorer_match_id_seq"', 1, false);


--
-- Name: Team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Team_id_seq"', 1, false);


--
-- Name: admin Admin_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "Admin_pkey" PRIMARY KEY (id);


--
-- Name: event Event_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (id);


--
-- Name: event_type Event_type_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event_type
    ADD CONSTRAINT "Event_type_pkey" PRIMARY KEY (id);


--
-- Name: lineup_player Lineup_player_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player
    ADD CONSTRAINT "Lineup_player_pkey" PRIMARY KEY (player_id, match_id, team_id);


--
-- Name: match Match_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match
    ADD CONSTRAINT "Match_pkey" PRIMARY KEY (id);


--
-- Name: player Player_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT "Player_pkey" PRIMARY KEY (id);


--
-- Name: scorer Scorer_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.scorer
    ADD CONSTRAINT "Scorer_pkey" PRIMARY KEY (match_id);


--
-- Name: team Team_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT "Team_pkey" PRIMARY KEY (id);


--
-- Name: event FK_event_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "FK_event_id" FOREIGN KEY (type_id) REFERENCES public.event_type(id);


--
-- Name: event FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public.match(id);


--
-- Name: scorer FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.scorer
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public.match(id);


--
-- Name: lineup_player FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public.match(id);


--
-- Name: lineup_player FK_player_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player
    ADD CONSTRAINT "FK_player_id" FOREIGN KEY (player_id) REFERENCES public.player(id);


--
-- Name: event FK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "FK_team_id" FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: lineup_player FK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup_player
    ADD CONSTRAINT "FK_team_id" FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: match PK_local_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match
    ADD CONSTRAINT "PK_local_team_id" FOREIGN KEY (local_team_id) REFERENCES public.team(id);


--
-- Name: lineup PK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup
    ADD CONSTRAINT "PK_match_id" FOREIGN KEY (match_id) REFERENCES public.match(id);


--
-- Name: player PK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT "PK_team_id" FOREIGN KEY (team_id) REFERENCES public.team(id) NOT VALID;


--
-- Name: lineup PK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.lineup
    ADD CONSTRAINT "PK_team_id" FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: match PK_visitor_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public.match
    ADD CONSTRAINT "PK_visitor_team_id" FOREIGN KEY (visitor_team_id) REFERENCES public.team(id);


--
-- PostgreSQL database dump complete
--

