# 🌐 Structured Query Language *(SQL)*
Es un lenguaje de programación diseñado para gestionar y manipular bases de datos relacionales. 
Su principal función es permitir la creación, modificación, eliminación y consulta de datos almacenados.
Se utiliza ampliamente en sistemas de gestión de bases de datos ***DBMS*** como PostgreSQL, MySQL, Oracle Database, SQL Server y SQLite, entre otros.

## 🧑🏽‍💻 Antes de comenzar: ¿Qué necesitas para ejecutar SQL?

Para poder ejecutar consultas SQL y gestionar bases de datos, necesitas configurar correctamente tanto el motor de base de datos (servidor) como la conexión con el cliente. Aquí te detallo los componentes esenciales:

1. **🛢️ Motor de base de datos (Servidor)**
    El motor es el software que gestiona los datos y procesa las instrucciones SQL. Ejemplos: MySQL Server, PostgreSQL, Microsoft SQL Server, Oracle Database, SQLite (versión ligera sin servidor). Debes:
    
    - Instalar el motor en un servidor o equipo local.
    
    - Crear una base de datos.

    - Configurar puertos de acceso (por defecto, por ejemplo, el 3306 para MySQL o el 5432 para PostgreSQL).

    - Definir usuarios y contraseñas con los permisos adecuados.


2. **🖥️ Cliente de conexión (Interfaz o entorno de trabajo)**

    El cliente es la herramienta que utilizas para enviar consultas al motor. Puede ser:

    - Command Line Interface (CLI) como PostgreSQL o MySQL.

    - Interfaz gráfica Herramientas (GUI) como DBeaver, MySQL Workbench, pgAdmin, Azure Data Studio, etc.

    - Lenguaje de programación a través de librerías o controladores (por ejemplo, mysql-connector para Python o JDBC para Java).

3. **📶 Configuración de conexión**

    Debes establecer una conexión entre el cliente y el servidor especificando:

    - Host o dirección IP del servidor.

    - Puerto del motor.

    - Nombre de usuario y contraseña.

    - Nombre de la base de datos.

4. **🛡️ Requisitos adicionales**

    - Tener drivers o controladores instalados si accedes desde un lenguaje de programación.

    - Asegurar que el firewall o la red permitan la comunicación entre cliente y servidor.

    - Mantener actualizados los parches de seguridad del motor de base de datos.

#### ✅ En resumen:

Para usar SQL necesitas un motor donde se almacenen y gestionen los datos, y un cliente desde el cual puedas ejecutar consultas y administrar la base. Una correcta configuración de red, credenciales y controladores te permitirá trabajar eficientemente con tu base de datos.

<br>

# 📓 Introducción general

En una base de datos relacional, el lenguaje SQL (Structured Query Language) no solo sirve para consultar información, sino que también permite definir, manipular, controlar y asegurar los datos y los objetos que los almacenan.
Para ello, SQL se divide en cuatro sublenguajes principales, cada uno con un propósito específico:

###  1. Data Definition Language *(DDL)*
Se usa para **definir o modificar la estructura** de los objetos de la base de datos: tablas, columnas, vistas, índices, etc.

| Comando    | Descripción 
|------------|---------------------------
| `CREATE`   | Crea objetos nuevos (tabla, vista, base de datos, etc.) 
| `ALTER`    | Modifica la estructura de un objeto existente 
| `DROP`     | Elimina un objeto (tabla, vista, etc.) 
| `TRUNCATE` | Borra todos los datos de una tabla, pero mantiene su estructura 
<br>



### 2. Data Manipulation Language *(DML)*
Se usa para **trabajar con los datos** dentro de las tablas: insertar, consultar, modificar o eliminar registros.
Esto es lo que normalmente haces día a día con la información.

| Comando    | Descripción 
|------------|----------------------------
| `INSERT`   | Inserta nuevos registros 
| `SELECT`   | Consulta datos 
| `UPDATE`   | Actualiza datos existentes 
| `DELETE`   | Elimina datos 
<br>



