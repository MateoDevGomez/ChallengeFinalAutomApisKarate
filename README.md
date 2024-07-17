# Challenge Final Automatización APIs con Karate

## Realizado por Mateo Gómez

### 1. Prerequisitos:

- **Sistema Operativo:** Windows 10/11
- **IDE:** IntelliJ IDEA Community Edition 2024.1.4 / IntelliJ IDEA 2024.1.3
- **Maven:** Apache Maven 3.9.8 (debe estar en la variable de entorno)
- **JDK:** Versión 11 (debe estar en la variable de entorno)

### 2. Comandos de instalación

Si el proyecto no funciona o presenta errores, ejecute los siguientes comandos desde la terminal en la raíz del proyecto:

- `mvn clean`: Limpia el proyecto en caso de errores.
- `mvn install -DskipTests`: Descarga todas las dependencias del POM sin ejecutar pruebas.
- `mvn dependency:resolve`: Descarga todas las dependencias necesarias.
- `mvn install`: Compila y empaqueta el proyecto, resolviendo las dependencias.

### 3. Objetivo de las pruebas

   - El objetivo de las pruebas es validar las funcionalidades de Login y Signup de la API `https://www.demoblaze.com/`.
   - Para ello, se han creado dos archivos de características (`Login.feature` y `Signup.feature`) utilizando la herramienta Karate y el formato Gherkin para la automatización de pruebas.
   - Ambos archivos contienen escenarios que dependen de datos almacenados en archivos CSV o JSON ubicados en `src/test/data`. Estos archivos proporcionan la información necesaria para verificar las siguientes situaciones:

   - Creación exitosa de un nuevo usuario durante el proceso de registro (signup).
   - Intento de registro de un usuario que ya existe.
   - Inicio de sesión exitoso con usuario y contraseña válidos.
   - Intento de inicio de sesión fallido con un usuario incorrecto.
   - Intento de inicio de sesión fallido con una contraseña incorrecta.

### 4. Instrucciones para ejecutar los tests

1. **Ubicación**:
   - Navegue a la carpeta de recursos de pruebas ubicada en `src/test/resources/features` dentro del proyecto, donde encontrará los features disponibles para ejecución, por si desea revisarlos.

2. **Ejecución de pruebas**:
   - Diríjase al directorio `src/java/runners`, donde encontrará el runner de pruebas llamado `TestRunner`. Haga clic en el runner y luego seleccione "Run".
   
   - Este archivo contiene el método para ejecutar todos los features en paralelo, junto con los métodos para generar tanto los reportes de Karate como de Cucumber.
   
   - También puede ejecutar las pruebas a través del comando `mvn clean test`, el cual se encarga de ejecutar las pruebas después de limpiar el proyecto.
   
3. **Reportes generados**:
   - Una vez finalizadas las pruebas, los reportes estarán disponibles en el directorio `target`, que se creará una vez que se hayan finalizado las pruebas.

   ## Reportes Cucumber:

   - Los reportes de Cucumber se generarán en formato HTML y se podrán encontrar en la ruta: `target/custom-cucumber-reports/cucumber-html-reports/`. En este directorio encontrará una serie de documentos HTML, donde localizará el documento `overview-features.html`. Haga clic derecho, busque la opción "Abrir en" u "Open in" y escoja un navegador.

   ## Reportes Karate:
   - Los reportes de Karate se generarán en formato HTML y se podrán encontrar en la ruta: `target/karate-reports/`. En este directorio encontrará una serie de documentos HTML, donde localizará el documento `karate-summary.html`. Haga clic derecho, busque la opción "Abrir en" u "Open in" y escoja un navegador.

4. **Visualización de reportes**:
   - Una vez que los reportes hayan sido abiertos en un navegador, podrá visualizarlos y navegar por los diferentes archivos HTML que conforman el reporte completo.

