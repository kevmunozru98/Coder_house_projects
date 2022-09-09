select * from articulos

/* listado de cantidad de articulos por ciudad
nomnbre de la ciudad, pais, cantidad total de articulos*/

SELECT a.tipo AS tipo, a.autor_id AS autor, a.id AS id, c.ciudad, c.pais_id, p.pais, p.id
FROM articulos a
INNER JOIN ciudades c ON a.id = c.pais_id
INNER JOIN paises p ON p.id = a.id;

SELECT a.tipo AS tipo, a.autor_id AS 'autor nombre', a.id AS id, concat(c.ciudad, ' ' , c.pais_id) AS Ciudades, s.nombre
FROM articulos a
INNER JOIN ciudades c ON a.id = c.pais_id
INNER JOIN sucursales s ON s.ciudad_id = a.id
WHERE a.id IN (select count(id) FROM articulos GROUP BY id);


select count(id) FROM articulos  GROUP BY id;

select * from cantidad_articulos_ciudad_pais;

