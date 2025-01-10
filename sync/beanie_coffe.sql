--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

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
-- Name: blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    release_date date NOT NULL,
    article text NOT NULL,
    cover_file character varying(255)
);


ALTER TABLE public.blog OWNER TO postgres;

--
-- Name: blog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_id_seq OWNER TO postgres;

--
-- Name: blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_id_seq OWNED BY public.blog.id;


--
-- Name: menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    deskripsi text,
    harga numeric(10,2) NOT NULL,
    nama_file_foto character varying(255),
    release_date date NOT NULL,
    total_order integer DEFAULT 0,
    nama_file_foto_hd character varying(255)
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- Name: menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menu_id_seq OWNER TO postgres;

--
-- Name: menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;


--
-- Name: testimoni; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testimoni (
    id integer NOT NULL,
    customer character varying(255) NOT NULL,
    words text NOT NULL
);


ALTER TABLE public.testimoni OWNER TO postgres;

--
-- Name: testimoni_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.testimoni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.testimoni_id_seq OWNER TO postgres;

--
-- Name: testimoni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.testimoni_id_seq OWNED BY public.testimoni.id;


--
-- Name: blog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog ALTER COLUMN id SET DEFAULT nextval('public.blog_id_seq'::regclass);


--
-- Name: menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);


--
-- Name: testimoni id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoni ALTER COLUMN id SET DEFAULT nextval('public.testimoni_id_seq'::regclass);


--
-- Data for Name: blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog (id, title, release_date, article, cover_file) FROM stdin;
4	What is the best Coffee?	2025-01-10	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam netus sagittis non eu pellentesque facilisis.	blog_1_image.png
6	Cup of coffee for your happiness	2025-01-10	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam netus sagittis non eu pellentesque facilisis.	blog_3_image.png
5	How coffee works for your bodies	2025-01-10	Ullamcorper ultrices elit viverra congue velit amet. Egestas bibendum leo odio fringilla quam netus sagittis non eu pellentesque facilisis.	blog_2_image.png
\.


--
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu (id, nama, deskripsi, harga, nama_file_foto, release_date, total_order, nama_file_foto_hd) FROM stdin;
5	Pumpkin Spice Surprise	A shot of espresso diluted with hot water.	3.49	new_arrival_2_image.png	2024-11-15	95	best_selling_1_image_hd.png
6	Toffee Temptation	Equal parts of espresso, steamed milk, and foam, topped with cocoa.	3.99	new_arrival_3_image.png	2024-11-10	110	best_selling_1_image_hd.png
7	Gingerbread Galore	Creamy espresso with steamed milk and a thin layer of foam.	4.49	new_arrival_4_image.png	2024-12-05	85	best_selling_1_image_hd.png
8	Salted Caramel Sip	A nutty and indulgent latte with a hint of macadamia flavor.	3.99	new_arrival_5_image.png	2024-11-20	75	best_selling_1_image_hd.png
9	Cinnamon Swirl	A strong and concentrated shot of coffee.	2.99	best_selling_1_image.png	2024-11-01	150	best_selling_1_image_hd.png
12	Berry Blast	Creamy espresso with steamed milk and a thin layer of foam.	4.49	best_selling_4_image.png	2024-11-10	125	best_selling_1_image_hd.png
13	Macadamia Nut Latte	A nutty and indulgent latte with a hint of macadamia flavor.	3.99	best_selling_5_image.png	2024-11-12	100	best_selling_1_image_hd.png
10	Hazelnut Heaven	A shot of espresso diluted with hot water.	3.49	best_selling_2_image.png	2024-11-03	130	best_selling_2_image_hd.png
11	Peppermint Perk	Equal parts of espresso, steamed milk, and foam, topped with cocoa.	3.99	best_selling_3_image.png	2024-11-07	140	best_selling_3_image_hd.png
4	Coconut Kiss	A strong and concentrated shot of coffee.	2.99	new_arrival_1_image.png	2024-12-01	120	best_selling_2_image_hd.png
\.


--
-- Data for Name: testimoni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.testimoni (id, customer, words) FROM stdin;
1	Sarah Anderson	Habitant aliquet sed suspendisse lectus sit gravida sit morbi augue. Porta cursus diam sit velit mi. Maecenas scelerisque tellus nulla ut vitae amet morbi platea blandit vestibulum dignissim.
2	John Smith	Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.
3	Emily Johnson	Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.
\.


--
-- Name: blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_id_seq', 6, true);


--
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_seq', 13, true);


--
-- Name: testimoni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.testimoni_id_seq', 3, true);


--
-- Name: blog blog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog
    ADD CONSTRAINT blog_pkey PRIMARY KEY (id);


--
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);


--
-- Name: testimoni testimoni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoni
    ADD CONSTRAINT testimoni_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

