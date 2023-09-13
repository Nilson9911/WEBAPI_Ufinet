--Creación base de datos--
use master
go
IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'Ufinet')
CREATE DATABASE Ufinet

GO 

USE Ufinet

GO


-- Creación tablas Paises, Restaurante y Hoteles


CREATE TABLE Pais (
  Cod_Pais int IDENTITY(1,1) NOT NULL,
  Nombre varchar(100) NOT NULL,
  Cod_ISO varchar(100) NOT NULL,
  CONSTRAINT PK_Pais PRIMARY KEY CLUSTERED (Cod_Pais)
);

go

CREATE TABLE Restaurantes (
  Cod_Restaurante int IDENTITY(1,1) NOT NULL,
  Cod_Pais int NOT NULL,
  Nom_Restaurante varchar(100) NOT NULL,
  CONSTRAINT PK_Restaurante PRIMARY KEY CLUSTERED (Cod_Restaurante),
  CONSTRAINT FK_Restaurantes_Pais FOREIGN KEY (Cod_Pais) REFERENCES Pais(Cod_Pais)
);

go

CREATE TABLE Hoteles (
  Cod_Hotel int IDENTITY(1,1) NOT NULL,
  Cod_Pais int NOT NULL,
  Nom_Hotel varchar(100) NOT NULL,
  CONSTRAINT PK_Hotel PRIMARY KEY CLUSTERED (Cod_Hotel),
  CONSTRAINT FK_Hotel_Pais FOREIGN KEY (Cod_Pais) REFERENCES Pais(Cod_Pais)
);

go

--Poblado de tablas--

--INICIO PAISES--

