PGDMP     &    #                x            scc    12.3    12.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26144    scc    DATABASE     u   CREATE DATABASE scc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE scc;
                user_scc    false            �          0    26392    building 
   TABLE DATA           A   COPY public.building (building_order, building_name) FROM stdin;
    public          user_scc    false    221   �       �          0    26320    constant 
   TABLE DATA           N   COPY public.constant (constant_id, constant_name, constant_value) FROM stdin;
    public          user_scc    false    212   �       �          0    26302    device 
   TABLE DATA             COPY public.device (device_floor_name, device_room_name, device_id, device_name, device_status, device_automation, device_additional, device_updated_by, device_building_name, device_ip, device_port, device_topic, device_username, device_password, device_pid) FROM stdin;
    public          user_scc    false    209   �       �          0    26192 
   device_log 
   TABLE DATA           q   COPY public.device_log (device_order, device_id, device_status, device_timestamp, device_updated_by) FROM stdin;
    public          user_scc    false    206   o       �          0    26403    floor 
   TABLE DATA           H   COPY public.floor (floor_order, floor_building, floor_name) FROM stdin;
    public          user_scc    false    223   ;       �          0    26349    language 
   TABLE DATA           M   COPY public.language (language_id, language_name, language_code) FROM stdin;
    public          user_scc    false    214   c       �          0    26373 
   permission 
   TABLE DATA           �  COPY public.permission (permission_id, permission_role, permission_report, permission_profile, permission_user_list, permission_create_user, permission_edit_user, permission_system_settings, permission_dashboard_settings, permission_create_role, permission_edit_role, permission_dashboard, permission_settings, permission_tab_permission, permission_create_building_floor_room, permission_edit_building_floor_room, permission_create_device_sensor, permission_edit_device_sensor) FROM stdin;
    public          user_scc    false    219   �       �          0    26443    room 
   TABLE DATA           P   COPY public.room (room_order, room_building, room_floor, room_name) FROM stdin;
    public          user_scc    false    225   �       �          0    26310    sensor 
   TABLE DATA           �   COPY public.sensor (sensor_floor_name, sensor_room_name, sensor_id, sensor_name, sensor_building_name, sensor_value, sensor_ip, sensor_port, sensor_topic, sensor_username, sensor_password, sensor_pid) FROM stdin;
    public          user_scc    false    210          �          0    26269 
   sensor_log 
   TABLE DATA           }   COPY public.sensor_log (sensor_order, sensor_id, sensor_temp, sensor_humid, sensor_heat_index, sensor_timestamp) FROM stdin;
    public          user_scc    false    208   �       �          0    26358    settings 
   TABLE DATA           ^   COPY public.settings (settings_id, settings_name, settings_value, settings_group) FROM stdin;
    public          user_scc    false    217   �"       �          0    26336    user 
   TABLE DATA           �   COPY public."user" (user_id, user_fullname, user_password, user_mobile, user_email, user_address, user_role, user_about, user_login_attempt, user_remember_token, user_lang, user_avatar, user_temporary_password) FROM stdin;
    public          user_scc    false    213   i#                  0    0    air_conditioner_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.air_conditioner_id_seq', 47, true);
          public          user_scc    false    205                       0    0    air_conditioner_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.air_conditioner_seq', 1, false);
          public          user_scc    false    204                       0    0    building_building_order_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.building_building_order_seq', 15, true);
          public          user_scc    false    220                       0    0    config_threshold_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.config_threshold_seq', 1, false);
          public          user_scc    false    203                       0    0    constant_constant_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.constant_constant_id_seq', 1, false);
          public          user_scc    false    211            	           0    0    floor_floor_order_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.floor_floor_order_seq', 5, true);
          public          user_scc    false    222            
           0    0    language_language_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.language_language_id_seq', 1, false);
          public          user_scc    false    215                       0    0    permission_permission_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.permission_permission_id_seq', 7, true);
          public          user_scc    false    218                       0    0    room_room_order_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.room_room_order_seq', 2, true);
          public          user_scc    false    224                       0    0    settings_settings_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.settings_settings_id_seq', 1, false);
          public          user_scc    false    216                       0    0    temp_humid_sensor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.temp_humid_sensor_id_seq', 4759, true);
          public          user_scc    false    207                       0    0    temp_humid_sensor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.temp_humid_sensor_seq', 1, false);
          public          user_scc    false    202            �      x�34�t4�24�t2����� ��      �   $   x�3�,.I-�O�H�KO�/K�)M��5����� ��S      �   w   x�3�450�t�r6љE
