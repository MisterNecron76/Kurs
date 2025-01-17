PGDMP      *                |            kurs    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16480    kurs    DATABASE     x   CREATE DATABASE kurs WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE kurs;
                postgres    false            �            1259    16530    app    TABLE     W   CREATE TABLE public.app (
    appid integer NOT NULL,
    appname character varying
);
    DROP TABLE public.app;
       public         heap    postgres    false            �            1259    16567    balloontype    TABLE     �   CREATE TABLE public.balloontype (
    ballid integer NOT NULL,
    ballname character varying,
    typeid integer,
    content character varying
);
    DROP TABLE public.balloontype;
       public         heap    postgres    false            �            1259    16523    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    fullname character varying,
    age integer,
    appid integer,
    routeid integer,
    balloonid integer
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16516    routs    TABLE     �   CREATE TABLE public.routs (
    routid integer NOT NULL,
    rout_name character varying,
    street_name character varying,
    coordinate character varying
);
    DROP TABLE public.routs;
       public         heap    postgres    false            �            1259    16574    type    TABLE     V   CREATE TABLE public.type (
    typeid integer NOT NULL,
    type character varying
);
    DROP TABLE public.type;
       public         heap    postgres    false            �          0    16530    app 
   TABLE DATA           -   COPY public.app (appid, appname) FROM stdin;
    public          postgres    false    217   �       �          0    16567    balloontype 
   TABLE DATA           H   COPY public.balloontype (ballid, ballname, typeid, content) FROM stdin;
    public          postgres    false    218   �       �          0    16523    customer 
   TABLE DATA           P   COPY public.customer (id, fullname, age, appid, routeid, balloonid) FROM stdin;
    public          postgres    false    216   �       �          0    16516    routs 
   TABLE DATA           K   COPY public.routs (routid, rout_name, street_name, coordinate) FROM stdin;
    public          postgres    false    215   �       �          0    16574    type 
   TABLE DATA           ,   COPY public.type (typeid, type) FROM stdin;
    public          postgres    false    219   e       .           2606    16536    app App_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.app
    ADD CONSTRAINT "App_pkey" PRIMARY KEY (appid);
 8   ALTER TABLE ONLY public.app DROP CONSTRAINT "App_pkey";
       public            postgres    false    217            *           2606    16522    routs Routs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.routs
    ADD CONSTRAINT "Routs_pkey" PRIMARY KEY (routid);
 <   ALTER TABLE ONLY public.routs DROP CONSTRAINT "Routs_pkey";
       public            postgres    false    215            ,           2606    16529    customer User_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.customer DROP CONSTRAINT "User_pkey";
       public            postgres    false    216            0           2606    16573    balloontype balloontype_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.balloontype
    ADD CONSTRAINT balloontype_pkey PRIMARY KEY (ballid);
 F   ALTER TABLE ONLY public.balloontype DROP CONSTRAINT balloontype_pkey;
       public            postgres    false    218            2           2606    16580    type type_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (typeid);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public            postgres    false    219            3           2606    16537    customer User_appid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "User_appid_fkey" FOREIGN KEY (appid) REFERENCES public.app(appid) NOT VALID;
 D   ALTER TABLE ONLY public.customer DROP CONSTRAINT "User_appid_fkey";
       public          postgres    false    216    217    4654            4           2606    16542    customer User_routeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "User_routeid_fkey" FOREIGN KEY (routeid) REFERENCES public.routs(routid) NOT VALID;
 F   ALTER TABLE ONLY public.customer DROP CONSTRAINT "User_routeid_fkey";
       public          postgres    false    216    4650    215            6           2606    16586 !   balloontype balloontype_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.balloontype
    ADD CONSTRAINT balloontype_type_fkey FOREIGN KEY (typeid) REFERENCES public.type(typeid) NOT VALID;
 K   ALTER TABLE ONLY public.balloontype DROP CONSTRAINT balloontype_type_fkey;
       public          postgres    false    219    4658    218            5           2606    16581     customer customer_balloonid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_balloonid_fkey FOREIGN KEY (balloonid) REFERENCES public.balloontype(ballid) NOT VALID;
 J   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_balloonid_fkey;
       public          postgres    false    216    4656    218            �   /   x�3�t��O�IU�M,(�2�L�KI����9����2�!�=... i      �   �   x�e�K�@D��)0���'�0�Fc\�p����[ �3T������I������u�;J<$�h�TPj�34��)�J��C�	r4;�/vKc�.` �1�ƭB7��n[�G&�$��H|)&+M}�,?WߨP1�3g�ޟ����5
6jq^ɛX>�5u,&$���¾���ņg�9��\"k�X��+^�������ye�      �   �  x�mR�n�P|��|A��/��^^L�^��6i���	��"*߰�:��#A�evfg��s�r�q�+.,�r�{Y,�ػ�˹���r�4�iHV3$~��-�\��7��*lP�C�@���������_9{rc���֊��E1YJ(1��M�5Kw��s����~�P�퐡 -^���Ş0l�%�/�@�2�ܵBZ�a�xD�$7S��ړ��n�N��P�ׁp�5����}���������<��3�Ȥ����������\����K�P�ź�H[��l��t�T��v `?��M��|C��ϻ�I.�u�QJ��e-�jk|zz��n�YX�ɔR�K����U�]��@G������kC�d���4�]��<
?c����� x��5j�Y�1�.�ݜ�ꤰ�
�26���l��0��r��      �   �  x��T�j�@}��b�S��ˮV�/�_JJH�I�Pi�����8��(��B�`��zf�"��$�̙s��lѵ�ҊZ����3ꨥE[��{|~��Ч���E�������Щq���V�-����!����~y�xi@DǦNs��
 EZټve�}�L�ؿ�[D7�����{"�!����ޟ���Jw��ӈn���)�7�\z=���"2�y�e>����$֜�r�花 �!�'�G1�|�㗀3 3�-����6Il"`� q���.D�&���GN����ѵ�I\E�ʌ��S\@�����=�}����Ok!�c�;&����/@&xy"���T=���(7C��/{n3np:�f,�ș���+��u\���0;�����_(�^����|`i[D><�&'O���B�U�ʓ���a7T���Of癀�.j�Y;H(��J�<;���sX�ćFѥLb��es�^�A^/��8�]�{�m6lC�k��<g�;qy�����V�����E��ć!��z(\�R��m�B���]HR'÷�N�G�;��ո�D���G6`�N���t�w�ͬΰ��U�e#nN�QX1���y������ic��9�Y�f�#��c��gI�\G/93�.�S�����m��0���H���i+�i/1ȗn,��3lj6����o�8�� 
��      �   L   x�3�0����.l��paÅm�^�{aǅ�1y\F��]�a��F�X�˘��,���Mv�lU �*b���� 3�5     