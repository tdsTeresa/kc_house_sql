
-- Creación de base de datos y tabla
create database House_data
use House_data

create table houses (id int not null, 
					date_h date,
					price int,
					bedrooms int,
					bathrooms float(5),
					sqft_living int,
					sqft_lot int,
					floors float(4),
					waterfront int,
					view_h int,
					condition int,
					grade int,
					sqft_above int,
					sqft_basement int,
					yr_built int,
					yr_renovated int,
					zipcode int,
					lat float(8),
					long float(10),
					sqft_living15 int,
					sqft_lot15 int)


-- ACTIVIDADES:

-- 1.	Precio promedio por zipcode, agrupado por año de construcción y ordenado de mayor a menor (Top 50). 
--		Incluir el número promedio de habitaciones (bedrooms) y baños (bathrooms) para la agrupación.

Select top 50 zipcode, yr_built, avg(bedrooms) as Promedio_habitaciones, 
			avg(bathrooms) as Promedio_bathrooms, 
			avg(price) as Precio_promedio from houses 
			group by zipcode, yr_built 
			order by Precio_promedio desc


-- Comparación con tabla dinámica generada en Looker Studio (sin agregaciones).
select top 50 zipcode, avg(price) as Precio_promedio from houses group by zipcode order by Precio_promedio desc


-- Moda de las habitaciones y baños.
select top 1 bedrooms, count(*) as Conteo_bedrooms from houses group by bedrooms order by Conteo_bedrooms desc
select top 2 bathrooms, count(*) as Conteo_bathrooms from houses group by bathrooms order by Conteo_bathrooms desc


-- 2. Calcular el precio por metro cuadrado por zipcode

Select zipcode, avg(price/ (sqft_living * 0.092903)) as Precio_m2, 
		avg(price/ (sqft_living15 * 0.092903)) as Precio_m2_2015 
		from houses group by zipcode order by Precio_m2 desc, Precio_m2_2015 desc



-- 3. Dos análisis adicionales propios del estudiante:

-- a) Relación del grado y la condición de vivienda con el precio promedio de las casas que han sido renovadas

Select grade, condition, avg(price) as Precio_promedio from houses 
		where yr_renovated != 0 group by grade, condition 
		order by Precio_promedio desc

-- Moda de condición y grado
select top 3 condition, count(*) as conteo from houses group by condition order by conteo desc
select condition, grade, count(grade) as conteo from houses group by condition, grade order by conteo desc


-- b) Relación de calidad de la vista con el número de pisos promedio en casas con vista a un río o lago

Select view_h, count(view_h) as Cantidad, 
		avg(floors) as Promedio_pisos,
		avg(price) as Precio_promedio from houses 
		where waterfront = 1 group by view_h 
		order by  Precio_promedio desc


-- Moda o número de pisos más frecuentes

select top 1 floors, count(*) as Conteo from houses where waterfront=1 group by floors order by conteo desc


-- Datos de la calidad de vista con el precio más alto

select view_h, grade, condition, floors, yr_built, yr_renovated, sqft_living, zipcode, price from houses where waterfront=1 order by price desc

select top 5 view_h, count(*) as Conteo from houses where waterfront=1 group by view_h order by Conteo desc


--Otros factores como baños y habitaciones

Select zipcode, avg(bathrooms) as Promedio_bathrooms,
		avg(bedrooms) as Promedio_bedrooms,
		avg(price) as Precio_promedio from houses group by zipcode order by Precio_promedio desc