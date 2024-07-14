# Challenge Final Automatización Apis con Karate
## Relizado por Mateo Gómez

### 1. Prerequisitos:
	- Maquina local con el sistema operativo Windows 10/11
	- IntelliJ IDEA Community Edition 2024.1.4 / IntelliJ IDEA 2024.1.3
	- Apache Maven 3.9.8 (debe estar en la variable de entorno)
	- JDK versión 11 (debe estar en la variable de entorno)

### 2. Comandos de instalación
   En el caso de que el proyecto no funcione o tenga algún error, ejecutar los siguientes comandos
   - mvn clean (Limpia el proyecto, en el caso de existir algún error)
   - mvn install -DskipTests (descarga todas las dependencias del POM)
   - mvn dependency:resolve (Descarga todas las dependencias)
   - mvn install (Para compilar y empaquetar el proyecto además de resolver las dependencias)

### 3. Instrucciones para ejecutar los test

   1. **Ingresar a la carpeta de recursos de pruebas**:
      - Navega a la carpeta `src/test/resources` dentro del proyecto.

   2. **Ejecutar las pruebas**:
      - Haz clic en el archivo de características (`.feature`) que deseas ejecutar. Una vez abierto, haz clic en el botón de reproducción verde junto a Feature. Esto iniciará todas las pruebas correspondientes a esa sección.

   3. **Obtener los reportes**:
      - Una vez finalizadas las pruebas, los reportes estarán disponibles en la sección "Run" y también en la carpeta `target`.

   4. **Visualizar los reportes**:
      - Los reportes de las pruebas se generan en formato HTML. El enlace al archivo HTML se mostrará una vez que la prueba haya finalizado.


