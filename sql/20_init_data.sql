--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category VALUES (1, 'Misc', 'event');
INSERT INTO public.category VALUES (2, 'Cinema', 'event_cinema');
INSERT INTO public.category VALUES (3, 'Nightlife', 'event');
INSERT INTO public.category VALUES (4, 'Live', 'event');
INSERT INTO public.category VALUES (5, 'Sport', 'event');
INSERT INTO public.category VALUES (6, 'Art & Culture', 'event');


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

