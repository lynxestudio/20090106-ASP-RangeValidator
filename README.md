# Usando los controles de validación ASP .NET II (RangeValidator)

Si necesitamos asegurarnos que el valor de un campo se encuentre dentro de unos limites es decir dentro de un rango especifico, el control RangeValidator se asegura que el valor de un campo sea del tipo que necesitemos y se encuentre dentro de los valores iniciales y finales que necesitemos, descarga el código desde este enlace.


Lo compilamos:

(.NET)csc /t:library -r:System.Web ValidarRango.aspx.cs
(mono) mcs /t:library -r:System.Web ValidarRango.aspx.cs

Lo instalamos: copiamos el ensamblado a la carpeta bin ejecutamos xsp y abrimos el navegador con la dirección http://localhost:8080/ValidarRango.aspx.
Si todo es correcto se mostrará la ejecucción como en la siguiente imagen:

Propiedades del control RangeValidator

<b>display</b> Esta propiedad puede tener 3 valores: Static es la propiedad predeterminada, reserva un espacio suficiente en la página para mostrar el mensaje de error.Dynamic el espacio para mostrar el mensaje no se reserva, cuando el mensaje se despliega se desplaza el contenido existente en la página. 

<b>None</b> el mensaje no será desplegado en el lugar del control sino en el control ValidationSummary si se localiza en la misma página.

<b>type</b> El tipo de datos de los valores a comparar, los tipos de datos disponibles para este control son: Currency (moneda), Date (fecha), Double (valor de punto flotante), Integer (Entero sin punto decimal), String (Cadena).

<b>controlToValidate</b> El identificador del control donde obtenemos el valor para validar.

minimumValue El valor mínimo del rango.

maximumValue El valor máximo del rango.
