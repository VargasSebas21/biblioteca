PGDMP                     	    y         	   encuestas    13.2    13.2 -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    33298 	   encuestas    DATABASE     e   CREATE DATABASE encuestas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE encuestas;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    33314    espacio    TABLE     ?  CREATE TABLE public.espacio (
    idespacio integer NOT NULL,
    iluminacion smallint NOT NULL,
    temperatura smallint NOT NULL,
    ruido smallint NOT NULL,
    limpieza smallint NOT NULL,
    estadofuncionamiento smallint NOT NULL,
    instructivosoperacion smallint NOT NULL,
    senalizacion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.espacio;
       public         heap    postgres    false    3            ?            1259    33312    espacio_idespacio_seq    SEQUENCE     ?   CREATE SEQUENCE public.espacio_idespacio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.espacio_idespacio_seq;
       public          postgres    false    3    203            ?           0    0    espacio_idespacio_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.espacio_idespacio_seq OWNED BY public.espacio.idespacio;
          public          postgres    false    202            ?            1259    33323    prestamo    TABLE     ?  CREATE TABLE public.prestamo (
    idprestamo integer NOT NULL,
    atencionpersonal smallint NOT NULL,
    procedimientoprestamo smallint NOT NULL,
    disponibilidad smallint NOT NULL,
    estadolibros smallint NOT NULL,
    actualidadrecursos smallint NOT NULL,
    dotacion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.prestamo;
       public         heap    postgres    false    3            ?            1259    33321    prestamo_idprestamo_seq    SEQUENCE     ?   CREATE SEQUENCE public.prestamo_idprestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.prestamo_idprestamo_seq;
       public          postgres    false    205    3            ?           0    0    prestamo_idprestamo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.prestamo_idprestamo_seq OWNED BY public.prestamo.idprestamo;
          public          postgres    false    204            ?            1259    33346 
   renovacion    TABLE     %  CREATE TABLE public.renovacion (
    idrenovacion integer NOT NULL,
    atencionpersonal smallint NOT NULL,
    procedimientorenovacion smallint NOT NULL,
    horarioatencion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.renovacion;
       public         heap    postgres    false    3            ?            1259    33344    renovacion_idrenovacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.renovacion_idrenovacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.renovacion_idrenovacion_seq;
       public          postgres    false    3    207            ?           0    0    renovacion_idrenovacion_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.renovacion_idrenovacion_seq OWNED BY public.renovacion.idrenovacion;
          public          postgres    false    206            ?            1259    33362    reserva_cubiculos    TABLE     ?   CREATE TABLE public.reserva_cubiculos (
    idreserva integer NOT NULL,
    atencionpersonal integer NOT NULL,
    procedimientoreserva integer NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
 %   DROP TABLE public.reserva_cubiculos;
       public         heap    postgres    false    3            ?            1259    33360    reserva_cubiculos_idreserva_seq    SEQUENCE     ?   CREATE SEQUENCE public.reserva_cubiculos_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reserva_cubiculos_idreserva_seq;
       public          postgres    false    3    209            ?           0    0    reserva_cubiculos_idreserva_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reserva_cubiculos_idreserva_seq OWNED BY public.reserva_cubiculos.idreserva;
          public          postgres    false    208            ?            1259    33302    tipo_cliente    TABLE     q   CREATE TABLE public.tipo_cliente (
    idcliente integer NOT NULL,
    tipocliente character varying NOT NULL
);
     DROP TABLE public.tipo_cliente;
       public         heap    postgres    false    3            ?            1259    33300    tipo_cliente_idcliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipo_cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tipo_cliente_idcliente_seq;
       public          postgres    false    201    3            ?           0    0    tipo_cliente_idcliente_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tipo_cliente_idcliente_seq OWNED BY public.tipo_cliente.idcliente;
          public          postgres    false    200            @           2604    33317    espacio idespacio    DEFAULT     v   ALTER TABLE ONLY public.espacio ALTER COLUMN idespacio SET DEFAULT nextval('public.espacio_idespacio_seq'::regclass);
 @   ALTER TABLE public.espacio ALTER COLUMN idespacio DROP DEFAULT;
       public          postgres    false    202    203    203            A           2604    33326    prestamo idprestamo    DEFAULT     z   ALTER TABLE ONLY public.prestamo ALTER COLUMN idprestamo SET DEFAULT nextval('public.prestamo_idprestamo_seq'::regclass);
 B   ALTER TABLE public.prestamo ALTER COLUMN idprestamo DROP DEFAULT;
       public          postgres    false    204    205    205            B           2604    33349    renovacion idrenovacion    DEFAULT     ?   ALTER TABLE ONLY public.renovacion ALTER COLUMN idrenovacion SET DEFAULT nextval('public.renovacion_idrenovacion_seq'::regclass);
 F   ALTER TABLE public.renovacion ALTER COLUMN idrenovacion DROP DEFAULT;
       public          postgres    false    207    206    207            C           2604    33365    reserva_cubiculos idreserva    DEFAULT     ?   ALTER TABLE ONLY public.reserva_cubiculos ALTER COLUMN idreserva SET DEFAULT nextval('public.reserva_cubiculos_idreserva_seq'::regclass);
 J   ALTER TABLE public.reserva_cubiculos ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    33305    tipo_cliente idcliente    DEFAULT     ?   ALTER TABLE ONLY public.tipo_cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.tipo_cliente_idcliente_seq'::regclass);
 E   ALTER TABLE public.tipo_cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    33314    espacio 
   TABLE DATA           ?   COPY public.espacio (idespacio, iluminacion, temperatura, ruido, limpieza, estadofuncionamiento, instructivosoperacion, senalizacion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    203            ?          0    33323    prestamo 
   TABLE DATA           ?   COPY public.prestamo (idprestamo, atencionpersonal, procedimientoprestamo, disponibilidad, estadolibros, actualidadrecursos, dotacion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    205            ?          0    33346 
   renovacion 
   TABLE DATA           ?   COPY public.renovacion (idrenovacion, atencionpersonal, procedimientorenovacion, horarioatencion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    207            ?          0    33362    reserva_cubiculos 
   TABLE DATA           }   COPY public.reserva_cubiculos (idreserva, atencionpersonal, procedimientoreserva, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    209            ?          0    33302    tipo_cliente 
   TABLE DATA           >   COPY public.tipo_cliente (idcliente, tipocliente) FROM stdin;
    public          postgres    false    201            ?           0    0    espacio_idespacio_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.espacio_idespacio_seq', 1, false);
          public          postgres    false    202            ?           0    0    prestamo_idprestamo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.prestamo_idprestamo_seq', 1, false);
          public          postgres    false    204            ?           0    0    renovacion_idrenovacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.renovacion_idrenovacion_seq', 1, false);
          public          postgres    false    206            ?           0    0    reserva_cubiculos_idreserva_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.reserva_cubiculos_idreserva_seq', 2, true);
          public          postgres    false    208            ?           0    0    tipo_cliente_idcliente_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tipo_cliente_idcliente_seq', 1, false);
          public          postgres    false    200            G           2606    33338    espacio espacio_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.espacio
    ADD CONSTRAINT espacio_pk PRIMARY KEY (idespacio);
 <   ALTER TABLE ONLY public.espacio DROP CONSTRAINT espacio_pk;
       public            postgres    false    203            I           2606    33331    prestamo prestamo_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pk PRIMARY KEY (idprestamo);
 >   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pk;
       public            postgres    false    205            K           2606    33354    renovacion renovacion_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.renovacion
    ADD CONSTRAINT renovacion_pk PRIMARY KEY (idrenovacion);
 B   ALTER TABLE ONLY public.renovacion DROP CONSTRAINT renovacion_pk;
       public            postgres    false    207            M           2606    33370 &   reserva_cubiculos reserva_cubiculos_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.reserva_cubiculos
    ADD CONSTRAINT reserva_cubiculos_pk PRIMARY KEY (idreserva);
 P   ALTER TABLE ONLY public.reserva_cubiculos DROP CONSTRAINT reserva_cubiculos_pk;
       public            postgres    false    209            E           2606    33311    tipo_cliente tipo_cliente_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipo_cliente
    ADD CONSTRAINT tipo_cliente_pk PRIMARY KEY (idcliente);
 F   ALTER TABLE ONLY public.tipo_cliente DROP CONSTRAINT tipo_cliente_pk;
       public            postgres    false    201            N           2606    33339    espacio espacio_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.espacio
    ADD CONSTRAINT espacio_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 <   ALTER TABLE ONLY public.espacio DROP CONSTRAINT espacio_fk;
       public          postgres    false    2885    203    201            O           2606    33332    prestamo prestamo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 >   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_fk;
       public          postgres    false    201    205    2885            P           2606    33355    renovacion renovacion_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.renovacion
    ADD CONSTRAINT renovacion_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 B   ALTER TABLE ONLY public.renovacion DROP CONSTRAINT renovacion_fk;
       public          postgres    false    207    2885    201            Q           2606    33371 &   reserva_cubiculos reserva_cubiculos_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.reserva_cubiculos
    ADD CONSTRAINT reserva_cubiculos_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 P   ALTER TABLE ONLY public.reserva_cubiculos DROP CONSTRAINT reserva_cubiculos_fk;
       public          postgres    false    209    2885    201            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?3?4C7N##C]C]#K?=... 3??      ?   C   x?3?L-.)M?L?+I?2?L?ON??93?ʀ2???)?E\&???9?@6?)gjEIjQ^>W? ?z      -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    33298 	   encuestas    DATABASE     e   CREATE DATABASE encuestas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE encuestas;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    33314    espacio    TABLE     ?  CREATE TABLE public.espacio (
    idespacio integer NOT NULL,
    iluminacion smallint NOT NULL,
    temperatura smallint NOT NULL,
    ruido smallint NOT NULL,
    limpieza smallint NOT NULL,
    estadofuncionamiento smallint NOT NULL,
    instructivosoperacion smallint NOT NULL,
    senalizacion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.espacio;
       public         heap    postgres    false    3            ?            1259    33312    espacio_idespacio_seq    SEQUENCE     ?   CREATE SEQUENCE public.espacio_idespacio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.espacio_idespacio_seq;
       public          postgres    false    3    203            ?           0    0    espacio_idespacio_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.espacio_idespacio_seq OWNED BY public.espacio.idespacio;
          public          postgres    false    202            ?            1259    33323    prestamo    TABLE     ?  CREATE TABLE public.prestamo (
    idprestamo integer NOT NULL,
    atencionpersonal smallint NOT NULL,
    procedimientoprestamo smallint NOT NULL,
    disponibilidad smallint NOT NULL,
    estadolibros smallint NOT NULL,
    actualidadrecursos smallint NOT NULL,
    dotacion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.prestamo;
       public         heap    postgres    false    3            ?            1259    33321    prestamo_idprestamo_seq    SEQUENCE     ?   CREATE SEQUENCE public.prestamo_idprestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.prestamo_idprestamo_seq;
       public          postgres    false    205    3            ?           0    0    prestamo_idprestamo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.prestamo_idprestamo_seq OWNED BY public.prestamo.idprestamo;
          public          postgres    false    204            ?            1259    33346 
   renovacion    TABLE     %  CREATE TABLE public.renovacion (
    idrenovacion integer NOT NULL,
    atencionpersonal smallint NOT NULL,
    procedimientorenovacion smallint NOT NULL,
    horarioatencion smallint NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
    DROP TABLE public.renovacion;
       public         heap    postgres    false    3            ?            1259    33344    renovacion_idrenovacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.renovacion_idrenovacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.renovacion_idrenovacion_seq;
       public          postgres    false    3    207            ?           0    0    renovacion_idrenovacion_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.renovacion_idrenovacion_seq OWNED BY public.renovacion.idrenovacion;
          public          postgres    false    206            ?            1259    33362    reserva_cubiculos    TABLE     ?   CREATE TABLE public.reserva_cubiculos (
    idreserva integer NOT NULL,
    atencionpersonal integer NOT NULL,
    procedimientoreserva integer NOT NULL,
    idcliente integer NOT NULL,
    comentarios character varying(500),
    fecha date NOT NULL
);
 %   DROP TABLE public.reserva_cubiculos;
       public         heap    postgres    false    3            ?            1259    33360    reserva_cubiculos_idreserva_seq    SEQUENCE     ?   CREATE SEQUENCE public.reserva_cubiculos_idreserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reserva_cubiculos_idreserva_seq;
       public          postgres    false    3    209            ?           0    0    reserva_cubiculos_idreserva_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reserva_cubiculos_idreserva_seq OWNED BY public.reserva_cubiculos.idreserva;
          public          postgres    false    208            ?            1259    33302    tipo_cliente    TABLE     q   CREATE TABLE public.tipo_cliente (
    idcliente integer NOT NULL,
    tipocliente character varying NOT NULL
);
     DROP TABLE public.tipo_cliente;
       public         heap    postgres    false    3            ?            1259    33300    tipo_cliente_idcliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipo_cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tipo_cliente_idcliente_seq;
       public          postgres    false    201    3            ?           0    0    tipo_cliente_idcliente_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tipo_cliente_idcliente_seq OWNED BY public.tipo_cliente.idcliente;
          public          postgres    false    200            @           2604    33317    espacio idespacio    DEFAULT     v   ALTER TABLE ONLY public.espacio ALTER COLUMN idespacio SET DEFAULT nextval('public.espacio_idespacio_seq'::regclass);
 @   ALTER TABLE public.espacio ALTER COLUMN idespacio DROP DEFAULT;
       public          postgres    false    202    203    203            A           2604    33326    prestamo idprestamo    DEFAULT     z   ALTER TABLE ONLY public.prestamo ALTER COLUMN idprestamo SET DEFAULT nextval('public.prestamo_idprestamo_seq'::regclass);
 B   ALTER TABLE public.prestamo ALTER COLUMN idprestamo DROP DEFAULT;
       public          postgres    false    204    205    205            B           2604    33349    renovacion idrenovacion    DEFAULT     ?   ALTER TABLE ONLY public.renovacion ALTER COLUMN idrenovacion SET DEFAULT nextval('public.renovacion_idrenovacion_seq'::regclass);
 F   ALTER TABLE public.renovacion ALTER COLUMN idrenovacion DROP DEFAULT;
       public          postgres    false    207    206    207            C           2604    33365    reserva_cubiculos idreserva    DEFAULT     ?   ALTER TABLE ONLY public.reserva_cubiculos ALTER COLUMN idreserva SET DEFAULT nextval('public.reserva_cubiculos_idreserva_seq'::regclass);
 J   ALTER TABLE public.reserva_cubiculos ALTER COLUMN idreserva DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    33305    tipo_cliente idcliente    DEFAULT     ?   ALTER TABLE ONLY public.tipo_cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.tipo_cliente_idcliente_seq'::regclass);
 E   ALTER TABLE public.tipo_cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    33314    espacio 
   TABLE DATA           ?   COPY public.espacio (idespacio, iluminacion, temperatura, ruido, limpieza, estadofuncionamiento, instructivosoperacion, senalizacion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    203   ?       ?          0    33323    prestamo 
   TABLE DATA           ?   COPY public.prestamo (idprestamo, atencionpersonal, procedimientoprestamo, disponibilidad, estadolibros, actualidadrecursos, dotacion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    205           ?          0    33346 
   renovacion 
   TABLE DATA           ?   COPY public.renovacion (idrenovacion, atencionpersonal, procedimientorenovacion, horarioatencion, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    207           ?          0    33362    reserva_cubiculos 
   TABLE DATA           }   COPY public.reserva_cubiculos (idreserva, atencionpersonal, procedimientoreserva, idcliente, comentarios, fecha) FROM stdin;
    public          postgres    false    209           ?          0    33302    tipo_cliente 
   TABLE DATA           >   COPY public.tipo_cliente (idcliente, tipocliente) FROM stdin;
    public          postgres    false    201   (        ?           0    0    espacio_idespacio_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.espacio_idespacio_seq', 1, false);
          public          postgres    false    202            ?           0    0    prestamo_idprestamo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.prestamo_idprestamo_seq', 1, false);
          public          postgres    false    204            ?           0    0    renovacion_idrenovacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.renovacion_idrenovacion_seq', 1, false);
          public          postgres    false    206            ?           0    0    reserva_cubiculos_idreserva_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.reserva_cubiculos_idreserva_seq', 2, true);
          public          postgres    false    208            ?           0    0    tipo_cliente_idcliente_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tipo_cliente_idcliente_seq', 1, false);
          public          postgres    false    200            G           2606    33338    espacio espacio_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.espacio
    ADD CONSTRAINT espacio_pk PRIMARY KEY (idespacio);
 <   ALTER TABLE ONLY public.espacio DROP CONSTRAINT espacio_pk;
       public            postgres    false    203            I           2606    33331    prestamo prestamo_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_pk PRIMARY KEY (idprestamo);
 >   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_pk;
       public            postgres    false    205            K           2606    33354    renovacion renovacion_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.renovacion
    ADD CONSTRAINT renovacion_pk PRIMARY KEY (idrenovacion);
 B   ALTER TABLE ONLY public.renovacion DROP CONSTRAINT renovacion_pk;
       public            postgres    false    207            M           2606    33370 &   reserva_cubiculos reserva_cubiculos_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.reserva_cubiculos
    ADD CONSTRAINT reserva_cubiculos_pk PRIMARY KEY (idreserva);
 P   ALTER TABLE ONLY public.reserva_cubiculos DROP CONSTRAINT reserva_cubiculos_pk;
       public            postgres    false    209            E           2606    33311    tipo_cliente tipo_cliente_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipo_cliente
    ADD CONSTRAINT tipo_cliente_pk PRIMARY KEY (idcliente);
 F   ALTER TABLE ONLY public.tipo_cliente DROP CONSTRAINT tipo_cliente_pk;
       public            postgres    false    201            N           2606    33339    espacio espacio_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.espacio
    ADD CONSTRAINT espacio_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 <   ALTER TABLE ONLY public.espacio DROP CONSTRAINT espacio_fk;
       public          postgres    false    2885    203    201            O           2606    33332    prestamo prestamo_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 >   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_fk;
       public          postgres    false    201    205    2885            P           2606    33355    renovacion renovacion_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.renovacion
    ADD CONSTRAINT renovacion_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 B   ALTER TABLE ONLY public.renovacion DROP CONSTRAINT renovacion_fk;
       public          postgres    false    207    2885    201            Q           2606    33371 &   reserva_cubiculos reserva_cubiculos_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.reserva_cubiculos
    ADD CONSTRAINT reserva_cubiculos_fk FOREIGN KEY (idcliente) REFERENCES public.tipo_cliente(idcliente);
 P   ALTER TABLE ONLY public.reserva_cubiculos DROP CONSTRAINT reserva_cubiculos_fk;
       public          postgres    false    209    2885    201           