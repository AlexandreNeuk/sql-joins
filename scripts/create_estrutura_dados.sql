DROP TABLE IF EXISTS Alimento CASCADE;
DROP TABLE IF EXISTS TipoAlimento CASCADE;

CREATE TABLE TipoAlimento (
    codigo INT GENERATED ALWAYS AS IDENTITY,	
    nome VARCHAR(50) NULL,
	PRIMARY KEY(codigo)
);

CREATE TABLE Alimento(
   codigo INT GENERATED ALWAYS AS IDENTITY,
   codigo_tipo_alimento INT NULL,
   nome VARCHAR(50) NULL,
   CONSTRAINT fk_tipoalimento FOREIGN KEY(codigo_tipo_alimento) REFERENCES TipoAlimento(codigo)
);

INSERT INTO public.TipoAlimento(nome) VALUES ('Fruta');
INSERT INTO public.TipoAlimento(nome) VALUES ('Verdura');
INSERT INTO public.TipoAlimento(nome) VALUES ('Industrializado');
INSERT INTO public.TipoAlimento(nome) VALUES ('Bebida');
INSERT INTO public.TipoAlimento(nome) VALUES ('Legume');

--select * from TipoAlimento;

INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Guarana', 4);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Laranja', 1);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Maçã', 1);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Salgadinho', 3);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Alface', 2);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Tomate', NULL);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Rúcula', 2);
INSERT INTO public.Alimento(nome, codigo_tipo_alimento) VALUES ('Banana', 1);

--select * from Alimento;