��y)�%��y�E�i@ml�g�&������i,g���	�������������%����1gH~Af��OfzF���wY.�GrniI�s�k����P'W� ���      �   �   x���=1����H�|��[��A�Ao��{ � �m�<y��7I��� B(��`
�.&}�ίb��Dd�*!�����]�����-����{���HK�I��jE ����ٮ�����M*����$;�ўG����]�s,�sA�\ϹH���<g��h���)�=Y���߹p���61�'�X      �      x�3�t4�4�2�tQ1z\\\ �      �   *   x�3��L-�K�M-N�,��2�t�K��,��,-����� �)	�      �   C   x�3�.-H-RpL����,���8CR�3R��"iH��e����������������h����� rm#�      �      x�3�t4�4�450�2�t�1c���� 7��      �   �   x�u�A�0���O�k��:��tHo":p�Tt}��(<���x~�9���l�2�X�y�4����qw��n�GH|8ˀn�] %*dB"��R��`���.9�,���]�����Cq$����p�Օ�Z=���No4^��ca�$r&P�E��`���Dm      �     x���;r1Ec{l �~��X !)��H�?�+���)��NN�s�ZOӥ�������o�}yI�-��x�I�-�D�rn�����\'��{��`�	��X`� K�Zc�`Nm��������5��6�� 0/0�s�H3q����Sj� � lc�4p��7S����� �f F�0C0i30c}smen&�A�S�g3_ǘ�>��h�S�)�A8m���}AU=Qо����(�J�/��R� �m��� �e
���(�Rx��e���3� T�f*�L3 �c��:f�f *�L3 W�4P��R�*��K���R�
���~t^hf?�]��ُYW�ů���5�x�k�����
�X3{<C�kf��H��lȌ�F����1�̐�Cf�73��5ca�֌^i���mf!�_��l�_�Kg� �V��� ��R@��U
��+���{� �QSS@=T �4A����F3 x��
���!�fv0)��I
��f�
�7�x�ͤ"�7�T
�7�d��f��t�L��N3ye���f��4PWP��2�i&-�����ha�4�
��s3�f �̠�23hfK�}3%
�����"3�f N3-��i��#@�
����f 6�4���X�}3�f������Ik�̰͘#@����1�aG�#*pv8�gG `U�7�}���y�4���MG ��ѯ��~� �o:�:���l��M ����e8A�	;8�if���M+`��z�4��@���y��M+ #m�f �oZ e&�o��xψ��>�t� (A7��ASS@	�����kG`~جW���];��k}b��+�x�h3�%���%�����A��v�A��v����O��~����x�F�>����~*L����L��Z���5�L�An4p~7����
�h��v�	���=�)Zc�A��v&X>Z�;e���0�q��kv�5;�?�^__�5�m?      �   x   x�u�Q
�@���a�j�4BH�����dAo�PD��o`�\ 4����P���ML>v3-�.j��#t�?j�i�_�!�*��<A&�#��+�4�?=o>|����n�֬�Go����6P�      �   �   x�m��J�@���S����rmL�i�PA��

].�#���˵�	�w��CApk���qob
�ݾ�>>>QGir��z%�mB�����})	��vO沴ݣB�P�ŧ�� &a0�qFB?�9��� E���8F�,��E�f�?�0YU�WK��&���{+a���J�U0��o5,��������`lտ��Qjj��y�,�y�x�߁�t���."H�d4��cZ�V{F�F{l�Z�x�t|_�-f�;��j�km     