INSERT INTO Pais (Nombre, Cod_ISO) VALUES
('Afganistán', 'AF'),
('Åland', 'AX'),
('Albania', 'AL'),
('Alemania', 'DE'),
('Andorra', 'AD'),
('Angola', 'AO'),
('Anguila', 'AI'),
('Antártida', 'AQ'),
('Antigua y Barbuda', 'AG'),
('Arabia Saudita', 'SA'),
('Argelia', 'DZ'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Aruba', 'AW'),
('Australia', 'AU'),
('Austria', 'AT'),
('Azerbaiyán', 'AZ'),
('Bahamas', 'BS'),
('Bangladés', 'BD'),
('Barbados', 'BB'),
('Baréin', 'BH'),
('Bélgica', 'BE'),
('Belice', 'BZ'),
('Benín', 'BJ'),
('Bermudas', 'BM'),
('Bielorrusia', 'BY'),
('Birmania', 'MM'),
('Bolivia', 'BO'),
('Bosnia y Herzegovina', 'BA'),
('Botsuana', 'BW'),
('Brasil', 'BR'),
('Brunéi', 'BN'),
('Bulgaria', 'BG'),
('Burkina Faso', 'BF'),
('Burundi', 'BI'),
('Bután', 'BT'),
('Cabo Verde', 'CV'),
('Camboya', 'KH'),
('Camerún', 'CM'),
('Canadá', 'CA'),
('Catar', 'QA'),
('Caribe Neerlandés', 'BQ'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('Chipre', 'CY'),
('Colombia', 'CO'),
('Comoras', 'KM'),
('Corea del Norte', 'KP'),
('Corea del Sur', 'KR'),
('Costa de Marfil', 'CI'),
('Costa Rica', 'CR'),
('Croacia', 'HR'),
('Cuba', 'CU'),
('Curazao', 'CW'),
('Dinamarca', 'DK'),
('Dominica', 'DM'),
('Ecuador', 'EC'),
('Egipto', 'EG'),
('El Salvador', 'SV'),
('Emiratos Árabes Unidos', 'AE'),
('Eritrea', 'ER'),
('Eslovaquia', 'SK'),
('Eslovenia', 'SI'),
('España', 'ES'),
('Estados Unidos', 'US'),
('Estonia', 'EE'),
('Etiopía', 'ET'),
('Filipinas', 'PH'),
('Finlandia', 'FI'),
('Fiyi', 'FJ'),
('Francia', 'FR'),
('Gabón', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Granada', 'GD'),
('Grecia', 'GR'),
('Groenlandia', 'GL'),
('Guadalupe', 'GP'),
('Guam', 'GU'),
('Guatemala', 'GT'),
('Guayana Francesa', 'GF'),
('Guernsey', 'GG'),
('Guinea', 'GN'),
('Guinea-Bisáu', 'GW'),
('Guinea Ecuatorial', 'GQ'),
('Guyana', 'GY'),
('Haití', 'HT'),
('Honduras', 'HN'),
('Hong Kong', 'HK'),
('Hungría', 'HU'),
('India', 'IN'),
('Indonesia', 'ID'),
('Irak', 'IQ'),
('Irán', 'IR'),
('Irlanda', 'IE'),
('Isla Bouvet', 'BV'),
('Isla de Man', 'IM'),
('Isla de Navidad', 'CX'),
('Norfolk', 'NF'),
('Islandia', 'IS'),
('Islas Caimán', 'KY'),
('Islas Cocos', 'CC'),
('Islas Cook', 'CK'),
('Islas Feroe', 'FO'),
('Islas Georgias del Sur y Sand', 'GS'),
('Islas Heard y McDonald', 'HM'),
('Islas Malvinas', 'FK'),
('Islas Marianas del Norte', 'MP'),
('Islas Marshall', 'MH'),
('Islas Pitcairn', 'PN'),
('Islas Salomón', 'SB'),
('Islas Turcas y Caicos', 'TC'),
('Islas ultramarinas de Estados', 'UM'),
('Islas Vírgenes Británicas', 'VG'),
('Islas Vírgenes de los Estados', 'VI'),
('Israel', 'IL'),
('Italia', 'IT'),
('Jamaica', 'JM'),
('Japón', 'JP'),
('Jersey', 'JE'),
('Jordania', 'JO'),
('Kazajistán', 'KZ'),
('Kenia', 'KE'),
('Kirguistán', 'KG'),
('Kiribati', 'KI'),
('Kuwait', 'KW'),
('Laos', 'LA'),
('Lesoto', 'LS'),
('Letonia', 'LV'),
('Líbano', 'LB'),
('Liberia', 'LR'),
('Libia', 'LY'),
('Liechtenstein', 'LI'),
('Lituania', 'LT'),
('Luxemburgo', 'LU'),
('Macao', 'MO'),
('Madagascar', 'MG'),
('Malasia', 'MY'),
('Malaui', 'MW'),
('Maldivas', 'MV'),
('Malí', 'ML'),
('Malta', 'MT'),
('Marruecos', 'MA'),
('Martinica', 'MQ'),
('Mauricio', 'MU'),
('Mauritania', 'MR'),
('Mayotte', 'YT'),
('México', 'MX'),
('Micronesia', 'FM'),
('Moldavia', 'MD'),
('Mónaco', 'MC'),
('Mongolia', 'MN'),
('Montenegro', 'ME'),
('Montserrat', 'MS'),
('Mozambique', 'MZ'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Nicaragua', 'NI'),
('Níger', 'NE'),
('Nigeria', 'NG'),
('Niue', 'NU'),
('Noruega', 'NO'),
('Nueva Caledonia', 'NC'),
('Nueva Zelanda', 'NZ'),
('Omán', 'OM'),
('Países Bajos', 'NL'),
('Pakistán', 'PK'),
('Palaos', 'PW'),
('Palestina', 'PS'),
('Panamá', 'PA'),
('Papúa Nueva Guinea', 'PG'),
('Paraguay', 'PY'),
('Perú', 'PER'),
('Polinesia Francesa', 'PF'),
('Polonia', 'PL'),
('Portugal','PT'),
('Puerto Rico', 'PR'),
('Reino Unido', 'GB'),
('República Centroafricana', 'CF'),
('República Checa', 'CZ'),
('Macedonia', 'MK'),
('República del Congo', 'CG'),
('República Democrática del Con', 'CD'),
('República Dominicana', 'DO'),
('Reunión', 'RE'),
('Ruanda', 'RW'),
('Rumania', 'RO'),
('Rusia', 'RU'),
('República Árabe Saharaui Demo', 'EH'),
('Samoa', 'WS'),
('Samoa Americana', 'AS'),
('San Bartolomé', 'BL'),
('San Cristóbal y Nieves', 'KN'),
('San Marino', 'SM'),
('San Martín', 'MF'),
('San Pedro y Miquelón', 'PM'),
('San Vicente y las Granadinas', 'VC'),
('Santa Elena, Ascensión y Tris', 'SH'),
('Santa Lucía', 'LC'),
('Santo Tomé y Príncipe', 'ST'),
('Senegal', 'SN'),
('Serbia', 'RS'),
('Seychelles', 'SC'),
('Sierra Leona', 'SL'),
('Singapur', 'SG'),
('Sint Maarten', 'SX'),
('Siria', 'SY'),
('Somalia', 'SO'),
('Sri Lanka', 'LK'),
('Suazilandia', 'SZ'),
('Sudáfrica', 'ZA'),
('Sudán', 'SD'),
('Sudán del Sur', 'SS'),
('Suecia', 'SE'),
(' Suiza', 'CH'),
('Surinam', 'SR'),
('Svalbard y Jan Mayen', 'SJ'),
('Tailandia', 'TH'),
('República de China', 'TW'),
('Tanzania', 'TZ'),
('Tayikistán', 'TJ'),
('Territorio Británico del Océa', 'IO'),
('Tierras Australes y Antártica', 'TF'),
('Timor Oriental', 'TL'),
('Togo', 'TG'),
('Tokelau', 'TK'),
('Tonga', 'TO'),
('Trinidad y Tobago', 'TT'),
('Túnez', 'TN'),
('Turkmenistán', 'TM'),
('Turquía', 'TR'),
('Tuvalu', 'TV'),
('Ucrania', 'UA'),
('Uganda', 'UG'),
('Uruguay', 'UY'),
('Uzbekistán', 'UZ'),
('Vanuatu', 'VU'),
('Ciudad del Vaticano', 'VA'),
('Venezuela', 'VE'),
('Vietnam', 'VN'),
('Wallis y Futuna', 'WF'),
('Yemen', 'YE'),
('Yibuti', 'DJ'),
('Zambia', 'ZM'),
('Zimbabue', 'ZW');

-- FIN PAISES--


--INICIO RESTAURANTES--

INSERT Restaurantes(Cod_Pais, Nom_Restaurante) VALUES 
    (3, 'El Sabor Delicioso'),
    (3, 'La Parrilla Aromática'),
    (4, 'Bistro Elegante'),
    (4, 'Mariscos Frescos'),
    (7, 'Pizzería Bella Italia'),
    (7, 'Tacos y Tamales Tradicionales'),
    (89, 'La Crepería Encantada'),
    (89, 'El Rincón Picante'),
    (86, 'Sushi Zen'),
    (86, 'Cocina de la Abuela');

--FIN RESTAURANTES--


--INICIO HOTELES--

INSERT Hoteles(Cod_Pais, Nom_Hotel) VALUES 
    (3, 'Hotel Estrella Dorada'),
    (3, 'Resort Paraíso Azul'),
    (4, 'Alojamiento Sereno'),
    (4, 'Hotel Montaña Majestuosa'),
    (7, 'Maravilla Marina Hotel'),
    (7, 'Oasis del Descanso'),
    (89, 'Hotel Luna de Plata'),
    (89, 'Hotel Cielo Estrellado'),
    (86, 'Hotel Aventura en la Selva'),
    (86, 'Hotel Elegancia Urbana');

--FIN HOTELES--

--FIN POBLADO TABLAS--



--CREACIÓN PROCEDIMIENTOS ALMACENADOS--


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'listar_pais')
DROP PROCEDURE listar_pais


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'Obt_Pais')
DROP PROCEDURE Obt_Pais

go

create procedure Obt_Pais
(@filter varchar(100))
as
begin

    declare @result table (
        Cod_Pais int,
        Nombre varchar(100),
        Cod_ISO varchar(100),
        Cod_Hotel int,
        Nom_Hotel varchar(100),
        Cod_Restaurante int,
        Nom_Restaurante varchar(100)
    );

    insert into @result
    select P.Cod_Pais, P.Nombre, P.Cod_ISO, null, null, null, null
    from Pais P
    where Nombre =@filter;

    if not exists (select 1 from @result)
    begin
        insert into @result
        select P.Cod_Pais, P.Nombre, P.Cod_ISO, null, null, null, null
        from Pais P
        where Cod_ISO = @filter;
    end

    if not exists (select 1 from @result)
    begin
        insert into @result
        select P.Cod_Pais, P.Nombre, P.Cod_ISO, H.Cod_Hotel, H.Nom_Hotel, null, null
        from Pais P
        inner join Hoteles H on P.Cod_Pais = H.Cod_Pais
        where H.Nom_Hotel = @filter;
    end

    if not exists (select 1 from @result)
    begin
        insert into @result
        select P.Cod_Pais, P.Nombre, P.Cod_ISO, null, null, R.Cod_Restaurante, R.Nom_Restaurante
        from Pais P
        inner join Restaurantes R on P.Cod_Pais = R.Cod_Pais
        where R.Nom_Restaurante = @filter;
    end

    select * from @result;
end

go


create procedure listar_pais
as
	begin
		SELECT * from pais
			
	end


go


go








--FIN PROCEDIMIENTOS ALMACENADOS--
