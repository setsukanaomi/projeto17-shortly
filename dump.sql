PGDMP         (                {            kcmpsdwx     13.9 (Ubuntu 13.9-1.pgdg20.04+1)    15.3 B               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5050120    kcmpsdwx    DATABASE     t   CREATE DATABASE kcmpsdwx WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE kcmpsdwx;
                kcmpsdwx    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                        3079    17161 	   btree_gin 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;
    DROP EXTENSION btree_gin;
                   false    25                       0    0    EXTENSION btree_gin    COMMENT     R   COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';
                        false    15                        3079    17702 
   btree_gist 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;
    DROP EXTENSION btree_gist;
                   false    25                       0    0    EXTENSION btree_gist    COMMENT     T   COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';
                        false    19                        3079    16671    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false    25                       0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    8                        3079    17599    cube 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;
    DROP EXTENSION cube;
                   false    25                       0    0    EXTENSION cube    COMMENT     E   COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';
                        false    17                        3079    16384    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false    25                       0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    2                        3079    17152    dict_int 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;
    DROP EXTENSION dict_int;
                   false    25                       0    0    EXTENSION dict_int    COMMENT     Q   COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';
                        false    14                        3079    18325 	   dict_xsyn 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;
    DROP EXTENSION dict_xsyn;
                   false    25                       0    0    EXTENSION dict_xsyn    COMMENT     e   COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';
                        false    20                        3079    17686    earthdistance 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;
    DROP EXTENSION earthdistance;
                   false    17    25                       0    0    EXTENSION earthdistance    COMMENT     f   COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';
                        false    18                        3079    16660    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false    25                        0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    7                        3079    17025    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false    25            !           0    0    EXTENSION hstore    COMMENT     S   COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';
                        false    13                        3079    16903    intarray 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;
    DROP EXTENSION intarray;
                   false    25            "           0    0    EXTENSION intarray    COMMENT     g   COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';
                        false    12                        3079    16444    ltree 	   EXTENSION     9   CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
    DROP EXTENSION ltree;
                   false    25            #           0    0    EXTENSION ltree    COMMENT     Q   COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';
                        false    4                        3079    18337    pg_stat_statements 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
 #   DROP EXTENSION pg_stat_statements;
                   false    25            $           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    22                        3079    16824    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false    25            %           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    11            
            3079    16787    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false    25            &           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    10                        3079    17597 
   pgrowlocks 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;
    DROP EXTENSION pgrowlocks;
                   false    25            '           0    0    EXTENSION pgrowlocks    COMMENT     I   COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';
                        false    16                        3079    16629    pgstattuple 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;
    DROP EXTENSION pgstattuple;
                   false    25            (           0    0    EXTENSION pgstattuple    COMMENT     C   COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';
                        false    5                        3079    16639 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false    25            )           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    6                        3079    18330    unaccent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;
    DROP EXTENSION unaccent;
                   false    25            *           0    0    EXTENSION unaccent    COMMENT     P   COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';
                        false    21            	            3079    16776 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                   false    25            +           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    9                        3079    16430    xml2 	   EXTENSION     8   CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;
    DROP EXTENSION xml2;
                   false    25            ,           0    0    EXTENSION xml2    COMMENT     8   COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';
                        false    3            �            1259    5060654    sessions    TABLE     �   CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    kcmpsdwx    false    25            �            1259    5060652    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          kcmpsdwx    false    25    229            -           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          kcmpsdwx    false    228            �            1259    5096636    urls    TABLE     �   CREATE TABLE public.urls (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    url text NOT NULL,
    "shortUrl" text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.urls;
       public         heap    kcmpsdwx    false    25            �            1259    5096634    urls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.urls_id_seq;
       public          kcmpsdwx    false    231    25            .           0    0    urls_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;
          public          kcmpsdwx    false    230            �            1259    5060640    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.users;
       public         heap    kcmpsdwx    false    25            �            1259    5060638    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          kcmpsdwx    false    227    25            /           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          kcmpsdwx    false    226            ~           2604    5060657    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          kcmpsdwx    false    228    229    229            �           2604    5096639    urls id    DEFAULT     b   ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);
 6   ALTER TABLE public.urls ALTER COLUMN id DROP DEFAULT;
       public          kcmpsdwx    false    230    231    231            |           2604    5060643    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          kcmpsdwx    false    227    226    227            �           2606    5060663    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            kcmpsdwx    false    229            �           2606    5060665    sessions sessions_token_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);
 E   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_token_key;
       public            kcmpsdwx    false    229            �           2606    5096646    urls urls_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_pkey;
       public            kcmpsdwx    false    231            �           2606    5060651    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            kcmpsdwx    false    227            �           2606    5060649    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            kcmpsdwx    false    227            �           2606    5060666    sessions sessions_userId_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.sessions DROP CONSTRAINT "sessions_userId_fkey";
       public          kcmpsdwx    false    229    227    3974            �           2606    5096647    urls urls_userId_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT "urls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.urls DROP CONSTRAINT "urls_userId_fkey";
       public          kcmpsdwx    false    231    3974    227           