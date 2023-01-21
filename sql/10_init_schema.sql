--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    name text NOT NULL,
    "table" text
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Dependencies: 215
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.category_id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event (
    event_uid character(36) NOT NULL,
    name text NOT NULL,
    startdate timestamp without time zone NOT NULL,
    enddate timestamp without time zone,
    venue_uid character(36) NOT NULL,
    description text,
    category_id integer DEFAULT 1 NOT NULL,
    source text,
    price double precision DEFAULT '-1.00'::numeric NOT NULL,
    has_starttime boolean DEFAULT false,
    has_endtime boolean DEFAULT false,
    createddate timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.event OWNER TO postgres;

--
-- Name: event_cinema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_cinema (
    event_uid character(36) NOT NULL,
    movie_uid character(36)
);


ALTER TABLE public.event_cinema OWNER TO postgres;

--
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    movie_uid character(36) NOT NULL,
    title text NOT NULL,
    genre text,
    year integer,
    description text,
    runtime integer
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: venue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venue (
    name text NOT NULL,
    street text,
    postcode text,
    city text,
    description text,
    venue_uid character(36) NOT NULL,
    website text
);


ALTER TABLE public.venue OWNER TO postgres;

--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (category_id);


--
-- Name: event_cinema EventCinema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_cinema
    ADD CONSTRAINT "EventCinema_pkey" PRIMARY KEY (event_uid);


--
-- Name: event Event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (event_uid);


--
-- Name: movie Movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT "Movie_pkey" PRIMARY KEY (movie_uid);


--
-- Name: venue Venue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venue
    ADD CONSTRAINT "Venue_pkey" PRIMARY KEY (venue_uid);


--
-- Name: event Event_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT "Event_category_fkey" FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: event_cinema event_cinema_event_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_cinema
    ADD CONSTRAINT event_cinema_event_uid_fkey FOREIGN KEY (event_uid) REFERENCES public.event(event_uid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_cinema event_cinema_movie_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_cinema
    ADD CONSTRAINT event_cinema_movie_uid_fkey FOREIGN KEY (movie_uid) REFERENCES public.movie(movie_uid) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: event event_venue_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_venue_uid_fkey FOREIGN KEY (venue_uid) REFERENCES public.venue(venue_uid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
