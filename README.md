# PostgreSQL
Ejercicios para practicar con PostgreSQL.
<ol>
<li>Crea una función que reciba un número entero y retorne un texto indicando si el número es par o impar. Para calcular el resto de la división se utiliza el operador %.</li>

  <li>Pon a prueba tu función con dos números distintos (uno par y otro impar).</li>

  <li>Crea un procedimiento almacenado llamado crearNumeros que realizará las siguientes acciones:</li>
  <ul>
  <li>Crea una tabla llamada NUMEROS con una columna de tipo array de números enteros. Si la tabla ya existe se borrará previamente.</li>
  <li>Ejecuta 100 sentencias INSERT INTO para insertar en la tabla 100 filas llenando cada array de la siguiente manera:</li>
    <ul>
      <li>La posición 1 del array se llenará con números al azar entre 1 y 10.</li>
      <li>La posición 2 del array se llenará con números al azar entre 3 y 9.</li>
      <li>La posición 3 del array se llenará con números al azar entre 10 y 20.</li>
    </ul>
  </ul>
<li>Ejecuta una SELECT para mostrar todos los números guardados en la tabla NUMEROS. Utiliza la función que creaste anteriormente para añadir una columna a la derecha de cada número indicando si es par o impar. Recuerda que cada fila tiene 3 números y habrá que aplicar la función con cada uno de ellos.</li>
</ol>
