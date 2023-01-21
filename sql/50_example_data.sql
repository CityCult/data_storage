--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-21 20:41:56 UTC

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Data for Name: venue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venue (name, street, postcode, city, description, venue_uid, website) VALUES ('Kino "City:Cult"', NULL, NULL, 'Leipzig', 'Kino', 'f3c59084-9985-11ed-a8fc-0242ac120002', 'http://example.org/kino');
INSERT INTO public.venue (name, street, postcode, city, description, venue_uid, website) VALUES ('Disco "City:Cult"', NULL, NULL, 'Leipzig', 'Discothek', '110f50da-9986-11ed-a8fc-0242ac120002', 'http://example.org/disco');
INSERT INTO public.venue (name, street, postcode, city, description, venue_uid, website) VALUES ('Konzerthalle "City:Cult"', NULL, NULL, 'Leipzig', 'Konzerthalle', 'c50ff6ca-9986-11ed-a8fc-0242ac120002', 'http://example.org/Konzerthalle');
INSERT INTO public.venue (name, street, postcode, city, description, venue_uid, website) VALUES ('Stadium "City:Cult"', NULL, NULL, 'Leipzig', 'Stadium', 'f78d8252-9986-11ed-a8fc-0242ac120002', 'http://example.org/Stadium');
INSERT INTO public.venue (name, street, postcode, city, description, venue_uid, website) VALUES ('Theater "City:Cult""', NULL, NULL, 'Leipzig', 'Theater', '0d043324-9987-11ed-a8fc-0242ac120002', 'http://example.org/Theater');

--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movie (movie_uid, title, genre, year, description, runtime) VALUES ('4bf0d7a4-9987-11ed-a8fc-0242ac120002', 'Zwei Himmelhunde auf den Weg zur Hölle', 'Komödie', 1972, 'Bud Spencer und Terence Hill ...', 106);

--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('f5d5b076-99ca-11ed-a8fc-0242ac120002', 'Misc-Event', '2000-01-01 08:15:00', '2000-01-03 10:15:00', '110f50da-9986-11ed-a8fc-0242ac120002', 'Nichts Halbes und nichts Ganzes', 1, 'http://example.org/disco/1', -1, true, true, '2023-01-21 20:36:06.079829');
INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('8e3b0586-f185-436e-a19e-f7bcee5ceddf', 'Zwei Himmelhunde auf den Weg zur Hölle', '2000-01-02 20:15:00', '2000-01-02 22:30:00', 'f3c59084-9985-11ed-a8fc-0242ac120002', 'Bud Spencer und Terence Hill ...', 2, 'http://example.org/kino/2', 1.1, true, true, '2023-01-21 20:26:50.392226');
INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('c45f798c-99ca-11ed-a8fc-0242ac120002', 'Kunst-Event', '2000-01-06 16:00:00', '2000-01-06 23:00:00', '0d043324-9987-11ed-a8fc-0242ac120002', 'Ist das Kunst oder kann das weg?', 6, 'http://example.org/Theater/6', 9.9, true, true, '2023-01-21 20:34:00.931044');
INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('8ad630b6-99ca-11ed-a8fc-0242ac120002', 'Sport-Event', '2000-01-05 16:00:00', '2000-01-05 19:00:00', 'f78d8252-9986-11ed-a8fc-0242ac120002', 'Sport frei!', 5, 'http://example.org/Stadium/5', 12.12, true, true, '2023-01-21 20:32:32.300321');
INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('535ee902-99ca-11ed-a8fc-0242ac120002', 'Konzert-Event', '2000-01-04 20:00:00', '2000-01-04 23:00:00', 'c50ff6ca-9986-11ed-a8fc-0242ac120002', 'Gitarre & Schlagzeug', 4, 'http://example.org/Konzerthalle/4', 40.4, true, true, '2023-01-21 20:30:54.329485');
INSERT INTO public.event (event_uid, name, startdate, enddate, venue_uid, description, category_id, source, price, has_starttime, has_endtime, createddate) VALUES ('0cbeb0e0-99ca-11ed-a8fc-0242ac120002', 'Disco-Event', '2000-01-03 22:00:00', '2000-01-04 04:00:00', '110f50da-9986-11ed-a8fc-0242ac120002', 'Tanzen & Feiern', 3, 'http://example.org/disco/3', 11.11, true, true, '2023-01-21 20:29:13.790498');

--
-- Data for Name: event_cinema; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.event_cinema (event_uid, movie_uid) VALUES ('8e3b0586-f185-436e-a19e-f7bcee5ceddf', '4bf0d7a4-9987-11ed-a8fc-0242ac120002');


--
-- PostgreSQL database dump complete
--