### 3. Data Control Language *(DCL)*
Se usa para **gestionar los permisos y accesos** de los usuarios dentro de la base de datos.

| Comando   | Descripción 
|-----------|------------------------------------
| `GRANT`   | Concede permisos a un usuario
| `REVOKE`  | Revoca (quita) permisos a un usuario
<br>


### 4. Transaction Control Language *(TCL)*
Se usa para **manejar transacciones**, es decir, grupos de operaciones que deben ejecutarse todas o revertirse si ocurre un error.

| Comando	    | Descripción 
|---------------|-------------
| `COMMIT`	    | Guarda los cambios definitivamente
| `ROLLBACK`	| Revierte los cambios si hay un error
| `SAVEPOINT`	| Crea un punto de guardado dentro de una transacción
<br>

# 🗄️ Estructura de una Query en SQL Server
Las consultas SQL deben seguir un orden específico porque el motor de base de datos interpreta y ejecuta cada cláusula en una secuencia lógica. Esto asegura que cada parte de la consulta tenga los datos necesarios generados por la anterior.

### 🔗 Esquema de una consulta (Orden Sintáctico)  
 El orden que debes seguir al escribir una consulta SQL sera la siguiente.

```sql
    SELECT 
        DISTINCT
        AS ('alias')
        COUNT(), SUM(), AVG(), MAX(), MIN()
    FROM 
        'TableName'
    JOIN 
        INNER JOIN
        LEFT JOIN
        RIGHT JOIN
        FULL JOIN
        ON ('Condition')
    WHERE 
        =  
        > 
        < 
        >= 
        <=
        <> 
        IN
        LIKE
        BETWEEN
        AND / OR / NOT
        IS NULL / IS NOT NULL
    GROUP BY 
        'Columns'
    HAVING 
        'Condition on aggregations' (e.g., HAVING COUNT(*) > 5)
    ORDER BY 
        'Columns'
        ASC
        DESC
    LIMIT 
        'Number of rows to return'
    OFFSET 
        'Number of rows to skip'
```

### 🔩 Ejecución interna de una consulta (Orden Lógico)
El motor SQL procesa las cláusulas en un orden diferente al que se escriben. Aunque SELECT aparece primero en el código, no es lo primero que se ejecuta; está al inicio solo por la gramática del lenguaje.

- **FROM / JOIN** → Se seleccionan las tablas y se combinan los datos.

-  **WHERE** → Se filtran filas antes de agrupar.

- **GROUP BY** → Se agrupan las filas según columnas.

- **HAVING** → Se filtran los grupos resultantes.

- **SELECT** → Se eligen las columnas o agregaciones a mostrar.

- **DISTINCT** → Se eliminan duplicados si se solicita.

- **ORDER BY** → Se ordenan los resultados.

- **LIMIT / OFFSET** → Se limita la cantidad de filas mostradas.

Cada cláusula necesita que la anterior ya haya generado algo sobre lo que trabajar. Por eso no puedes, por ejemplo, usar un alias definido en SELECT dentro del WHERE, ya que el WHERE se ejecuta antes del SELECT.

<br>

# 🔚 Conclusión y Próximos Pasos

Este repositorio representa el inicio de una base sólida de conocimiento técnico en SQL, fundamental para mi desarrollo profesional en el ámbito de las bases de datos. Aquí recopilo los principios y conceptos esenciales que sustentan el trabajo diario con sistemas relacionales, ofreciendo una guía clara y estructurada para futuras consultas.

Seguiré ampliando este espacio con temas más avanzados: optimización de consultas, análisis de planes de ejecución, estrategias de indexación, seguridad, y mejores prácticas orientadas al rendimiento y la integridad de los datos.
Mi objetivo es convertir este repositorio en una referencia práctica y en evolución constante, útil tanto para proyectos personales como para entornos profesionales.