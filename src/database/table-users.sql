PGDMP                      }            users    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    users    DATABASE     k   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE users;
                     postgres    false            �            1259    16428    posts    TABLE     �   CREATE TABLE public.posts (
    id_post integer NOT NULL,
    id_user integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(200)
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16427    posts_id_post_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_post_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.posts_id_post_seq;
       public               postgres    false    220                        0    0    posts_id_post_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.posts_id_post_seq OWNED BY public.posts.id_post;
          public               postgres    false    219            �            1259    16419    users    TABLE     �   CREATE TABLE public.users (
    id_user integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16418    users_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_id_user_seq;
       public               postgres    false    218                       0    0    users_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;
          public               postgres    false    217            ]           2604    16431    posts id_post    DEFAULT     n   ALTER TABLE ONLY public.posts ALTER COLUMN id_post SET DEFAULT nextval('public.posts_id_post_seq'::regclass);
 <   ALTER TABLE public.posts ALTER COLUMN id_post DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16422    users id_user    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16428    posts 
   TABLE DATA           ?   COPY public.posts (id_post, id_user, title, image) FROM stdin;
    public               postgres    false    220   �       �          0    16419    users 
   TABLE DATA           5   COPY public.users (id_user, name, email) FROM stdin;
    public               postgres    false    218   �                  0    0    posts_id_post_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.posts_id_post_seq', 1, false);
          public               postgres    false    219                       0    0    users_id_user_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_id_user_seq', 50, true);
          public               postgres    false    217            c           2606    16433    posts posts_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id_post);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    220            _           2606    16426    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            a           2606    16424    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            d           2606    16434    posts fk_user    FK CONSTRAINT     q   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES public.users(id_user);
 7   ALTER TABLE ONLY public.posts DROP CONSTRAINT fk_user;
       public               postgres    false    4705    218    220            �      x������ � �      �   �  x�]U�n�6>3O�'2���֙l�6M�A`����؊eɐdO�S�c�OR��佘�E��Ǐ�Wp�ɚ���C1{$Oh~������2x�I['�:s �Г�]���/[�*>e7xU&�xU��.VV
;k*�$m�!�5��γ'�
;%�;88�ŃCS��Ѫ���=�W"o�8�/j�'{��$��Qi�H�+�|���zH�y��ʈ����ϑ�	ˆ�.V��e@�z�j@y��ҲV+��$^ȹ	Zv��,W<a5��4{��-�.�[���c�3:Et�>����@��وgb�<�������U�q��G�j�4g�uX+C�g][�A]b���_���CE����!�mz|9v"�Th�c�����-k��B7;̺z�Rv�"C(�0in���<c ב������H�{��}�Μ�=/��2ȹ��,��'�9��ɔ��ݾ��� ;�������ըP��ʩڂ�C��ȫ��nሕ8�L��+�#ɐ�U
~���[E�2n)�=5�m�L�O���Ӭ�H�V9�<�V6�_T�4'cԉ�x�=C�U�TO�Y_���p6�.�N�Wp�%�Q'�2�F\ޔ�..���T(/������z�_�ȡ	���pO��ӂ�Oߖo�X���ş��z�L�K�X����F#X����,�@��G�S��{xs8*/����9�,}mʆ�<�#�Qx/f˫U8L�_߲*pK�%�m-��S�6��j=j�z����vl�����a�l��%���&���u<:0+�JW^Uis�5F�� ���*S�%o6ܾ�'�	�ݳ/Y]�o���������_��S��(�(��46|�P�dԢ�=�Be㏤�XV�zX����,��aُ.�k�RH�n!42��(\���ǟM�����H���Pξ즆Х��-����J��     