PGDMP     8                    {            spring_prom    15.2    15.2 E    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    24681    spring_prom    DATABASE        CREATE DATABASE spring_prom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE spring_prom;
                postgres    false            �            1259    24683    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    24682    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            Q           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    24690    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    24689    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            R           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    24974    order_person    TABLE     �   CREATE TABLE public.order_person (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    opnumber character varying(255),
    opsumm real,
    status smallint,
    person_id integer NOT NULL
);
     DROP TABLE public.order_person;
       public         heap    postgres    false            �            1259    24973    order_person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.order_person_id_seq;
       public          postgres    false    227            S           0    0    order_person_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.order_person_id_seq OWNED BY public.order_person.id;
          public          postgres    false    226            �            1259    24704    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    24703    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            T           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    24713    product    TABLE     v  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    category_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    24723    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    24722    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            U           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    24712    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            V           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            �            1259    24730 	   warehouse    TABLE     \   CREATE TABLE public.warehouse (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.warehouse;
       public         heap    postgres    false            �            1259    24729    warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public          postgres    false    225            W           0    0    warehouse_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.warehouse_id_seq OWNED BY public.warehouse.id;
          public          postgres    false    224            �            1259    24981    оrder_product    TABLE     �   CREATE TABLE public."оrder_product" (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    price real NOT NULL,
    order_person_id integer NOT NULL,
    product_id integer NOT NULL
);
 $   DROP TABLE public."оrder_product";
       public         heap    postgres    false            �            1259    24980    оrder_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."оrder_product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."оrder_product_id_seq";
       public          postgres    false    229            X           0    0    оrder_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."оrder_product_id_seq" OWNED BY public."оrder_product".id;
          public          postgres    false    228            �           2604    24686    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24693    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24977    order_person id    DEFAULT     r   ALTER TABLE ONLY public.order_person ALTER COLUMN id SET DEFAULT nextval('public.order_person_id_seq'::regclass);
 >   ALTER TABLE public.order_person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    24707 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24716 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24726    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24733    warehouse id    DEFAULT     l   ALTER TABLE ONLY public.warehouse ALTER COLUMN id SET DEFAULT nextval('public.warehouse_id_seq'::regclass);
 ;   ALTER TABLE public.warehouse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    24984    оrder_product id    DEFAULT     z   ALTER TABLE ONLY public."оrder_product" ALTER COLUMN id SET DEFAULT nextval('public."оrder_product_id_seq"'::regclass);
 B   ALTER TABLE public."оrder_product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            <          0    24683    category 
   TABLE DATA           ,   COPY public.category (id, name) FROM stdin;
    public          postgres    false    215   |N       >          0    24690    image 
   TABLE DATA           :   COPY public.image (id, file_name, product_id) FROM stdin;
    public          postgres    false    217   �N       H          0    24974    order_person 
   TABLE DATA           Z   COPY public.order_person (id, date_time, opnumber, opsumm, status, person_id) FROM stdin;
    public          postgres    false    227   �S       @          0    24704    person 
   TABLE DATA           ;   COPY public.person (id, login, password, role) FROM stdin;
    public          postgres    false    219   �T       B          0    24713    product 
   TABLE DATA           n   COPY public.product (id, date_time, description, price, seller, title, category_id, warehouse_id) FROM stdin;
    public          postgres    false    221   V       D          0    24723    product_cart 
   TABLE DATA           A   COPY public.product_cart (id, person_id, product_id) FROM stdin;
    public          postgres    false    223   ,l       F          0    24730 	   warehouse 
   TABLE DATA           -   COPY public.warehouse (id, name) FROM stdin;
    public          postgres    false    225   Il       J          0    24981    оrder_product 
   TABLE DATA           d   COPY public."оrder_product" (id, count, date_time, price, order_person_id, product_id) FROM stdin;
    public          postgres    false    229   �l       Y           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 5, true);
          public          postgres    false    214            Z           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            [           0    0    order_person_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_person_id_seq', 11, true);
          public          postgres    false    226            \           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 6, true);
          public          postgres    false    218            ]           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 38, true);
          public          postgres    false    222            ^           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    220            _           0    0    warehouse_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.warehouse_id_seq', 2, true);
          public          postgres    false    224            `           0    0    оrder_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."оrder_product_id_seq"', 13, true);
          public          postgres    false    228            �           2606    24688    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    24695    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    24979    order_person order_person_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.order_person
    ADD CONSTRAINT order_person_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.order_person DROP CONSTRAINT order_person_pkey;
       public            postgres    false    227            �           2606    24711    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    24728    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    24721    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    24744 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    24735    warehouse warehouse_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT warehouse_pkey;
       public            postgres    false    225            �           2606    24986 "   оrder_product оrder_product_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."оrder_product"
    ADD CONSTRAINT "оrder_product_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."оrder_product" DROP CONSTRAINT "оrder_product_pkey";
       public            postgres    false    229            �           2606    24755 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3220    221            �           2606    24992 *   оrder_product fk1myga43hex2dg2205f0gb03d6    FK CONSTRAINT     �   ALTER TABLE ONLY public."оrder_product"
    ADD CONSTRAINT fk1myga43hex2dg2205f0gb03d6 FOREIGN KEY (order_person_id) REFERENCES public.order_person(id);
 V   ALTER TABLE ONLY public."оrder_product" DROP CONSTRAINT fk1myga43hex2dg2205f0gb03d6;
       public          postgres    false    227    3234    229            �           2606    24987 (   order_person fkep8v4imh31iqqdxnt5isiuhq2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_person
    ADD CONSTRAINT fkep8v4imh31iqqdxnt5isiuhq2 FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.order_person DROP CONSTRAINT fkep8v4imh31iqqdxnt5isiuhq2;
       public          postgres    false    227    3224    219            �           2606    24745 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    217    3226            �           2606    24770 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    223    221    3226            �           2606    24760 #   product fkk6edvfdkq61mjhltx856ncs3x    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fkk6edvfdkq61mjhltx856ncs3x FOREIGN KEY (warehouse_id) REFERENCES public.warehouse(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fkk6edvfdkq61mjhltx856ncs3x;
       public          postgres    false    225    3232    221            �           2606    24997 *   оrder_product fkmob21icn6xkupe0baqw5iw892    FK CONSTRAINT     �   ALTER TABLE ONLY public."оrder_product"
    ADD CONSTRAINT fkmob21icn6xkupe0baqw5iw892 FOREIGN KEY (product_id) REFERENCES public.product(id);
 V   ALTER TABLE ONLY public."оrder_product" DROP CONSTRAINT fkmob21icn6xkupe0baqw5iw892;
       public          postgres    false    3226    229    221            �           2606    24765 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    219    3224    223            <   `   x�3�0����x��.#��.lr��\Ɯ&^��ta߅M6\�W 2�^l������&��.�����L�f ������qqq "C�      >   �  x�5UK�'\�N��	l�]�1`"e�]���I�4i4�r}h�Dl�5H��t�N6#(��m�<����?���25���)�A^�g���yn;��/\�H�g�Mw� ���7��Һd�_ѯ�p-�9�K#�H�;Y�F���ǉ���/�|Y��f��v���84/o�)˚|�e�-�!�#H��V�usf4��R��,��DRmzp;�c�x�Z�z��*�=��s�j��Q9�NVǭ����/jz��\�oX��Kr�a5��K�?��u���+�X|m�|�%۞�xo��r��#
