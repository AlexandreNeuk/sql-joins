--- Selects

SELECT * FROM TipoAlimento;

SELECT * FROM Alimento;

--- Joins

SELECT *
FROM Alimento a
INNER JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento

SELECT *
FROM Alimento a
LEFT JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento

SELECT *
FROM Alimento a
RIGHT JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento

SELECT *
FROM Alimento a
FULL OUTER JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento

-- Casos exremos

SELECT *
FROM Alimento a
FULL OUTER JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento
WHERE ta.codigo is null or a.codigo_tipo_alimento is null

SELECT *
FROM Alimento a
LEFT JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento
WHERE ta.codigo is null

SELECT *
FROM Alimento a
RIGHT JOIN TipoAlimento ta ON ta.codigo = a.codigo_tipo_alimento
WHERE a.codigo_tipo_alimento is null





