# Script para renombrar imágenes automáticamente
$imagenes = @(
    @{Original = "WhatsApp Image 2025-07-28 at 6.10.29 PM.jpeg"; Nuevo = "puntos-atencion.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.10.56 PM.jpeg"; Nuevo = "asistencia-humanitaria.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.11.19 PM.jpeg"; Nuevo = "mesa-participacion.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.12.43 PM.jpeg"; Nuevo = "memoria-historica.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.13.13 PM.jpeg"; Nuevo = "acompañamiento-juridico.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.15.11 PM.jpeg"; Nuevo = "alertas-tempranas.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.15.55 PM.jpeg"; Nuevo = "afiliacion-salud.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.17.24 PM (1).jpeg"; Nuevo = "auditorias-eps.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.17.24 PM (2).jpeg"; Nuevo = "promocion-salud.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.20.18 PM (1).jpeg"; Nuevo = "rehabilitacion-psicosocial.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.20.18 PM.jpeg"; Nuevo = "certificacion-discapacidad.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.23.20 PM.jpeg"; Nuevo = "proyectos-pedagogicos.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.23.42 PM.jpeg"; Nuevo = "transporte-escolar.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.26.30 PM.jpeg"; Nuevo = "residencias-escolares.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.29.09 PM.jpeg"; Nuevo = "negocios-verdes.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.30.04 PM.jpeg"; Nuevo = "alianzas-productivas.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.32.50 PM.jpeg"; Nuevo = "maquinaria-agricola.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.37.06 PM (1).jpeg"; Nuevo = "formalizacion-tierras.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.37.06 PM.jpeg"; Nuevo = "creditos-agricolas.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.38.27 PM.jpeg"; Nuevo = "ferias-agricolas.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.41.01 PM.jpeg"; Nuevo = "subsidios-vivienda.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 6.41.18 PM.jpeg"; Nuevo = "mejoramiento-vivienda.jpeg"},
    @{Original = "WhatsApp Image 2025-07-28 at 7.23.37 PM.jpeg"; Nuevo = "construccion-vivienda.jpeg"}
)

Write-Host "Renombrando imágenes..." -ForegroundColor Green

foreach ($imagen in $imagenes) {
    $rutaOriginal = "PATimagenes\$($imagen.Original)"
    $rutaNueva = "PATimagenes\$($imagen.Nuevo)"
    
    if (Test-Path $rutaOriginal) {
        try {
            Rename-Item -Path $rutaOriginal -NewName $imagen.Nuevo
            Write-Host "✓ $($imagen.Original) -> $($imagen.Nuevo)" -ForegroundColor Green
        }
        catch {
            Write-Host "✗ Error renombrando $($imagen.Original): $($_.Exception.Message)" -ForegroundColor Red
        }
    }
    else {
        Write-Host "⚠ No se encontró: $($imagen.Original)" -ForegroundColor Yellow
    }
}

Write-Host "Proceso completado!" -ForegroundColor Green 