�=V<�_�Fu��Vs�����Ϳ�|����X�����[i�qV���^J��]ܠ�l�k}=˵�F�x��eb	�|S�*�Q�82�Or���j	q�!��������7�5X[��u����+��=�5*��E�Љ�{�`�n���i��6�d�ݙ�{�;�����}>���J�y���s+����V�s*�����Qk�r(���򹅲7��A�q^���Z�<:�	�P�t�<ɚ�a7���53��ȸ�	U�0P�f׼I�N�UW���a�g���?v�}[����Do���^�l��J�Ot��΂{�^�|���H^j,�.�+�LKE�扪/_�{�]Rw�SP<�&:'�CY�:����~ӊ8�'/懕�*&j~O������,qlԱY�&���,��nsA��<����Ѓ�r����:���G�1$�������OW�z�d6���_��#pA�Q��s�>�;eu�t��/�~F�$Я���F��D�䊨���o��?�O����J1�.�zCahE�[ �q�ԗ1�R�W|�����I84��}7$����ׂ`��u#�~Gv�tbMh����1�4~�NCО��ң6�r_�o��1�@����@��pQ^���(�0P�y�����$}^P��Av[�ޱ�w����o���
VfAm�Gʂ�ކZ���0��L�;І�<ak�Fن�z7������ւ
�۽Ѷ���n(:[snG^5%�W��+�{�!�J����}��)/c�(��L!&Tl{����ή鉗���
�Qh|;�����y�I
	o���^KW?�6��<�c�G�x��Y[�U�^%����������-<�cLd�������|>�zTl      H   4  x�m�KnD1�~��0�l�Β���?B<�����1E�[Jl$���o��t��hb7�nL-�ER� �K--��I�]�/C_��y����VLj^�PG]g"��ͨoF}ߎ��lP$��LȚL2n�"t��X-ڡ�9*	��/����o�g����7/��x�8�	�3�P&Yf��WM^(�ʿfYv���&�ѫ'L�n�m��^"<��w<7� ���i.g2۠[�Y�t�:G���D�8�߈'��48;�;u݅앪��m�\r=�I�0�c�/��s��m��1$N U9oL�=ޣ�;N_��>@�y(      @   0  x�M�I��@ @�5��u)T�RAQ�ZfM'd���J����x�_`�g��̂��j5��j��ڐ��J��=��p���
@S����ro���EL�glK��x��f9&J*R�\�d Ī������@���j�𫿕�⟑�@�!Fyv�����(��d�w7{��
_,� ��E\���I�&I���OzS�o��M�J���gzsx����o����L�$�$k��ӔK���[<o:G��4�6*���ękU�s�¾��l��`�S�8��z1�����R9��
�
!�k����,��<x�      B      x��[MoWv]�~E�"��iq�MR�3Z{��l[c�X�bvdS4��dZ��(�ly$A�(6Yd�Gu���Q�=��W���e%��e�XU��q���������E��E�_=J�i9+'��y���zTfIY�i"W�jPΒ2O�Y�/�/���5�mV^��<*��M�2�N�r(�?�;��Y9��䷼�����ES�~<�w\����Ay!����yO�&������������I�@+�q���e�{/'�c����z"������^�����KYE��rs�<qYT_V���&���H�ޗ'�p�l"��gz�%Ah�գn"��s�9H���˂�袼%���q~�T&3�~��`S{������ �G�a8�M��R�e��aODr�m��?�ʑl��_@�g*f�r��>����"��b;j�>�G���ޚ@�sYXN(�j4���՗�r�e�Q��QmJ�6ë�&��:&rþ��S-�A�)��O���a�#�[E�o"�V��Tn�9ɳ�@޴��2���!n޾�����m}9�"Ø�3�t��fj�z^蠽C7��^onO-_���7`SIog]W�^�&��R(pZ����[�'4�v�Cv(p������C��J���S�nJ�A�*5M׷n����Z���j2w6���c��K��ԛƊ=D%�JJ�@P��Z�Α��Է
�{���๩9�������xP��ץ�^
�@����?��1��Ș�����3 �Tޮf	5A�<�1N��=P�����(�G[������ܔ2;<�7bQ�<�'*h���q��LO�-����)���]Mm�`��H�)��GdU*�%W�O�=`kS�>���&8�hL�)@?�'BhX����5 -���#��\;��d��ﱝ��(w�[O���*��3��\�+����5_,C�(J�w1�EH���Zc�[�L�#"(ZE�Pׂۨ����/pi(L�*;rY�_j��:�X/.6{	nσ�����8x�\�z� l�+�����;�}B+�G�pQ�X��}3*�Hp^3����>����c_sܕA�&'�]Ss����c�8ҭ��
ԣ�H�F&T��,��6�����#t�����(�9I���槜�6���;�ͭ��M���w?�{/iQ���*Hv��ޕ���6�eo��_�Ϯ�&�[�~u��Qno!ڈ3<7�=��ʙ�?��M�ڥ��2�'�|��-�ݡ���	�)��A��o'�S81o~N3ӳ8�
S��f0���"� 6��ǧp=7����^|�q�є�x�)Bx�h@��Z,>ܥ��I�E�K�|���*�r�!������A9�[�H����@Z�K=ќ*@����i0��5�"��a ���$)��n�z˖ɭ�jᑡ��aBK�_���c$Ev1v�	���qQ�g:m�)3�>sƜ�w�y���rĪ	�K��і��$��R4��꟩t�G,����q�V]�I@r"G0���@�x���4(�Y52��i3Q	��$5:%�Eb(H(�c����WC�ҥaB�K��`w� X'�OD��+#
;��%r�|�]�f9#������F�{�6��ʩ��{M#�j�+l�D0!��%����憀���Ʌ���P��u���XHu�P:\U>���4�㓫?�V�as�5�VE��g򚯌X��z�!�1�)*U�Ԯ�%@�~�vu��r��ph�k��|�������ߐDO]���~D��]�_#��5޲���տѻ��!������(���K[�<6�LR����g�l���ש�NbH21P| �W�\*�>��Wwi��R�)�FY�[��1��^�w�c��� >���xN�����2U�0�B���{l�(��A��Y%�O�!��s
(KwB�� 4v���s��HS5=x����S\7�����P���4�s�aͷ |z����B�l�
E����i8�#c1���a�E�ɲ�W���<i����q<�G�������c���Xr�5�kV�9�@��d������hK4Ol����ǘ�;��K"����,@+�9�!� 1��� ��5b(#��y7�����e��ع��Y�ZVk:l��V=���!�0�7�륀෋Ԣ�������^_��[��Ɩ߹�7/�֒��I�GҶ�aiH�Hs3�r`F��+��a�u	7��^x��� �� �xf^5�y��P����)�T���3:l �ؘk�7���f��h,3ڋ��m�ɇt���	�'��L�M�g� ���r$�j�$��"�E@T��q�V�э�5�Sڨ�P���<�����h���rQ�S��#�}�+e,Kh��L����
fi�Z�������E�M�E��
1�jYk��QQzy�peZ� /�D,YG��M� ��=�D���%՚�^����E� ��~�N�C
��%O{p�'�h3���9���W)�U�t�$�����$3�m�'�m��ma�u�x�	
y�jSs�c������1&,K[�M����2,Z�c���U�K�U��pF�H�9����FF�Mf�`��e��B���-k�
��8TY�R�Ek����"�y�u,
	y� o�Qm���jb�А/s�e֩��̷Nm���%�S��������I�[�W����)G��`�z�?K|Y~O��
͸^���ϓke,J��p[��m�,j�� )$k_t
�/ʈ����Sg V��r�֔���~n]C�|����v���4�Fh����ǽ���r����CKʴ͋:$�כF�L�ӊ�5)��Q�)֮j�N��e��r.e<!�.��?�D�.yd{SR���:u�x��~������w�:���_�T.�{��H$�˲�`� �7:���Ƶ��k������ߒ׮�����:���1�&�ȋKu�`����V��&x�9w3��bQ�`�gO�i��ТK��lp}ǫ}����كUa�#�.�MB�AJ�$b�A��(�X|S��c��3�+g^.�Ȧ�A�n9q��X�o
��>����q�;�1e��)���;R�J��0�%脚�TM�i_H͆����af�CF��)w��g�"�u�
�%����X�B���:� ����A=�%�#QxQ����Ya�6�5P�@U�=d�'�c��-j�+����i��x�5��O]j� St=B1p���)��������k$�p/9^UQ�V��v���hŮ��0#�,�Q�p��*_�g�I�9|�OJ��v��VY� ��#"<ɽ�zODE#�p���C�W��R��#��ERȝG�6�]���wv>_8Gi �g%^���g����{��w?����3�,ã��l4%�Z���F�we��A/�N���U9���q��X���¦`
�X�0�l��.f������o�3��c?��	z��Z�KK�B��w:ˢj�8�+�0l��'�f���L�a�(�5��E��S,�!D &��"(����g�Q�U(��{�﹖��F�z���;�ￒލu��/D�bYn�Q�����p���.�FSaO`�|�ٕ�ŌKk��)#�[��B�l��K� >��j�6�zP����&l�sr�"��+ ��J�|�{����H�)�9�"��j��.�n�IL�j��+/��2�����{��-�#��Y�NZ���ufM�sHbOZ�6�Y�7��ǡ�T !c݌)�`���?ɚ�� ��`��X@\k8{�5,{�]�(���l�PD��0fB�;��*KЩ:&�a�(�����5�o/��%l0RZ���(x>J,qè]�lO��=$�[�1
�V�����,g�����+PG�.sJlW�JSY �9��8�:h�j4�S��ݵ��|aL��t�*�P*/C����*6�=��rDߪo*�39!�G���x/�W6�=���r��d!~��Uυ�)�+c�n٬hJ��
:����e QF����!�bQW�h�����N=�XL���!-��|fɆ=��ظ�I���?�����>��_����I��$߮T�l�]�A��gR��0 �  y���(�T��*��*b�b�t\�et�f��v�ڡ��7E�y>�9��Ҥ��|��,�3���3NК�BΊQZ3>}�\~T�(���?w�ȂN��e�!ɞ;�^s�#���P{*^�����Ν?���=Ş�(r[�曘A��*��x� ǘnn��=%}�ĲN��1��e��U�i����D�S�u\<e��-/{�;����� �2����D]��
sm�,[�5>gB�fY�HWO4���N4�'��g8_�G��m����е쀷n����������K�i��n���xG7�d��7�L�(�𴦏,d�˂>E>��)���r=�بKK�%ZoC �h�X�3��d΁'}��$�ygu�ej�`/���OLo��\'��BDa�g�0���:\���N��W�z��h�c��Ʀ���R5RA�}�6&���w��G�I��Ӽ��}��ﳆJ�>N�@P��#��ZLqjzZ�1>0_i�޷�����_Ss�[���Gӫآv\�Y6?�=>�3��؏B���s���̍L�ׅE��sr%6C0��bh
���eS�\" �sO��Q��o�wN��S̈æ6΁d���Y�vp�Θ\���4C<ɭ���nғ<S)�@�~}gg%�[ⵐ���q�g����[�����M޸��_�u����� �Ӯ5˿�k�[7�;����� �#�Wx��_������z���o������onݼ�~���r��5�ㄿ��,`����y�8sj��E�^[��9�+�����\�}K�<�����sg��*Qs�*�;�O6��J+\ğ��㟜��Z-�Y�
��h=���&E��m8��
9�$ڴ����lB�-r��:�ʅ-ӎ�����DD�٥3NS�c�3��3EI�*�U=a`�c��s�+d�q\��^��U[�%��!�+�Y��g#̖J��=����8kXj[�jL�u�<�u+�RRX)A�u�"oؓ{��b��M�f'�,%G��W�ݼr�ȭ��T|XPq\7�#�7`RO�X�XR_�-CFw�R�v��=��2�e5��5g�@1�b}��IBu���
R�X�|��򝷮�XO~�����k�=���ON{	�W�7�o��	MC�@%�P��@��������tj؅8���Һ����F�Ѵ�e���QI1�`y$��uaj-�q�ru���,4��μ�6�i%�!�^°�魁r�9;�X0�������I���j]Ō҇��q54�8�	�Y�B�+��=8hV_�GXVMaTlM���Ό�Z3��[�&�S+�-İ1`�c;ᓄ�s�0ɔ7ʜ6���>�YQ���w4�_d�lS��	����TDm�9��q�76�Pb͛�W�D�O�Պ�F�p�w�Q��KW��%z�乍<�@<}�;)�H�ț�n�f�S��G���1d(�x>�"�O�ͤ�Z�W¯�"b��u��W��֔{$��#E��S?������\�K����[FQ��U��߮]�r��ݭ      D      x������ � �      F   8   x�- ��1	Коледино
2	Резервный
\.


���      J   �   x�u��q1�3D1	|� �����r���.��n10�~�>ղ\f#dVN:�o'�L��Њ�]s����QL�U���y0-�EsM1%"HP�/'r���Tgc<�������u�idY&�yL�X,�7����	eh�22���Kj�F���	��F�%�r�r���$O;�����G���~"� 'zV4     