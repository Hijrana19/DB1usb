PGDMP         -                z            Retail    14.5    14.5 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16603    Retail    DATABASE     l   CREATE DATABASE "Retail" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Retail";
                postgres    false            �            1259    16626    barang    TABLE     �   CREATE TABLE public.barang (
    idbarang integer NOT NULL,
    nama character varying(50),
    harga integer,
    stok integer,
    idsupplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16625    barang_idbarang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_idbarang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.barang_idbarang_seq;
       public          postgres    false    214                       0    0    barang_idbarang_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.barang_idbarang_seq OWNED BY public.barang.idbarang;
          public          postgres    false    213            �            1259    16655 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    idpembayaran integer NOT NULL,
    tgl_pembayaran date,
    total_bayar integer,
    idtransaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16654    pembayaran_idpembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_idpembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.pembayaran_idpembayaran_seq;
       public          postgres    false    218                       0    0    pembayaran_idpembayaran_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.pembayaran_idpembayaran_seq OWNED BY public.pembayaran.idpembayaran;
          public          postgres    false    217            �            1259    16612    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    idpembeli integer NOT NULL,
    nama character varying(30),
    no_telepon character(14),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    16611    pembeli_idpembeli_seq    SEQUENCE     �   CREATE SEQUENCE public.pembeli_idpembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pembeli_idpembeli_seq;
       public          postgres    false    212                        0    0    pembeli_idpembeli_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pembeli_idpembeli_seq OWNED BY public.pembeli.idpembeli;
          public          postgres    false    211            �            1259    16605    supplier    TABLE     �   CREATE TABLE public.supplier (
    idsupplier integer NOT NULL,
    nama character varying(50),
    no_telepon character(13),
    alamat character varying(30)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16604    supplier_idsupplier_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_idsupplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.supplier_idsupplier_seq;
       public          postgres    false    210            !           0    0    supplier_idsupplier_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.supplier_idsupplier_seq OWNED BY public.supplier.idsupplier;
          public          postgres    false    209            �            1259    16638 	   transaksi    TABLE     �   CREATE TABLE public.transaksi (
    idtransaksi integer NOT NULL,
    idbarang integer,
    idpembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �            1259    16637    transaksi_idtransaksi_seq    SEQUENCE     �   CREATE SEQUENCE public.transaksi_idtransaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transaksi_idtransaksi_seq;
       public          postgres    false    216            "           0    0    transaksi_idtransaksi_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transaksi_idtransaksi_seq OWNED BY public.transaksi.idtransaksi;
          public          postgres    false    215            r           2604    16629    barang idbarang    DEFAULT     r   ALTER TABLE ONLY public.barang ALTER COLUMN idbarang SET DEFAULT nextval('public.barang_idbarang_seq'::regclass);
 >   ALTER TABLE public.barang ALTER COLUMN idbarang DROP DEFAULT;
       public          postgres    false    214    213    214            t           2604    16658    pembayaran idpembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN idpembayaran SET DEFAULT nextval('public.pembayaran_idpembayaran_seq'::regclass);
 F   ALTER TABLE public.pembayaran ALTER COLUMN idpembayaran DROP DEFAULT;
       public          postgres    false    217    218    218            q           2604    16615    pembeli idpembeli    DEFAULT     v   ALTER TABLE ONLY public.pembeli ALTER COLUMN idpembeli SET DEFAULT nextval('public.pembeli_idpembeli_seq'::regclass);
 @   ALTER TABLE public.pembeli ALTER COLUMN idpembeli DROP DEFAULT;
       public          postgres    false    211    212    212            p           2604    16608    supplier idsupplier    DEFAULT     z   ALTER TABLE ONLY public.supplier ALTER COLUMN idsupplier SET DEFAULT nextval('public.supplier_idsupplier_seq'::regclass);
 B   ALTER TABLE public.supplier ALTER COLUMN idsupplier DROP DEFAULT;
       public          postgres    false    209    210    210            s           2604    16641    transaksi idtransaksi    DEFAULT     ~   ALTER TABLE ONLY public.transaksi ALTER COLUMN idtransaksi SET DEFAULT nextval('public.transaksi_idtransaksi_seq'::regclass);
 D   ALTER TABLE public.transaksi ALTER COLUMN idtransaksi DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16626    barang 
   TABLE DATA           I   COPY public.barang (idbarang, nama, harga, stok, idsupplier) FROM stdin;
    public          postgres    false    214   60                 0    16655 
   pembayaran 
   TABLE DATA           \   COPY public.pembayaran (idpembayaran, tgl_pembayaran, total_bayar, idtransaksi) FROM stdin;
    public          postgres    false    218   @1                 0    16612    pembeli 
   TABLE DATA           F   COPY public.pembeli (idpembeli, nama, no_telepon, alamat) FROM stdin;
    public          postgres    false    212   �1                 0    16605    supplier 
   TABLE DATA           H   COPY public.supplier (idsupplier, nama, no_telepon, alamat) FROM stdin;
    public          postgres    false    210   ;3                 0    16638 	   transaksi 
   TABLE DATA           Z   COPY public.transaksi (idtransaksi, idbarang, idpembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    216   �4       #           0    0    barang_idbarang_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.barang_idbarang_seq', 1, false);
          public          postgres    false    213            $           0    0    pembayaran_idpembayaran_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pembayaran_idpembayaran_seq', 1, false);
          public          postgres    false    217            %           0    0    pembeli_idpembeli_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pembeli_idpembeli_seq', 1, false);
          public          postgres    false    211            &           0    0    supplier_idsupplier_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.supplier_idsupplier_seq', 1, false);
          public          postgres    false    209            '           0    0    transaksi_idtransaksi_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transaksi_idtransaksi_seq', 1, false);
          public          postgres    false    215            z           2606    16631    barang barang_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (idbarang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    214            ~           2606    16660    pembayaran pembayaran_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (idpembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            x           2606    16617    pembeli pembeli_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (idpembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            v           2606    16610    supplier supplier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (idsupplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    210            |           2606    16643    transaksi transaksi_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (idtransaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    216            �           2606    16644    transaksi idbarang    FK CONSTRAINT     y   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT idbarang FOREIGN KEY (idbarang) REFERENCES public.barang(idbarang);
 <   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT idbarang;
       public          postgres    false    3194    214    216            �           2606    16649    transaksi idpembeli    FK CONSTRAINT     }   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT idpembeli FOREIGN KEY (idpembeli) REFERENCES public.pembeli(idpembeli);
 =   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT idpembeli;
       public          postgres    false    216    3192    212                       2606    16632    barang idsupplier    FK CONSTRAINT     ~   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT idsupplier FOREIGN KEY (idsupplier) REFERENCES public.supplier(idsupplier);
 ;   ALTER TABLE ONLY public.barang DROP CONSTRAINT idsupplier;
       public          postgres    false    210    3190    214            �           2606    16661    pembayaran idtransaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT idtransaksi FOREIGN KEY (idtransaksi) REFERENCES public.transaksi(idtransaksi);
 @   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT idtransaksi;
       public          postgres    false    218    3196    216               �   x�M�Mn�@�׏Sp�Vx�k�Dj�����QF-�0��T�}3�����U�TD8�0�!<����h}�#P��D�4�a��()�iǱ(�H�#	ʹk�B�E7��0��VO�/
� �;/h��l9N�4�ŕ��P�߳���
݌>�c�uilf�k�wW#k��ov� %��	�������si�O��u��ۑ�e;��L1���~���LP�a�P���3Ѷ�8�vK�����?c|<A�d4a�         �   x�m�K!�5�e��������\A`��B<�$&�F^����N�!r��s�09�$�nD 'eQyQ�TDuS�UU�&A͎I��v�=�-�²�?�	�He�R���
i[���L�O��A�`EBżZ�����Fq         N  x�]��n�0�������H�e��J�RE%�n&�%`�	���w�H�T���z�$Y�<��:�1_$i�/W\Č��o�[�
��(�:��e�xj?I�x�Zz�A95F�E���^¤�q��G9Ӊ��vE��jpog.-ĮÊ����ʉo��7ޮ`+M�\�0A2�~��p2�O56x��m���腠��^��%��v�I��6W�ֺ����Д&ik���+�*d��bB���Ά��'�}��5�Uӈ�c���(R��+��I��n�Y�ʞm;Z�����Z��{�9C�ްC��ڸ��	58Oҝ`��?�+��}�DQ��#��         r  x����n�0���~�����6@���C�^�*�h�HP^�^��
X���,ղ���P��k��LӢ�eZ6і�?B��Yvh�45����N7KJ�U�@I0��
���:�!"K�����àvН�,���l<�6�W!e�Ƥ\�%F���a�n��2B:Cq��2,I�?-�	�h1���~��\�S=RR9OV��tכ{.�n�߂.��/��,:��y��|Q�$���2/� ����~����h
��s�#"�8C�Scp%�&}$gMI���Q����B�I��1������}�WU���,��C���Q�Y�g���lU��*�,Ÿ;*oy����W�:U���Z�e�w��|���֩         �   x�}��� D����T>����]"e���{I�W�N���lCpSQ=�B���	2���{�>�u��G���^-���gU-4L�0kH6�!I�2UO�B#���7[�����lZ��c��4�#̮�`�44)��]#(e���֎U��0K#մ�a���ԔO�z8�)z     