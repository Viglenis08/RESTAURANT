<?php

session_destroy();

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cierre de Sesión</title>
    <style>
       

            .jumbotron {
                background-color: rgba(191, 145, 38, 0.48);
                color: black; /* Cambia el color del texto dentro del jumbotron */
                padding: 20px; /* Ajusta el espaciado interno del jumbotron */
                margin-top: 50px; /* Ajusta el margen superior del jumbotron */
                border-radius: 3px;
                border: 2px solid rgba(50, 37, 8, 1);
                text-align: center;
            }

        .container {
            text-align: center; /* Centra el texto dentro del contenedor */
        }
    </style>
</head>
<body>
    <div class="jumbotron">

            <?php  (isset($_SESSION['nombreusuario'])) ?>
                <h1 class="display-3"><b>Hasta Pronto, <?php echo strtoupper($_SESSION['nombreusuario']); ?>!</b></h1>
                <p class="lead"><b>RECUERDA VERIFICAR LAS RESERVAS AL FINALIZAR LA JORNADA.</b></p>
            <?php  ?>
        
    </div>

    <?php
    // Redireccionar a la página de inicio después de 3 segundos
    header("refresh:2; url=http://localhost/restaurant/Views/inicio/index.php");
    ?>

</body>
</html>
