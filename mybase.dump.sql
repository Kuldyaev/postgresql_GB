--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: bots; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.bots (
    id integer NOT NULL,
    name character varying(30),
    type_id integer NOT NULL,
    owner_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.bots OWNER TO my_admin;

--
-- Name: bots_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.bots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bots_id_seq OWNER TO my_admin;

--
-- Name: bots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.bots_id_seq OWNED BY public.bots.id;


--
-- Name: bots_type; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.bots_type (
    id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.bots_type OWNER TO my_admin;

--
-- Name: bots_type_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.bots_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bots_type_id_seq OWNER TO my_admin;

--
-- Name: bots_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.bots_type_id_seq OWNED BY public.bots_type.id;


--
-- Name: friendship; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.friendship (
    id integer NOT NULL,
    requested_by_user_id integer NOT NULL,
    requested_to_user_id integer NOT NULL,
    status_id integer NOT NULL,
    requested_at timestamp without time zone,
    confirmed_at timestamp without time zone
);


ALTER TABLE public.friendship OWNER TO my_admin;

--
-- Name: friendship_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.friendship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_id_seq OWNER TO my_admin;

--
-- Name: friendship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.friendship_id_seq OWNED BY public.friendship.id;


--
-- Name: friendship_statuses; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.friendship_statuses (
    id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.friendship_statuses OWNER TO my_admin;

--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.friendship_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_statuses_id_seq OWNER TO my_admin;

--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.friendship_statuses_id_seq OWNED BY public.friendship_statuses.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL,
    body text,
    is_important boolean,
    is_delivered boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.messages OWNER TO my_admin;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO my_admin;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: one_sensor_bots_data; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.one_sensor_bots_data (
    id integer NOT NULL,
    bot_id integer NOT NULL,
    temp integer,
    press integer,
    created_at timestamp without time zone
);


ALTER TABLE public.one_sensor_bots_data OWNER TO my_admin;

--
-- Name: one_sensor_bots_data_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.one_sensor_bots_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.one_sensor_bots_data_id_seq OWNER TO my_admin;

--
-- Name: one_sensor_bots_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.one_sensor_bots_data_id_seq OWNED BY public.one_sensor_bots_data.id;


--
-- Name: photo; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.photo OWNER TO my_admin;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO my_admin;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- Name: three_sensor_bots_data; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.three_sensor_bots_data (
    id integer NOT NULL,
    bot_id integer NOT NULL,
    temp_out integer,
    press integer,
    temp_in integer,
    humid_air integer,
    humid_soil integer,
    photo_id integer,
    created_at timestamp without time zone
);


ALTER TABLE public.three_sensor_bots_data OWNER TO my_admin;

--
-- Name: three_sensor_bots_data_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.three_sensor_bots_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.three_sensor_bots_data_id_seq OWNER TO my_admin;

--
-- Name: three_sensor_bots_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.three_sensor_bots_data_id_seq OWNED BY public.three_sensor_bots_data.id;


--
-- Name: two_sensor_bots_data; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.two_sensor_bots_data (
    id integer NOT NULL,
    bot_id integer NOT NULL,
    temp_out integer,
    press integer,
    temp_in integer,
    humid_air integer,
    created_at timestamp without time zone
);


ALTER TABLE public.two_sensor_bots_data OWNER TO my_admin;

--
-- Name: two_sensor_bots_data_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.two_sensor_bots_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.two_sensor_bots_data_id_seq OWNER TO my_admin;

--
-- Name: two_sensor_bots_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.two_sensor_bots_data_id_seq OWNED BY public.two_sensor_bots_data.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: my_admin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    phone character varying(15),
    main_photo_id integer,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO my_admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: my_admin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO my_admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: bots id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots ALTER COLUMN id SET DEFAULT nextval('public.bots_id_seq'::regclass);


--
-- Name: bots_type id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots_type ALTER COLUMN id SET DEFAULT nextval('public.bots_type_id_seq'::regclass);


--
-- Name: friendship id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.friendship ALTER COLUMN id SET DEFAULT nextval('public.friendship_id_seq'::regclass);


--
-- Name: friendship_statuses id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.friendship_statuses ALTER COLUMN id SET DEFAULT nextval('public.friendship_statuses_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: one_sensor_bots_data id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.one_sensor_bots_data ALTER COLUMN id SET DEFAULT nextval('public.one_sensor_bots_data_id_seq'::regclass);


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- Name: three_sensor_bots_data id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.three_sensor_bots_data ALTER COLUMN id SET DEFAULT nextval('public.three_sensor_bots_data_id_seq'::regclass);


--
-- Name: two_sensor_bots_data id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.two_sensor_bots_data ALTER COLUMN id SET DEFAULT nextval('public.two_sensor_bots_data_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: bots; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.bots (id, name, type_id, owner_id, created_at) FROM stdin;
1	myFirstBot	1	17	2022-10-28 22:00:58
2	mySecondBot	2	17	2022-10-28 22:07:58
3	MyThirdBot\n	3	17	2022-10-28 22:10:58
4	GreenHouseBot	2	17	2022-10-28 22:50:58
\.


--
-- Data for Name: bots_type; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.bots_type (id, name) FROM stdin;
1	one_sensor_bot
2	two_sensor_bot
3	three_sensor_bot
\.


--
-- Data for Name: friendship; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.friendship (id, requested_by_user_id, requested_to_user_id, status_id, requested_at, confirmed_at) FROM stdin;
1	69	32	2	2022-10-22 07:57:58	2022-10-22 21:57:58
2	27	8	2	2022-10-19 00:22:36	2022-10-22 07:57:58
3	28	35	2	2022-10-20 05:26:56	2022-10-21 08:57:58
5	79	60	2	2022-10-19 15:38:14	2022-10-22 07:57:58
6	55	48	2	2022-10-19 15:02:01	2022-10-20 12:57:58
12	55	50	2	2022-10-22 19:30:32	2022-10-22 21:57:58
14	24	23	2	2022-10-19 02:02:59	2022-10-22 11:57:58
15	37	4	2	2022-10-20 17:58:04	2022-10-22 20:57:58
17	16	69	2	2022-10-19 01:35:25	2022-10-22 14:57:58
18	38	27	2	2022-10-23 23:01:36	2022-10-23 23:57:58
19	32	89	2	2022-10-26 04:10:47	2022-10-26 23:57:58
20	19	60	2	2022-10-22 11:02:33	2022-10-22 23:57:58
24	43	11	2	2022-10-25 07:53:59	2022-10-26 07:57:58
29	44	33	2	2022-10-22 09:57:40	2022-10-26 21:57:58
30	72	3	2	2022-10-24 07:07:20	2022-10-25 14:55:00
32	73	63	2	2022-10-19 10:53:06	2022-10-21 21:21:21
33	94	31	2	2022-10-22 14:06:42	2022-10-26 09:57:58
34	85	70	2	2022-10-26 14:10:12	2022-10-27 17:57:58
35	53	80	2	2022-10-27 03:36:00	2022-10-27 23:57:58
37	53	93	2	2022-10-25 05:59:50	2022-10-26 22:57:58
38	48	64	2	2022-10-18 22:33:43	2022-10-20 03:57:58
39	14	45	2	2022-10-21 10:41:40	2022-10-24 22:57:58
41	52	15	2	2022-10-25 15:22:09	2022-10-25 21:57:58
42	91	69	2	2022-10-20 07:41:22	2022-10-24 21:00:28
47	39	45	2	2022-10-25 19:33:28	2022-10-27 19:57:58
48	88	31	2	2022-10-22 16:58:54	2022-10-27 13:57:58
49	46	50	2	2022-10-22 19:05:00	2022-10-24 04:00:03
52	82	34	2	2022-10-23 06:01:30	2022-10-24 04:57:58
54	64	86	2	2022-10-23 20:44:03	2022-10-25 15:57:00
55	17	21	2	2022-10-24 08:21:33	2022-10-27 01:01:40
57	68	79	2	2022-10-18 14:02:40	2022-10-26 09:57:58
4	94	60	3	2022-10-21 00:33:08	\N
7	59	94	1	2022-10-21 07:45:23	\N
8	67	31	3	2022-10-26 11:32:35	\N
9	28	66	1	2022-10-25 04:27:25	\N
10	21	67	3	2022-10-25 17:10:50	\N
11	62	40	3	2022-10-24 20:49:50	\N
13	40	15	3	2022-10-23 03:28:27	\N
16	78	46	3	2022-10-26 09:34:03	\N
21	9	23	1	2022-10-20 04:08:00	\N
22	83	92	3	2022-10-22 00:56:46	\N
23	58	71	1	2022-10-27 06:11:29	\N
25	71	36	1	2022-10-25 05:58:33	\N
26	13	54	1	2022-10-18 15:12:51	\N
27	12	27	3	2022-10-27 04:58:36	\N
28	87	34	3	2022-10-22 08:19:27	\N
31	76	15	3	2022-10-22 17:02:38	\N
36	59	96	1	2022-10-23 23:42:16	\N
40	38	64	3	2022-10-27 04:32:56	\N
43	54	50	1	2022-10-25 03:25:15	\N
44	49	76	3	2022-10-24 23:48:20	\N
45	22	54	3	2022-10-19 07:12:41	\N
46	80	87	3	2022-10-24 18:53:18	\N
50	59	70	1	2022-10-19 04:19:33	\N
51	71	30	1	2022-10-22 17:12:52	\N
53	48	24	3	2022-10-21 19:23:33	\N
56	84	73	1	2022-10-19 08:17:13	\N
58	34	39	3	2022-10-23 17:25:24	\N
59	42	58	3	2022-10-19 20:58:25	\N
62	37	3	1	2022-10-19 09:00:07	\N
64	61	36	1	2022-10-27 09:24:33	\N
65	56	33	1	2022-10-23 15:50:11	\N
68	9	87	1	2022-10-20 12:01:54	\N
70	22	46	3	2022-10-20 08:37:31	\N
74	58	22	1	2022-10-22 19:59:53	\N
76	54	38	3	2022-10-25 09:01:12	\N
79	35	42	1	2022-10-18 19:20:52	\N
80	27	43	3	2022-10-27 01:19:16	\N
81	19	23	3	2022-10-22 18:47:20	\N
82	14	31	1	2022-10-26 23:50:28	\N
83	81	22	3	2022-10-23 15:52:34	\N
85	41	60	1	2022-10-26 05:37:27	\N
88	74	89	3	2022-10-26 06:00:00	\N
90	62	11	3	2022-10-27 09:49:33	\N
92	91	36	3	2022-10-23 12:39:03	\N
93	76	74	3	2022-10-23 02:20:56	\N
94	46	19	3	2022-10-23 01:13:19	\N
95	60	15	3	2022-10-21 23:16:09	\N
98	37	4	3	2022-10-25 17:45:02	\N
99	94	9	3	2022-10-24 12:13:56	\N
100	22	66	3	2022-10-19 14:19:19	\N
60	62	31	2	2022-10-25 11:46:43	2022-10-27 08:58:26
61	63	50	2	2022-10-20 19:41:20	2022-10-26 07:57:58
63	68	47	2	2022-10-21 03:31:30	2022-10-22 07:57:58
66	6	24	2	2022-10-22 01:53:41	2022-10-26 06:56:03
67	60	28	2	2022-10-25 06:02:57	2022-10-25 09:59:59
69	84	9	2	2022-10-23 21:46:37	2022-10-26 07:57:58
71	42	17	2	2022-10-26 00:50:28	2022-10-27 07:57:58
72	61	19	2	2022-10-19 18:23:54	2022-10-22 07:57:58
73	23	25	2	2022-10-20 05:24:32	2022-10-21 07:57:58
75	14	57	2	2022-10-23 16:27:36	2022-10-25 07:57:58
77	79	51	2	2022-10-24 06:22:09	2022-10-26 07:57:58
78	62	75	2	2022-10-24 03:32:48	2022-10-25 07:57:58
84	73	36	2	2022-10-26 08:12:08	2022-10-27 07:57:58
86	21	34	2	2022-10-24 04:02:44	2022-10-26 06:57:56
87	85	37	2	2022-10-22 22:56:14	2022-10-24 07:57:58
89	81	31	2	2022-10-20 20:21:04	2022-10-22 07:57:58
91	43	33	2	2022-10-27 05:08:17	2022-10-27 23:57:58
96	28	26	2	2022-10-20 22:49:18	2022-10-22 07:57:58
97	17	27	2	2022-10-27 04:41:54	2022-10-27 23:57:58
\.


--
-- Data for Name: friendship_statuses; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.friendship_statuses (id, name) FROM stdin;
1	confirmed
2	requested
3	rejected
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) FROM stdin;
1	51	91	ut, pellentesque eget, dictum placerat, augue. Sed	t	f	2022-10-28 04:26:53
2	79	94	dictum. Phasellus in felis. Nulla tempor augue	f	t	2022-10-27 22:52:56
3	75	91	Praesent luctus. Curabitur egestas nunc sed libero.	t	f	2022-10-28 01:53:17
4	48	27	lacus. Aliquam rutrum lorem ac risus. Morbi	f	t	2022-10-27 22:25:48
5	10	91	dolor sit amet, consectetuer adipiscing elit. Curabitur	f	f	2022-10-27 20:00:17
6	7	8	at, velit. Cras lorem lorem, luctus ut,	t	f	2022-10-28 03:13:19
7	31	40	vitae dolor. Donec fringilla. Donec feugiat metus	f	t	2022-10-27 18:18:51
8	35	9	lorem fringilla ornare placerat, orci lacus vestibulum	t	f	2022-10-28 02:00:38
9	3	9	Sed auctor odio a purus. Duis elementum,	t	t	2022-10-28 02:52:31
10	7	29	ultrices, mauris ipsum porta elit, a feugiat	t	f	2022-10-27 21:38:13
11	96	65	ornare tortor at risus. Nunc ac sem	f	f	2022-10-28 05:18:35
12	75	50	ipsum leo elementum sem, vitae aliquam eros	f	t	2022-10-28 02:24:42
13	55	42	fringilla purus mauris a nunc. In at	t	f	2022-10-28 07:22:11
14	7	59	consectetuer mauris id sapien. Cras dolor dolor,	t	f	2022-10-28 06:35:08
15	87	43	purus. Duis elementum, dui quis accumsan convallis,	t	f	2022-10-28 06:00:29
16	5	76	viverra. Donec tempus, lorem fringilla ornare placerat,	t	f	2022-10-28 04:28:31
17	26	28	ac sem ut dolor dapibus gravida. Aliquam	f	f	2022-10-27 13:54:45
18	93	40	ut, pharetra sed, hendrerit a, arcu. Sed	f	t	2022-10-27 16:58:30
19	35	65	risus, at fringilla purus mauris a nunc.	f	f	2022-10-28 01:15:03
20	30	45	placerat velit. Quisque varius. Nam porttitor scelerisque	t	f	2022-10-27 22:11:33
21	71	93	Donec tempus, lorem fringilla ornare placerat, orci	t	f	2022-10-28 08:39:17
22	78	71	ligula. Nullam feugiat placerat velit. Quisque varius.	f	f	2022-10-28 09:32:26
23	30	71	sociis natoque penatibus et magnis dis parturient	t	t	2022-10-28 08:25:01
24	55	73	enim commodo hendrerit. Donec porttitor tellus non	f	f	2022-10-27 23:48:08
25	56	65	In condimentum. Donec at arcu. Vestibulum ante	f	t	2022-10-27 13:59:01
26	82	80	eu turpis. Nulla aliquet. Proin velit. Sed	f	t	2022-10-28 02:58:34
27	28	85	tincidunt tempus risus. Donec egestas. Duis ac	f	f	2022-10-27 14:15:57
28	41	91	Nunc mauris sapien, cursus in, hendrerit consectetuer,	t	t	2022-10-28 04:41:37
29	92	17	posuere cubilia Curae Donec tincidunt. Donec vitae	f	f	2022-10-28 01:04:42
30	57	10	interdum. Sed auctor odio a purus. Duis	t	f	2022-10-27 15:12:45
31	32	19	dui, in sodales elit erat vitae risus.	t	f	2022-10-28 00:10:01
32	35	43	laoreet ipsum. Curabitur consequat, lectus sit amet	f	t	2022-10-28 01:34:38
33	23	20	id, blandit at, nisi. Cum sociis natoque	t	t	2022-10-27 11:54:34
34	45	65	nec, mollis vitae, posuere at, velit. Cras	t	t	2022-10-27 16:10:49
35	17	74	vehicula. Pellentesque tincidunt tempus risus. Donec egestas.	f	f	2022-10-27 18:41:20
36	65	9	semper erat, in consectetuer ipsum nunc id	t	f	2022-10-28 08:31:10
37	89	11	orci tincidunt adipiscing. Mauris molestie pharetra nibh.	t	t	2022-10-27 13:55:11
38	38	4	nisi nibh lacinia orci, consectetuer euismod est	f	t	2022-10-28 00:37:41
39	43	10	facilisis, magna tellus faucibus leo, in lobortis	t	t	2022-10-28 02:38:30
40	26	22	Vivamus rhoncus. Donec est. Nunc ullamcorper, velit	f	f	2022-10-28 01:21:50
41	32	90	purus ac tellus. Suspendisse sed dolor. Fusce	t	t	2022-10-27 23:57:22
42	22	63	massa non ante bibendum ullamcorper. Duis cursus,	t	f	2022-10-27 15:27:57
43	9	4	Praesent interdum ligula eu enim. Etiam imperdiet	f	f	2022-10-27 19:13:16
44	76	37	sapien imperdiet ornare. In faucibus. Morbi vehicula.	t	f	2022-10-28 00:13:43
45	13	57	Proin eget odio. Aliquam vulputate ullamcorper magna.	f	f	2022-10-28 01:02:18
46	80	70	eleifend vitae, erat. Vivamus nisi. Mauris nulla.	t	t	2022-10-27 18:24:32
47	20	49	id risus quis diam luctus lobortis. Class	f	t	2022-10-28 10:36:22
48	52	97	tellus faucibus leo, in lobortis tellus justo	f	t	2022-10-28 00:32:46
49	25	81	Cras vulputate velit eu sem. Pellentesque ut	f	t	2022-10-27 20:12:36
50	5	96	augue malesuada malesuada. Integer id magna et	f	t	2022-10-28 04:14:44
51	3	29	a odio semper cursus. Integer mollis. Integer	t	t	2022-10-27 14:01:39
52	27	69	convallis est, vitae sodales nisi magna sed	f	f	2022-10-27 20:39:41
53	74	14	In mi pede, nonummy ut, molestie in,	t	t	2022-10-27 21:46:33
54	92	71	vehicula aliquet libero. Integer in magna. Phasellus	f	f	2022-10-27 15:13:52
55	10	4	lectus. Nullam suscipit, est ac facilisis facilisis,	t	t	2022-10-27 23:20:59
56	51	10	vitae dolor. Donec fringilla. Donec feugiat metus	t	t	2022-10-27 21:54:28
57	92	35	justo eu arcu. Morbi sit amet massa.	f	f	2022-10-27 15:49:04
58	46	92	vel lectus. Cum sociis natoque penatibus et	f	t	2022-10-27 13:53:37
59	13	39	mattis. Cras eget nisi dictum augue malesuada	f	t	2022-10-28 05:04:07
60	34	94	lorem semper auctor. Mauris vel turpis. Aliquam	f	f	2022-10-28 02:44:34
61	65	26	porttitor tellus non magna. Nam ligula elit,	t	f	2022-10-28 01:12:34
62	16	17	amet, faucibus ut, nulla. Cras eu tellus	t	f	2022-10-27 16:06:43
63	4	13	Integer id magna et ipsum cursus vestibulum.	t	f	2022-10-27 21:30:42
64	20	43	erat, in consectetuer ipsum nunc id enim.	t	f	2022-10-28 10:27:20
65	53	22	ligula. Nullam feugiat placerat velit. Quisque varius.	f	f	2022-10-28 10:15:07
66	76	16	mi tempor lorem, eget mollis lectus pede	t	t	2022-10-27 12:43:01
67	5	57	augue ac ipsum. Phasellus vitae mauris sit	t	t	2022-10-27 17:39:50
68	55	12	malesuada augue ut lacus. Nulla tincidunt, neque	t	f	2022-10-28 02:26:22
69	59	89	scelerisque neque sed sem egestas blandit. Nam	f	t	2022-10-27 23:54:53
70	92	79	egestas a, dui. Cras pellentesque. Sed dictum.	f	t	2022-10-27 13:24:54
71	29	21	venenatis lacus. Etiam bibendum fermentum metus. Aenean	t	t	2022-10-28 01:03:27
72	27	32	tempor diam dictum sapien. Aenean massa. Integer	t	f	2022-10-28 06:34:37
73	31	6	pharetra, felis eget varius ultrices, mauris ipsum	t	t	2022-10-28 01:52:51
74	37	42	quis arcu vel quam dignissim pharetra. Nam	f	t	2022-10-28 05:04:57
75	8	61	Sed nec metus facilisis lorem tristique aliquet.	f	f	2022-10-27 20:00:46
76	68	43	cursus purus. Nullam scelerisque neque sed sem	f	t	2022-10-28 06:43:21
77	70	49	augue ac ipsum. Phasellus vitae mauris sit	f	f	2022-10-27 19:08:02
78	72	41	Sed molestie. Sed id risus quis diam	f	t	2022-10-28 02:30:57
79	49	100	ullamcorper eu, euismod ac, fermentum vel, mauris.	f	t	2022-10-28 09:46:30
80	26	66	Donec tempus, lorem fringilla ornare placerat, orci	t	f	2022-10-28 08:42:15
81	72	84	felis purus ac tellus. Suspendisse sed dolor.	t	f	2022-10-28 10:24:58
82	98	23	est, mollis non, cursus non, egestas a,	f	t	2022-10-27 17:19:54
83	26	72	Nunc mauris elit, dictum eu, eleifend nec,	f	f	2022-10-27 22:18:35
84	85	67	lorem semper auctor. Mauris vel turpis. Aliquam	t	t	2022-10-27 20:26:42
85	11	9	at arcu. Vestibulum ante ipsum primis in	t	f	2022-10-27 17:28:08
86	40	35	cursus purus. Nullam scelerisque neque sed sem	f	t	2022-10-28 10:22:47
87	70	12	et tristique pellentesque, tellus sem mollis dui,	f	t	2022-10-27 19:29:48
88	66	69	dolor elit, pellentesque a, facilisis non, bibendum	f	t	2022-10-28 10:55:55
89	94	14	vel lectus. Cum sociis natoque penatibus et	f	f	2022-10-28 08:45:32
90	17	82	quis, pede. Praesent eu dui. Cum sociis	f	t	2022-10-27 19:10:36
91	51	81	amet, consectetuer adipiscing elit. Etiam laoreet, libero	f	t	2022-10-28 10:51:24
92	21	72	eu nibh vulputate mauris sagittis placerat. Cras	f	f	2022-10-28 07:04:47
93	10	26	tellus justo sit amet nulla. Donec non	f	f	2022-10-28 09:48:26
94	74	58	dignissim pharetra. Nam ac nulla. In tincidunt	t	t	2022-10-28 11:05:50
95	95	86	luctus sit amet, faucibus ut, nulla. Cras	f	f	2022-10-28 00:03:13
96	65	18	Cras pellentesque. Sed dictum. Proin eget odio.	f	t	2022-10-27 15:28:14
97	8	98	id ante dictum cursus. Nunc mauris elit,	t	f	2022-10-27 22:02:12
98	47	60	augue ac ipsum. Phasellus vitae mauris sit	t	f	2022-10-27 23:13:28
99	5	33	eu nibh vulputate mauris sagittis placerat. Cras	t	f	2022-10-28 03:35:08
100	9	75	sit amet luctus vulputate, nisi sem semper	t	t	2022-10-28 05:27:07
\.


--
-- Data for Name: one_sensor_bots_data; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.one_sensor_bots_data (id, bot_id, temp, press, created_at) FROM stdin;
1	1	23	755	2022-10-27 14:10:18
2	1	6	742	2022-10-27 21:09:29
3	1	0	745	2022-10-27 13:10:43
4	1	7	761	2022-10-27 19:13:40
5	1	6	741	2022-10-27 15:51:14
6	1	25	750	2022-10-28 04:54:45
7	1	16	743	2022-10-27 16:41:52
8	1	7	761	2022-10-27 19:55:06
9	1	4	760	2022-10-27 20:32:11
10	1	19	748	2022-10-27 13:05:25
11	1	21	762	2022-10-27 17:25:47
12	1	30	749	2022-10-27 16:04:43
13	1	2	758	2022-10-28 03:20:04
14	1	3	747	2022-10-27 11:47:36
15	1	26	762	2022-10-27 21:25:13
16	1	8	744	2022-10-27 17:30:10
17	1	1	749	2022-10-27 14:34:27
18	1	23	764	2022-10-28 01:02:26
19	1	17	746	2022-10-27 12:06:57
20	1	0	764	2022-10-27 16:13:24
21	1	28	757	2022-10-28 09:32:03
22	1	30	758	2022-10-27 12:24:00
23	1	27	752	2022-10-28 07:57:37
24	1	13	757	2022-10-27 14:33:09
25	1	11	758	2022-10-28 03:11:56
26	1	9	747	2022-10-28 09:48:38
27	1	6	760	2022-10-27 21:25:39
28	1	10	759	2022-10-28 08:44:09
29	1	16	754	2022-10-27 20:29:37
30	1	0	762	2022-10-28 06:35:56
31	1	11	741	2022-10-28 10:38:07
32	1	27	761	2022-10-28 02:03:24
33	1	9	756	2022-10-28 00:00:20
34	1	25	759	2022-10-27 15:49:12
35	1	26	750	2022-10-28 08:42:17
36	1	11	762	2022-10-27 16:07:17
37	1	8	749	2022-10-27 21:39:07
38	1	12	752	2022-10-28 00:11:03
39	1	21	750	2022-10-28 08:51:19
40	1	27	753	2022-10-27 16:21:39
41	1	4	754	2022-10-27 15:57:07
42	1	18	760	2022-10-27 17:37:36
43	1	7	743	2022-10-28 10:22:53
44	1	3	742	2022-10-27 14:24:38
45	1	10	749	2022-10-28 03:34:04
46	1	6	749	2022-10-28 06:56:55
47	1	23	753	2022-10-27 23:36:34
48	1	1	744	2022-10-28 07:33:09
49	1	21	748	2022-10-27 12:26:26
50	1	21	747	2022-10-27 22:49:52
51	1	25	761	2022-10-28 00:38:05
52	1	5	759	2022-10-28 10:03:51
53	1	9	753	2022-10-27 22:51:30
54	1	17	748	2022-10-28 05:34:05
55	1	26	755	2022-10-28 01:48:48
56	1	30	748	2022-10-28 08:11:27
57	1	14	753	2022-10-27 14:25:00
58	1	16	751	2022-10-27 14:23:48
59	1	7	759	2022-10-28 03:53:26
60	1	17	759	2022-10-27 21:29:10
61	1	4	753	2022-10-28 05:03:58
62	1	26	760	2022-10-27 21:44:54
63	1	10	741	2022-10-27 12:18:22
64	1	29	764	2022-10-28 01:03:20
65	1	23	748	2022-10-27 16:31:38
66	1	2	763	2022-10-27 13:59:22
67	1	27	745	2022-10-27 17:46:19
68	1	5	765	2022-10-27 16:25:25
69	1	22	742	2022-10-28 07:38:45
70	1	21	760	2022-10-27 23:28:59
71	1	4	757	2022-10-28 07:25:38
72	1	1	758	2022-10-27 13:04:16
73	1	12	741	2022-10-28 00:05:30
74	1	17	748	2022-10-28 01:58:42
75	1	23	755	2022-10-28 00:32:04
76	1	11	753	2022-10-27 20:11:59
77	1	18	747	2022-10-27 12:07:34
78	1	29	740	2022-10-28 04:33:46
79	1	23	743	2022-10-28 10:13:17
80	1	4	763	2022-10-28 07:16:38
81	1	24	745	2022-10-27 17:21:35
82	1	30	745	2022-10-28 08:37:18
83	1	12	741	2022-10-27 12:03:44
84	1	19	762	2022-10-27 19:07:25
85	1	14	743	2022-10-27 12:10:23
86	1	8	748	2022-10-27 16:12:07
87	1	4	761	2022-10-27 20:47:56
88	1	2	750	2022-10-27 15:48:44
89	1	31	750	2022-10-28 05:53:19
90	1	26	743	2022-10-27 23:56:55
91	1	10	753	2022-10-27 18:31:04
92	1	11	747	2022-10-28 01:59:07
93	1	2	751	2022-10-27 21:01:07
94	1	22	749	2022-10-28 07:48:56
95	1	4	758	2022-10-28 09:07:40
96	1	11	755	2022-10-27 16:37:38
97	1	14	758	2022-10-27 12:59:49
98	1	10	750	2022-10-27 20:29:22
99	1	26	741	2022-10-28 06:51:20
100	1	24	759	2022-10-28 00:31:51
\.


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.photo (id, url, owner_id, uploaded_at, size) FROM stdin;
46	nytimes.com/site	51	2021-10-28 11:19:00	47430
47	twitter.com/group/9	45	2021-10-28 11:19:00	27695
48	google.com/sub/cars	24	2021-10-28 11:19:00	43562
49	zoom.us/sub/cars	2	2021-10-28 11:19:00	29937
50	ebay.com/user/110	13	2021-10-28 11:19:00	48664
52	naver.com/set/1654	48	2021-10-28 11:19:00	26570
53	yahoo.com/site	16	2021-10-28 11:19:00	39738
54	naver.com/sub	98	2021-10-28 11:19:00	41820
56	youtube.com/user/11088	26	2021-10-28 11:19:00	10645
57	ebay.com/en-ca	76	2021-10-28 11:19:00	44441
61	baidu.com/settings	12	2021-10-28 11:19:00	23906
62	google.com/group/978494	88	2021-10-28 11:19:00	39109
63	pinterest.com/site/4161	9	2021-10-28 11:19:00	20018
60	google.com/en-ca/hbnkmjm	34	2021-10-28 11:19:00	21355
59	google.com/group/9	44	2021-10-28 11:19:00	24586
58	youtube.com/user/110	49	2021-10-28 11:19:00	31032
55	youtube.com/sub/21	58	2021-10-28 11:19:00	14472
51	cnn.com/user/110	69	2021-10-28 11:19:00	25479
3	walmart.com/user/110	36	2021-10-28 11:19:00	18617
6	cnn.com/en-us	38	2021-10-28 11:19:00	49972
1	naver.com/site	1	2021-10-28 11:19:00	23591
29	guardian.co.uk/fr	70	2021-10-28 11:19:00	38539
30	walmart.com/one	73	2021-10-28 11:19:00	43387
10	ebay.com/site	84	2021-10-28 11:19:00	18285
2	wikipedia.org/sub/cars	96	2021-10-28 11:19:00	41171
4	youtube.com/en-us	29	2021-10-28 11:19:00	49054
5	bbc.co.uk/en-us	72	2021-10-28 11:19:00	21320
7	guardian.co.uk/sub	68	2021-10-28 11:19:00	33571
8	yahoo.com/fr	31	2021-10-28 11:19:00	35911
9	instagram.com/settings	56	2021-10-28 11:19:00	27637
11	whatsapp.com/settings	64	2021-10-28 11:19:00	13606
12	ebay.com/group/9	100	2021-10-28 11:19:00	31038
14	naver.com/en-ca	20	2021-10-28 11:19:00	28602
15	guardian.co.uk/one	11	2021-10-28 11:19:00	49620
16	naver.com/settings	94	2021-10-28 11:19:00	47941
17	nytimes.com/fr	8	2021-10-28 11:19:00	18718
18	baidu.com/sub/cars	95	2021-10-28 11:19:00	41781
19	walmart.com/group/9	77	2021-10-28 11:19:00	44475
20	yahoo.com/en-us	40	2021-10-28 11:19:00	13572
21	pinterest.com/en-ca	10	2021-10-28 11:19:00	15825
23	wikipedia.org/sub	17	2021-10-28 11:19:00	38392
25	walmart.com/site	57	2021-10-28 11:19:00	10698
26	pinterest.com/site	3	2021-10-28 11:19:00	29547
27	google.com/set/yvbm nn	7	2021-10-28 11:19:00	21895
32	bbc.co.uk/fr	18	2021-10-28 11:19:00	14221
33	twitter.com/group/9852	47	2021-10-28 11:19:00	10106
34	pinterest.com/settings	30	2021-10-28 11:19:00	49865
35	facebook.com/group/9	35	2021-10-28 11:19:00	25307
37	google.com/en-ca	86	2021-10-28 11:19:00	19656
38	zoom.us/en-ca	87	2021-10-28 11:19:00	11975
39	youtube.com/sub	90	2021-10-28 11:19:00	15953
41	facebook.com/fr	43	2021-10-28 11:19:00	19612
43	google.com/settings	23	2021-10-28 11:19:00	30950
44	netflix.com/sub/cars	39	2021-10-28 11:19:00	48928
31	baidu.com/group/9	74	2021-10-28 11:19:00	29359
28	pinterest.com/en-gr	75	2021-10-28 11:19:00	32910
24	wikipedia.org/one	82	2021-10-28 11:19:00	33577
22	netflix.com/fr	83	2021-10-28 11:19:00	25497
36	whatsapp.com/site	85	2021-10-28 11:19:00	32624
40	zoom.us/user/110	91	2021-10-28 11:19:00	24621
42	facebook.com/sub	92	2021-10-28 11:19:00	23349
13	google.com/one	93	2021-10-28 11:19:00	38321
45	whatsapp.com/en-us	97	2021-10-28 11:19:00	45176
65	yahoo.com/group/9	42	2021-10-28 11:19:00	20228
66	nytimes.com/fr/hjbjhb	79	2021-10-28 11:19:00	44383
67	facebook.com/sub/cars	6	2021-10-28 11:19:00	13887
68	netflix.com/user/110	37	2021-10-28 11:19:00	12075
69	google.com/sub/horses	55	2021-10-28 11:19:00	33155
70	yahoo.com/france	66	2021-10-28 11:19:00	23421
71	facebook.com/en-ca	14	2021-10-28 11:19:00	40850
72	pinterest.com/sub	28	2021-10-28 11:19:00	24883
76	yahoo.com/sub/cars	15	2021-10-28 11:19:00	27267
77	walmart.com/site/461	19	2021-10-28 11:19:00	49259
78	ebay.com/settings	78	2021-10-28 11:19:00	37535
80	instagram.com/sub	80	2021-10-28 11:19:00	15246
81	guardian.co.uk/sub/156	67	2021-10-28 11:19:00	40928
83	bbc.co.uk/en-ru	22	2021-10-28 11:19:00	39539
86	zoom.us/fr	4	2021-10-28 11:19:00	26172
89	nytimes.com/ru	21	2021-10-28 11:19:00	38032
90	reddit.com/one	81	2021-10-28 11:19:00	13934
91	ebay.com/one	27	2021-10-28 11:19:00	17845
98	instagram.com/group/9	89	2021-10-28 11:19:00	31707
99	nytimes.com/settings	25	2021-10-28 11:19:00	17277
73	baidu.com/fr	5	2021-10-28 11:19:00	15390
74	cnn.com/user/12440	32	2021-10-28 11:19:00	14961
75	baidu.com/group/911	33	2021-10-28 11:19:00	10676
79	google.com/en-ca/484	41	2021-10-28 11:19:00	16827
82	pinterest.com/en-us/546	46	2021-10-28 11:19:00	28864
84	pinterest.com/en-us	50	2021-10-28 11:19:00	27066
85	instagram.com/sub/465131	52	2021-10-28 11:19:00	28324
87	whatsapp.com/site/1531	53	2021-10-28 11:19:00	21671
88	bbc.co.uk/fr/5161	54	2021-10-28 11:19:00	29050
92	zoom.us/france	59	2021-10-28 11:19:00	46349
93	google.com/sub/planes	60	2021-10-28 11:19:00	47501
94	youtube.com/group/9	61	2021-10-28 11:19:00	29408
95	naver.com/en-us	62	2021-10-28 11:19:00	33295
96	instagram.com/fr	63	2021-10-28 11:19:00	15753
97	netflix.com/en-ca	65	2021-10-28 11:19:00	36062
100	netflix.com/settings	71	2021-10-28 11:19:00	30047
64	walmart.com/group/74949	99	2021-10-28 11:19:00	36300
\.


--
-- Data for Name: three_sensor_bots_data; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.three_sensor_bots_data (id, bot_id, temp_out, press, temp_in, humid_air, humid_soil, photo_id, created_at) FROM stdin;
1	3	11	745	21	20	76	\N	2022-10-25 22:35:52
2	3	23	755	14	83	35	\N	2022-09-20 17:23:14
3	3	24	751	2	48	38	\N	2022-09-28 11:40:08
4	3	25	758	20	16	63	\N	2022-08-03 05:42:49
5	3	20	745	34	50	77	\N	2022-09-26 20:02:09
6	3	5	762	30	9	95	\N	2022-09-26 01:55:33
7	3	8	757	9	14	48	\N	2022-09-26 01:08:56
8	3	11	754	4	38	99	\N	2022-10-13 07:54:37
9	3	17	749	5	69	45	\N	2022-09-16 17:46:57
10	3	19	754	2	95	25	\N	2022-08-23 18:09:03
11	3	12	750	19	62	35	\N	2022-09-09 14:51:21
12	3	2	762	20	97	43	\N	2022-10-26 13:47:01
13	3	23	749	2	8	19	\N	2022-10-21 21:47:53
14	3	13	754	8	76	21	\N	2022-10-27 06:30:36
15	3	4	758	23	81	72	\N	2022-09-06 02:53:34
16	3	26	741	17	37	81	\N	2022-09-08 10:33:40
17	3	22	741	10	53	92	\N	2022-09-05 05:05:07
18	3	14	762	37	94	56	\N	2022-08-11 23:57:56
19	3	18	744	26	28	87	\N	2022-08-05 03:05:19
20	3	3	744	28	96	99	\N	2022-08-02 22:03:55
21	3	16	751	34	41	20	\N	2022-08-28 22:21:12
22	3	27	758	5	13	26	\N	2022-10-14 08:20:56
23	3	10	764	1	28	97	\N	2022-08-12 19:30:19
24	3	16	750	27	90	60	\N	2022-09-04 00:33:39
25	3	20	745	23	83	10	\N	2022-09-12 08:28:42
26	3	10	761	5	44	67	\N	2022-09-21 13:18:14
27	3	15	750	22	2	38	\N	2022-08-02 22:20:02
28	3	8	745	31	97	88	\N	2022-09-18 13:49:01
29	3	17	763	28	91	19	\N	2022-08-05 10:08:15
30	3	14	741	34	44	54	\N	2022-09-28 22:38:06
31	3	17	763	5	27	86	\N	2022-09-28 23:03:32
32	3	26	763	12	81	24	\N	2022-09-02 21:22:46
33	3	29	756	26	9	33	\N	2022-09-14 02:37:42
34	3	27	757	36	26	67	\N	2022-08-22 10:09:20
35	3	1	752	5	69	24	\N	2022-10-13 07:32:42
36	3	22	761	29	23	55	\N	2022-08-25 14:26:20
37	3	22	758	3	83	8	\N	2022-09-13 19:52:04
38	3	20	748	28	63	82	\N	2022-09-20 08:35:52
39	3	4	765	8	82	78	\N	2022-08-05 19:22:35
40	3	14	744	33	25	80	\N	2022-10-12 18:40:04
41	3	17	759	13	59	81	\N	2022-09-21 17:46:05
42	3	9	744	36	43	90	\N	2022-10-04 04:10:42
43	3	26	748	31	69	79	\N	2022-09-18 07:29:21
44	3	16	744	7	48	50	\N	2022-08-15 20:28:39
45	3	26	750	32	27	42	\N	2022-09-14 18:42:12
46	3	2	762	2	38	22	\N	2022-08-10 14:05:06
47	3	23	742	17	35	91	\N	2022-10-26 22:57:36
48	3	16	740	21	67	23	\N	2022-10-09 13:26:55
49	3	21	741	25	19	48	\N	2022-10-22 14:48:08
50	3	7	754	20	42	95	\N	2022-10-13 00:12:51
51	3	15	747	9	93	63	\N	2022-08-06 05:22:27
52	3	25	758	22	77	77	\N	2022-10-12 05:21:29
53	3	23	743	36	23	93	\N	2022-10-03 15:06:59
54	3	19	742	15	5	21	\N	2022-09-30 11:04:39
55	3	25	749	23	62	96	\N	2022-09-30 21:49:56
56	3	11	758	5	79	38	\N	2022-08-03 10:24:07
57	3	31	764	9	36	77	\N	2022-08-18 10:43:26
58	3	26	752	27	47	36	\N	2022-10-05 16:06:36
59	3	12	760	3	52	91	\N	2022-10-03 13:45:51
60	3	18	748	29	97	26	\N	2022-09-27 21:34:44
61	3	23	741	34	22	37	\N	2022-08-15 23:19:06
62	3	1	753	6	96	47	\N	2022-09-07 11:55:35
63	3	19	757	26	38	50	\N	2022-09-18 09:24:45
64	3	2	763	24	13	24	\N	2022-10-25 11:52:27
65	3	17	748	21	40	67	\N	2022-08-20 17:59:30
66	3	7	745	12	45	82	\N	2022-10-03 04:49:50
67	3	19	747	26	5	14	\N	2022-10-27 03:01:57
68	3	25	743	8	20	75	\N	2022-09-03 22:36:11
69	3	9	753	37	51	25	\N	2022-09-13 17:51:50
70	3	17	754	29	27	42	\N	2022-08-05 12:45:02
71	3	19	755	13	82	39	\N	2022-10-20 15:43:55
72	3	12	761	36	11	17	\N	2022-08-31 03:09:30
73	3	7	750	32	87	15	\N	2022-08-28 14:04:25
74	3	13	751	1	6	60	\N	2022-10-02 14:16:09
75	3	0	748	37	38	82	\N	2022-10-22 19:04:19
76	3	17	758	14	48	41	\N	2022-10-25 00:23:39
77	3	13	752	36	59	52	\N	2022-09-23 23:54:45
78	3	26	754	5	32	49	\N	2022-09-18 04:38:53
79	3	11	760	2	81	34	\N	2022-08-10 13:57:53
80	3	11	755	3	80	67	\N	2022-09-03 00:48:12
81	3	28	746	19	81	70	\N	2022-10-22 08:41:28
82	3	6	749	24	31	57	\N	2022-08-29 02:58:16
83	3	30	764	16	64	48	\N	2022-09-07 22:51:24
84	3	23	741	34	98	42	\N	2022-08-02 15:36:23
85	3	8	764	3	26	98	\N	2022-08-22 15:59:34
86	3	28	756	33	88	54	\N	2022-08-31 17:12:31
87	3	14	754	3	90	80	\N	2022-09-01 11:03:29
88	3	23	757	36	18	78	\N	2022-09-06 18:55:41
89	3	31	751	28	14	52	\N	2022-10-12 08:28:49
90	3	25	763	20	22	98	\N	2022-08-09 22:21:55
91	3	14	750	15	62	38	\N	2022-08-31 07:43:13
92	3	7	758	30	28	57	\N	2022-08-09 16:11:19
93	3	16	756	22	4	52	\N	2022-10-10 17:24:23
94	3	6	748	5	47	85	\N	2022-09-21 08:57:19
95	3	25	740	9	39	89	\N	2022-08-15 12:36:42
96	3	8	762	2	78	88	\N	2022-08-18 06:06:27
97	3	12	742	22	82	31	\N	2022-10-22 04:52:09
98	3	30	756	34	78	28	\N	2022-09-05 02:33:34
99	3	11	751	21	87	27	\N	2022-09-07 17:32:06
100	3	24	740	1	9	33	\N	2022-10-03 22:30:36
\.


--
-- Data for Name: two_sensor_bots_data; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.two_sensor_bots_data (id, bot_id, temp_out, press, temp_in, humid_air, created_at) FROM stdin;
1	2	15	759	35	91	2022-09-09 04:33:31
2	2	2	748	12	7	2022-08-24 12:23:43
3	2	1	741	27	49	2022-09-15 23:16:45
4	2	1	742	27	43	2022-10-17 20:37:05
5	2	19	751	3	79	2022-09-19 13:36:59
6	2	30	744	21	12	2022-09-03 02:01:35
7	2	4	742	9	6	2022-08-15 07:42:50
8	2	7	741	2	72	2022-09-13 16:33:12
9	2	10	744	10	26	2022-10-13 01:24:58
10	2	0	747	2	14	2022-10-20 13:58:50
11	2	15	760	5	11	2022-10-16 14:16:43
12	2	23	751	33	75	2022-09-19 02:49:41
13	2	28	764	18	71	2022-09-19 11:56:13
14	2	24	763	7	49	2022-08-13 22:16:37
15	2	26	747	31	59	2022-10-13 11:33:50
16	2	9	741	21	87	2022-09-07 08:52:36
17	2	8	745	38	17	2022-09-14 10:59:57
18	2	6	759	18	38	2022-08-03 19:39:47
19	2	9	740	33	45	2022-10-25 11:04:57
20	2	28	762	23	61	2022-09-28 13:45:22
21	2	1	758	33	59	2022-10-21 22:01:48
22	2	15	752	2	27	2022-08-24 01:20:40
23	2	22	748	7	60	2022-10-25 19:34:59
24	2	23	746	20	28	2022-08-30 01:06:01
25	2	8	752	23	35	2022-10-02 15:01:55
26	2	9	740	29	16	2022-09-30 21:16:29
27	2	23	756	1	20	2022-08-02 14:27:12
28	2	10	745	8	37	2022-09-01 22:20:28
29	2	6	763	31	8	2022-08-27 06:48:17
30	2	19	760	23	1	2022-10-02 06:16:18
31	2	12	752	2	29	2022-09-29 17:20:06
32	2	30	747	34	11	2022-09-13 01:47:22
33	2	14	746	21	91	2022-08-15 21:41:21
34	2	14	762	8	1	2022-08-24 09:49:58
35	2	23	761	21	32	2022-09-02 13:34:59
36	2	9	743	35	86	2022-08-29 19:12:02
37	2	3	763	2	86	2022-08-11 18:48:10
38	2	22	747	22	59	2022-10-03 01:27:33
39	2	26	753	9	81	2022-08-11 12:19:53
40	2	7	757	30	93	2022-09-14 20:31:40
41	2	21	756	24	45	2022-09-27 06:21:07
42	2	24	752	1	92	2022-08-08 10:40:52
43	2	3	752	34	86	2022-09-23 17:30:53
44	2	4	750	3	70	2022-08-22 02:46:39
45	2	14	752	27	68	2022-09-24 01:44:19
46	2	21	751	27	93	2022-10-26 15:03:29
47	2	22	755	2	49	2022-08-16 02:24:04
48	2	28	765	24	19	2022-09-15 14:32:13
49	2	12	745	9	52	2022-09-19 10:28:52
50	2	4	761	9	64	2022-10-07 03:31:19
51	2	7	754	18	64	2022-10-26 00:54:59
52	2	6	755	13	10	2022-09-20 04:49:58
53	2	19	746	9	52	2022-10-12 07:50:27
54	2	0	745	25	82	2022-09-21 10:19:05
55	2	21	750	11	61	2022-08-01 22:01:55
56	2	6	752	1	25	2022-08-13 03:20:38
57	2	9	742	37	28	2022-08-13 02:36:00
58	2	30	747	37	44	2022-10-17 01:32:12
59	2	6	745	10	27	2022-09-27 22:29:06
60	2	10	759	21	8	2022-10-06 22:22:00
61	2	17	741	35	42	2022-10-03 22:51:48
62	2	28	756	15	31	2022-10-03 08:11:56
63	2	8	760	34	93	2022-09-30 16:11:11
64	2	3	758	37	26	2022-09-19 00:48:34
65	2	28	761	37	32	2022-09-03 20:30:28
66	2	21	761	2	12	2022-09-15 03:34:37
67	2	16	759	31	80	2022-09-30 09:49:46
68	2	4	749	25	56	2022-09-24 01:05:42
69	2	30	762	8	51	2022-09-19 23:47:54
70	2	26	752	27	63	2022-10-08 22:40:07
71	2	30	755	29	91	2022-08-19 03:07:21
72	2	23	760	8	94	2022-10-09 03:36:56
73	2	15	757	32	11	2022-08-18 22:46:22
74	2	17	749	16	52	2022-10-13 22:04:50
75	2	9	763	20	56	2022-09-26 14:05:54
76	2	30	742	29	18	2022-09-25 02:24:32
77	2	2	743	11	90	2022-09-03 17:12:59
78	2	28	744	11	66	2022-10-16 07:09:46
79	2	1	742	13	17	2022-08-30 03:25:19
80	2	2	743	12	19	2022-10-27 16:39:34
81	2	19	753	22	15	2022-08-25 06:46:54
82	2	10	761	27	59	2022-10-27 09:15:28
83	2	18	761	31	98	2022-08-24 18:11:19
84	2	24	755	30	29	2022-08-31 19:58:58
85	2	17	764	18	87	2022-09-24 09:24:10
86	2	24	755	22	41	2022-08-18 23:37:53
87	2	19	742	6	88	2022-08-09 18:41:24
88	2	21	749	30	38	2022-10-02 21:21:44
89	2	7	756	35	31	2022-08-18 02:55:46
90	2	1	744	36	6	2022-09-16 14:14:11
91	2	26	763	25	28	2022-09-17 05:27:44
92	2	7	742	31	26	2022-08-10 12:49:02
93	2	22	749	5	5	2022-10-05 19:55:38
94	2	2	759	0	59	2022-10-12 09:43:44
95	2	28	760	15	79	2022-09-04 10:08:50
96	2	28	752	22	37	2022-10-03 16:36:26
97	2	10	747	19	5	2022-08-30 23:09:36
98	2	8	755	5	40	2022-08-05 19:59:15
99	2	14	747	25	38	2022-10-19 09:23:00
100	2	16	751	14	73	2022-10-06 11:35:03
101	4	12	742	1	58	2022-10-13 11:51:38
102	4	24	762	14	94	2022-08-07 09:03:31
103	4	17	763	32	21	2022-10-17 17:08:57
104	4	1	756	20	8	2022-09-13 00:20:22
105	4	2	750	25	84	2022-08-29 09:43:01
106	4	28	761	2	74	2022-10-26 15:31:35
107	4	28	758	20	44	2022-08-06 05:22:36
108	4	22	757	35	91	2022-10-18 17:03:17
109	4	4	758	1	44	2022-09-14 14:59:22
110	4	16	744	37	33	2022-09-10 10:59:48
111	4	2	756	7	41	2022-08-19 16:06:56
112	4	4	745	0	89	2022-10-24 15:45:36
113	4	8	752	30	13	2022-10-17 17:27:08
114	4	27	765	37	3	2022-09-13 00:25:05
115	4	2	753	34	68	2022-09-11 07:18:30
116	4	14	745	27	39	2022-08-26 00:19:37
117	4	6	753	6	55	2022-09-26 05:58:47
118	4	24	752	29	72	2022-08-31 06:10:50
119	4	26	747	32	39	2022-09-08 13:45:30
120	4	25	754	5	18	2022-10-09 01:18:16
121	4	23	758	13	18	2022-08-20 19:27:57
122	4	18	744	5	92	2022-09-07 03:18:57
123	4	11	756	18	87	2022-09-30 16:16:42
124	4	22	749	31	65	2022-09-26 17:16:26
125	4	18	750	36	6	2022-09-13 18:01:38
126	4	7	749	28	22	2022-09-27 09:22:39
127	4	2	758	30	51	2022-10-12 17:17:22
128	4	22	760	16	38	2022-08-20 11:51:52
129	4	0	761	10	80	2022-09-21 21:11:59
130	4	29	747	13	74	2022-09-15 01:38:52
131	4	2	753	36	40	2022-09-10 15:13:38
132	4	24	741	36	94	2022-09-12 11:18:28
133	4	10	753	11	19	2022-08-06 01:12:31
134	4	29	741	15	11	2022-09-17 21:29:29
135	4	29	756	27	56	2022-09-19 05:15:36
136	4	5	761	5	59	2022-09-25 02:42:27
137	4	21	750	0	58	2022-10-25 20:01:52
138	4	27	753	29	27	2022-09-08 02:14:11
139	4	29	757	7	79	2022-08-25 09:59:01
140	4	2	758	2	30	2022-09-07 03:59:05
141	4	19	756	8	86	2022-08-31 12:09:54
142	4	14	765	37	12	2022-09-12 15:11:24
143	4	9	752	11	34	2022-10-26 00:40:04
144	4	10	749	18	65	2022-10-11 07:17:16
145	4	1	755	13	90	2022-09-26 05:10:40
146	4	10	749	5	90	2022-10-28 03:46:23
147	4	16	754	4	72	2022-10-05 01:55:42
148	4	12	762	19	77	2022-08-04 02:27:37
149	4	21	746	11	12	2022-09-13 05:30:47
150	4	12	749	34	35	2022-10-21 16:49:41
151	4	27	746	33	78	2022-10-27 02:19:19
152	4	6	752	18	33	2022-08-31 21:12:23
153	4	22	755	14	58	2022-09-05 21:47:42
154	4	1	761	32	79	2022-10-04 19:25:59
155	4	4	761	33	37	2022-08-02 14:06:12
156	4	31	751	12	1	2022-08-11 10:36:47
157	4	24	761	12	17	2022-08-06 11:06:11
158	4	9	762	4	9	2022-08-12 22:17:26
159	4	6	765	16	59	2022-09-21 07:53:34
160	4	19	750	13	97	2022-09-01 14:05:35
161	4	1	751	14	62	2022-10-12 08:10:33
162	4	0	745	35	85	2022-10-14 23:37:39
163	4	13	757	0	90	2022-08-21 00:58:37
164	4	2	744	12	69	2022-09-02 12:47:35
165	4	28	756	29	46	2022-09-11 01:07:31
166	4	7	748	34	7	2022-09-01 02:13:48
167	4	21	748	7	4	2022-10-03 11:42:01
168	4	12	742	36	85	2022-09-08 01:15:31
169	4	7	742	7	14	2022-08-05 08:14:15
170	4	16	764	1	56	2022-09-16 17:13:49
171	4	24	747	0	57	2022-08-06 10:44:59
172	4	4	740	4	7	2022-08-08 00:48:15
173	4	19	765	36	58	2022-08-21 03:39:00
174	4	20	748	5	50	2022-09-24 20:21:25
175	4	1	759	7	26	2022-09-26 07:31:44
176	4	5	751	36	62	2022-10-11 07:07:00
177	4	11	758	8	19	2022-09-12 06:20:09
178	4	12	748	33	53	2022-08-30 06:11:30
179	4	20	765	32	38	2022-09-23 03:44:08
180	4	9	750	6	51	2022-08-03 04:03:33
181	4	23	751	19	46	2022-10-11 18:17:51
182	4	27	749	16	90	2022-10-15 19:26:13
183	4	21	744	20	63	2022-09-25 14:41:44
184	4	28	763	15	56	2022-08-01 16:05:40
185	4	20	753	16	69	2022-09-19 08:01:37
186	4	28	760	21	71	2022-09-07 18:14:15
187	4	14	747	5	34	2022-09-02 19:37:13
188	4	31	754	7	7	2022-09-30 09:08:12
189	4	6	746	38	69	2022-08-14 15:06:31
190	4	6	749	6	41	2022-08-17 12:25:51
191	4	19	762	14	96	2022-10-08 06:00:22
192	4	1	746	29	25	2022-08-31 08:03:21
193	4	25	760	23	88	2022-10-26 18:50:09
194	4	10	758	27	88	2022-10-27 02:31:19
195	4	25	755	32	32	2022-10-04 09:52:31
196	4	2	757	24	68	2022-08-01 14:19:54
197	4	31	757	31	86	2022-08-28 00:40:34
198	4	15	751	18	36	2022-10-05 13:59:38
199	4	10	751	5	93	2022-09-04 21:39:59
200	4	7	745	33	43	2022-09-10 04:04:17
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: my_admin
--

COPY public.users (id, first_name, last_name, email, phone, main_photo_id, created_at) FROM stdin;
17	Viacheslav	Kuldyaev	viacheslav@kuldyaev.ru	(920) 014-5400	23	2022-10-26 07:18:16
18	Gregory	Mann	vitae@yahoo.com	(495) 771-2984	32	2021-12-13 14:51:34
19	Sade	Reese	dignissim.tempor.arcu@aol.edu	(875) 276-6195	77	2023-09-21 03:12:33
20	Connor	Sharp	enim@hotmail.ru	(400) 138-5524	14	2021-12-02 23:41:12
21	Chelsea	Reid	adipiscing.ligula.aenean@mail.ru	(686) 277-3177	89	2022-09-10 20:09:31
22	Logan	Puckett	tellus.phasellus.elit@icloud.edu	(117) 966-8357	83	2022-04-30 18:56:21
23	Austin	Rivers	semper.pretium@hotmail.com	(752) 325-8850	43	2023-02-26 08:31:15
24	Craig	Finley	rutrum@google.ru	(791) 891-5784	48	2022-10-13 12:25:29
25	Genevieve	Mckinney	dolor.elit@outlook.com	(116) 823-1322	99	2023-08-21 21:09:52
26	Connor	Morrison	class.aptent@icloud.com	(676) 514-2837	56	2023-06-07 08:06:51
27	Clinton	Garcia	aliquam@icloud.edu	(656) 626-3127	91	2021-11-27 12:45:37
28	Galena	Acevedo	auctor.velit@hotmail.com	(835) 394-1166	72	2022-08-05 06:00:01
29	Aline	Stark	molestie.dapibus@outlook.edu	(584) 166-5549	4	2021-11-12 15:28:16
30	Ralph	Daugherty	tempus@google.ru	(619) 907-7226	34	2022-02-17 02:40:37
31	Lionel	Albert	rutrum@aol.org	(795) 774-3658	8	2022-02-04 16:04:14
1	Lucian	Frederick	ad@aol.org	(572) 782-7238	43	2022-05-16 01:13:54
2	Mariko	Kerr	nibh.quisque@hotmail.edu	(747) 537-5705	49	2023-05-28 09:48:07
3	Donovan	Cooper	morbi.accumsan.laoreet@outlook.com	(856) 694-1861	26	2022-06-13 23:46:19
4	Walter	Sutton	sollicitudin.adipiscing@google.ru	(338) 681-6662	86	2023-09-10 10:07:53
5	Fay	Hensley	penatibus.et@hotmail.edu	(127) 873-6178	43	2022-09-12 19:46:04
6	Quinlan	Cochran	nibh.sit.amet@yahoo.org	(674) 237-3175	67	2022-11-02 12:28:57
7	Martina	Wells	placerat.velit@aol.edu	(761) 892-0218	27	2022-02-06 11:36:52
8	Gail	Fernandez	in@mail.com	(294) 355-5790	17	2022-10-24 19:48:03
9	Garrett	Walsh	proin@mail.edu	(177) 252-1835	63	2022-10-25 03:17:19
10	Geraldine	Carson	in@hotmail.org	(788) 715-5376	21	2022-04-11 01:41:36
11	Ezra	Cunningham	dapibus.quam@google.com	(563) 767-3220	15	2023-05-27 12:55:10
12	Xantha	Robles	quisque.ac@yahoo.org	(651) 260-6544	61	2022-09-09 22:12:15
13	Ruby	Garcia	vitae.risus.duis@yahoo.com	(501) 943-4128	50	2022-11-13 09:58:30
14	Derek	Stewart	lectus.cum.sociis@icloud.com	(585) 503-1897	71	2023-08-02 06:44:46
15	Shafira	Watson	ornare@mail.com	(684) 371-3870	76	2021-12-28 08:27:56
16	Mira	Martin	risus@mail.edu	(559) 729-6483	53	2022-01-18 05:41:19
32	Caesar	Levy	cursus.non.egestas@icloud.com	(267) 977-6742	4	2023-09-02 04:24:20
33	Wesley	Dodson	donec.nibh@icloud.com	(575) 152-6682	76	2022-03-20 16:11:47
34	Malik	Meyer	ut.erat@google.com	(854) 201-8684	49	2022-07-24 19:47:03
35	Russell	Carson	turpis.in@hotmail.ru	(688) 101-3526	35	2023-07-03 10:31:12
36	Latifah	Emerson	etrgega@icloud.edu	(886) 845-4116	61	2021-10-28 12:05:13
37	Lunea	Glover	scelerisque.dui@icloud.org	(743) 548-3482	68	2022-03-03 21:00:09
38	Kasimir	Guerra	pede@yahoo.org	(683) 288-4484	49	2022-09-18 10:15:54
39	Deacon	Winters	cras.vehicula.aliquet@aol.org	(664) 462-8974	44	2023-10-06 15:35:26
40	Salvador	Lindsay	cum@outlook.com	(452) 932-8631	20	2022-01-10 12:31:17
41	Willow	Wells	fringilla.cursus@yahoo.ru	(922) 184-7743	20	2023-07-09 03:05:51
42	Ferris	Fulton	ultricies.adipiscing.enim@aol.com	(855) 445-3439	65	2022-11-14 21:55:09
43	Josiah	Stokes	egetertg.venenatis@yahoo.edu	(244) 611-1560	41	2023-03-30 04:09:40
44	Miriam	Barber	volutpat.ornare.facilisis@icloud.com	(209) 324-5246	86	2022-10-08 00:41:51
45	Mason	Riddle	facilisis.vitae@google.com	(591) 997-1773	47	2023-01-16 01:32:18
46	Gareth	Huff	nibh.sit@google.ru	(722) 555-1691	61	2022-10-13 02:35:31
47	Jada	Michael	vulputate.nisi@outlook.com	(584) 534-0928	33	2023-10-10 00:19:35
48	Leroy	Hebert	et.euismod@google.ru	(322) 566-5364	52	2022-12-13 07:23:41
49	Kyra	Jenkins	ac.ipsum.phasellus@yahoo.org	(720) 424-4857	17	2021-11-17 17:42:34
50	Brittany	Sherman	vitae.orci.phasellus@outlook.org	(662) 439-5007	43	2023-01-20 04:08:32
51	Myra	Chambers	arcu.morbi.sit@yahoo.ru	(569) 554-6763	46	2022-03-13 10:01:32
52	Laura	Davidson	lacus.ut@icloud.ru	(475) 494-0600	71	2022-06-25 00:33:22
53	Tarik	Compton	proin@aol.org	(291) 388-1553	53	2022-10-17 10:24:23
54	Maxine	Morrow	odio.semper@google.org	(623) 778-0275	49	2023-03-07 01:10:30
55	Coby	Carlson	nunc.pulvinar@yahoo.org	(721) 934-2255	69	2022-03-08 00:36:04
56	Olga	Adams	suspendisse.ac@aol.edu	(332) 952-2735	9	2022-01-29 12:40:07
57	Anne	Bailey	nullam@yahoo.edu	(137) 506-3626	25	2022-09-23 01:46:14
58	Grace	Mckinney	non@yahoo.org	(480) 567-9992	77	2022-06-01 03:13:31
59	Sylvester	Gay	metus@mail.com	(548) 282-0237	23	2022-10-03 08:56:44
60	Rose	Bauer	nibh.lacinia.orci@aol.ru	(858) 887-7722	72	2022-03-23 18:30:03
61	Nayda	Wade	fusce.aliquet.magna@icloud.com	(324) 565-7569	23	2023-09-18 13:41:35
62	Blythe	Watson	dictum@aol.com	(445) 826-8552	32	2023-08-19 15:14:47
63	Baxter	Hewitt	vestibulum.ut@hotmail.com	(934) 750-6111	69	2023-08-23 01:46:37
64	Deborah	Colon	egestas.hendrerit.neque@google.com	(863) 638-1629	11	2021-10-28 01:16:10
65	Zephania	Bradley	a@outlook.com	(821) 339-8232	23	2023-01-08 15:46:48
66	Zenaida	Key	in.faucibus@google.org	(284) 518-3922	70	2023-05-12 04:08:56
67	Quail	Adams	sit@mail.edu	(723) 947-7488	81	2021-11-16 15:19:44
68	Azalia	Sandoval	consequat@hotmail.com	(665) 477-9288	7	2023-10-25 15:40:49
69	Linda	Andrews	integer.sem@icloud.com	(722) 764-6756	8	2022-12-24 14:54:31
70	Aiko	Booker	morbi@outlook.org	(842) 367-1596	7	2022-10-04 00:28:25
71	Alana	Daugherty	turpis.egestas.aliquam@hotmail.ru	(392) 346-4123	76	2022-11-01 06:50:10
72	Charity	Poole	eu.odio@icloud.com	(213) 277-7615	5	2022-06-24 16:11:11
73	Nita	Walls	morbi@yahoo.ru	(774) 770-6838	8	2022-10-27 01:16:47
74	Brady	Peck	gravida.non.sollicitudin@aol.org	(232) 379-2682	76	2022-06-10 18:17:47
75	Melissa	Haney	eget@outlook.ru	(208) 974-6567	27	2023-09-16 12:58:17
76	Phillip	Juarez	nam.porttitor@google.edu	(415) 344-1619	57	2022-09-17 01:30:48
77	Quinn	Decker	duis.dignissim.tempor@outlook.edu	(212) 136-9433	19	2022-09-14 04:39:38
78	Basil	Joseph	mollis.non@google.edu	(313) 972-8888	78	2022-08-06 05:59:49
79	Lawrence	Stephens	interdum.enim.non@mail.org	(926) 665-4726	66	2023-07-05 01:58:00
80	Ora	Sandoval	dictum.mi.ac@hotmail.com	(753) 889-9632	80	2021-12-04 05:34:46
81	Cheyenne	Powell	massa.rutrum@icloud.org	(366) 430-7985	90	2022-10-03 00:00:19
82	Akeem	Christensen	interdum.feugiat@mail.ru	(474) 644-3615	90	2022-03-31 06:39:04
83	Rudyard	Wooten	velit.quisque@icloud.edu	(804) 205-7302	19	2021-12-18 11:19:09
84	Sylvester	Good	integer@yahoo.edu	(724) 365-4571	52	2022-07-27 10:26:56
85	Finn	Dickerson	ipsum.primis@google.edu	(263) 411-8828	80	2023-07-19 17:19:20
86	Suki	Mcpherson	scelerisque.sed.sapien@mail.com	(465) 480-8712	37	2022-08-01 08:38:19
87	Yoshio	Cannon	eu@aol.ru	(679) 418-5158	38	2022-08-28 16:28:54
88	Rhona	Witt	lacus.pede@aol.com	(825) 534-8266	62	2023-04-01 16:52:52
89	Jamalia	Dalton	phasellus.nulla@yahoo.ru	(654) 614-3885	98	2022-10-10 10:57:15
90	Mannix	Todd	imperdiet.non@icloud.edu	(267) 831-1662	39	2022-04-06 23:29:37
91	Nasim	Shaw	sed.diam.lorem@outlook.ru	(335) 514-4376	44	2022-05-16 08:00:20
92	Chanda	Reid	lorem.donec@hotmail.org	(896) 297-2785	9	2022-06-26 22:22:53
93	Brielle	Nelson	duis.risus@outlook.edu	(179) 331-9955	25	2021-12-17 05:53:42
94	Oprah	Rowe	sed@aol.ru	(575) 683-3152	16	2023-07-14 00:44:31
95	Fredericka	Grimes	nam.tempor@mail.edu	(671) 493-1846	18	2022-03-07 22:00:03
96	Gail	Knight	ligula@yahoo.ru	(255) 466-8374	2	2022-09-07 13:30:38
97	Benedict	Velazquez	ut.cursus@icloud.org	(682) 609-6713	25	2023-02-14 02:28:46
98	Mufutau	Mooney	erat.sed@yahoo.edu	(838) 485-3277	54	2022-12-05 18:22:36
99	Cherokee	Gentry	egbdfghet@outlook.ru	(408) 884-9639	69	2022-10-21 01:42:52
100	Armando	Burgess	dis@mail.org	(798) 648-7438	89	2022-05-31 09:49:51
\.


--
-- Name: bots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.bots_id_seq', 4, true);


--
-- Name: bots_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.bots_type_id_seq', 3, true);


--
-- Name: friendship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.friendship_id_seq', 200, true);


--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.friendship_statuses_id_seq', 3, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.messages_id_seq', 100, true);


--
-- Name: one_sensor_bots_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.one_sensor_bots_data_id_seq', 100, true);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.photo_id_seq', 1795, true);


--
-- Name: three_sensor_bots_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.three_sensor_bots_data_id_seq', 100, true);


--
-- Name: two_sensor_bots_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.two_sensor_bots_data_id_seq', 200, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_admin
--

SELECT pg_catalog.setval('public.users_id_seq', 497, true);


--
-- Name: bots bots_name_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots
    ADD CONSTRAINT bots_name_key UNIQUE (name);


--
-- Name: bots bots_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots
    ADD CONSTRAINT bots_pkey PRIMARY KEY (id);


--
-- Name: bots_type bots_type_name_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots_type
    ADD CONSTRAINT bots_type_name_key UNIQUE (name);


--
-- Name: bots_type bots_type_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.bots_type
    ADD CONSTRAINT bots_type_pkey PRIMARY KEY (id);


--
-- Name: friendship friendship_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_pkey PRIMARY KEY (id);


--
-- Name: friendship_statuses friendship_statuses_name_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_name_key UNIQUE (name);


--
-- Name: friendship_statuses friendship_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: one_sensor_bots_data one_sensor_bots_data_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.one_sensor_bots_data
    ADD CONSTRAINT one_sensor_bots_data_pkey PRIMARY KEY (id);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: photo photo_url_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_url_key UNIQUE (url);


--
-- Name: three_sensor_bots_data three_sensor_bots_data_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.three_sensor_bots_data
    ADD CONSTRAINT three_sensor_bots_data_pkey PRIMARY KEY (id);


--
-- Name: two_sensor_bots_data two_sensor_bots_data_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.two_sensor_bots_data
    ADD CONSTRAINT two_sensor_bots_data_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: my_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

