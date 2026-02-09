

<h2>🏡 Descripción general:</h2>
<br>
En esta actividad se realiza una exploración de datos en SQL de un dataset de viviendas, teniendo como referencia el precio promedio, así mismo se incorpora una serie de tableros dinámicos en Looker Studio para reforzar los resultados obtenidos en las consultas de SQL Server.</a>

<br><br>
<h2>⚙️Tecnologías: </h2>
<br>
    • SQL Server <br>
    • Looker Studio <br>
<br><br>

<h2>🖇️ Fuente: </h2><br>
https://www.kaggle.com/datasets/shivachandel/kc-house-data
<br>
<br>
<br>
<h2>📊 Actividades: </h2>
<br>
  • Definición de base de datos e importación de datos.<br>
  • Consultas para extraer cálculos de precios.<br>
  • Filtros y funciones de agregación.<br> 
  • Reporte en Looker Studio:  <br>https://lookerstudio.google.com/s/ouxeBOKHxaU<br> 
<br>
<br>
<h2>Exploración en SQL: </h2>
<br>
▫️Top 50<br><br>
Top 50 con el precio promedio de una casa por zipcode, en orden descendente:<br><br>

![Top50](images/Top50.png)
<br><br><br>
▫️Precio por metro cuadrado<br><br>
Precio por metro cuadrado por zipcode en los años 2014 (Precio_m2) y 2015 (Precio_m2_2015). <br><br>
![Alta Tecnologia](images/m2.png)
<br><br><br>
▫️Relación grado - condición <br><br>
La condición (1-5) mide el estado actual de mantenimiento de la vivienda.<br>
El grado (1-13) mide la calidad de diseño y construcción.<br>
Relación del grado y la condición de vivienda con el precio promedio de las 
casas que han sido renovadas.<br><br>
![Grado - condición](images/grado_condición.png)
<br><br><br>
▫️Calidad de la vista <br><br>
Relación de calidad de la vista (casas con vista a un río o lago) con el número de pisos 
y precio promedio:<br><br>
![vista_pisos](images/vista_pisos.png)
<br><br><br>
La vivienda con el precio más alto tiene una calidad de vista 2, por lo que otros factores como 
el número de baños, habitaciones y m² pudo influir en su precio.<br><br>
![vista_pisos2](images/vista_pisos2.png)
<br><br><br>
![vista_pisos3](images/vista_pisos3.png)
<br><br><br>
<h2>🔶 Observaciones generales:</h2>
<br>
• La mayor parte de las viviendas han sido construidas en 2006 y 2014, con 2 habitaciones y 
2 baños.<br>
• Se observó que existe correlación entre el grado de vivienda y el precio promedio.<br> 
• Existe una baja correlación entre la calidad de la vista con el precio promedio<br>
• El número de pisos no tiene relación con mejorar la calidad de la vista.
<br>
