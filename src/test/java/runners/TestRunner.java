package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;

class TestRunner {

    @Test
    void testAll() {
        Results results = Runner.path("classpath:features")
                .outputCucumberJson(true)
                .parallel(5);
        generateKarateReport(results.getReportDir());
        generateCucumberReport(results.getReportDir());
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }

    public static void generateKarateReport(String karateOutputPath) {
        // Directorio donde se guardarán los reportes de Karate
        String karateReportDir = "target/custom-karate-reports";
        File reportDir = new File(karateReportDir);

        // Crear el directorio si no existe
        if (!reportDir.exists()) {
            reportDir.mkdirs();
        }

        // Copiar los archivos JSON generados por Karate al nuevo directorio de reportes
        Collection<File> jsonFiles = FileUtils.listFiles(
                new File(karateOutputPath), new String[]{"json"}, true);
        for (File file : jsonFiles) {
            try {
                FileUtils.copyFileToDirectory(file, reportDir);
            } catch (Exception e) {
                throw new RuntimeException("Error al copiar archivo JSON al nuevo directorio de reportes de Karate", e);
            }
        }

        // Karate genera automáticamente un reporte HTML en el directorio de salida
        // Si los archivos JSON están en el directorio correcto, se generará el reporte automáticamente
    }

    public static void generateCucumberReport(String karateOutputPath) {
        // Directorio donde se guardarán los reportes de Cucumber
        String cucumberReportDir = "target/custom-cucumber-reports";
        File reportDir = new File(cucumberReportDir);

        // Crear el directorio si no existe
        if (!reportDir.exists()) {
            reportDir.mkdirs();
        }

        // Generar el reporte de Cucumber
        Collection<File> jsonFiles = FileUtils.listFiles(
                new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(reportDir, "karate-api-testing");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}