<div class="container">
<?php
require 'Views/modules/ventas/conexion.php';
$respuesta = [];
$fechaInicial = ''; // Inicializa con una cadena vacía
$fechaFinal = ''; // Inicializa con una cadena vacía

if (isset($_POST['reporteVenta'])) {
    date_default_timezone_set('America/Argentina/Buenos_Aires');
    $fechaInicial = date('Y-m-d', strtotime($_POST['fechaInicial'])); // Formato ISO
    $fechaFinal = date('Y-m-d', strtotime($_POST['fechaFinal'])); // Formato ISO

    // Utiliza el método conectar de la clase Conexion_bd para obtener la conexión
    $conexion = $conexion->conectar();
    
    $sql = $conexion->prepare('SELECT *, SUM(PRECIO) AS "TOTAL", COUNT(idproducto) AS "PROD" FROM detalles det JOIN usuarios us ON us.idusuario = det.idusuario WHERE fecha >= ? AND fecha <= ?');

 

    $sql->bindParam(1, $fechaInicial);
    $sql->bindParam(2, $fechaFinal);
  
    $sql->execute();
    $respuesta = $sql->fetchAll();

    try {
        if (!empty($respuesta)) {
            $mostrarFormulario = false;

          
        }
    } catch (PDOException $e) {
        echo "Error en la consulta: " . $e->getMessage();
    }
}
?>


    <ol class="breadcrumb">
        <li class="breadcrumb-item active"><i class="fa fa-list"> </i> VENTAS DIARIAS</li>
    </ol>
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="uno" data-toggle="tab" href="#home" role="tab">Consultar Por Fechas</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="dos" data-toggle="tab" href="#profile" role="tab">Consultar Por Mesas</a>
        </li>
    </ul>
    <br>
    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane active" id="home" role="tabpanel">
            <div id="formulario">
                <form method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <i class="fa fa-calendar"> </i> Fecha Inicial :
                            <input type="date" name="fechaInicial" class="form-control" required="">
                        </div>
                        <div class="col-md-6">
                            <i class="fa fa-calendar"> </i> Fecha Final : 
                            <input type="date" name="fechaFinal" class="form-control" required="">
                        </div>
                        <br><br><br><br>
                        <div class="col-lg-10">
                            <center>
                                <input type="submit" name="reporteVenta" value="Consultar" class="btn btn-outline-primary" id="consulta" onclick="imprimir()">
                      
                            </center>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="tab-pane" id="profile" role="tabpanel">
        </div>
    </div>
    <center>
    <?php if (isset($respuesta) && $fechaInicial <= $fechaFinal): ?>
        <?php foreach ($respuesta as $key): ?>
            <h5 style="color: blue;">El Rango de Búsqueda es: <?= $fechaInicial ?> Hasta: <?= $fechaFinal ?></h5>
            <div class="col-md-auto">
                <table class="table table-bordered">
                    <thead class="bg-warning">
                        <tr>
                            <td class="td" align="center">TOTAL DE VENTAS</td>
                            <td class="td" align="center">CANTIDAD DE PRODUCTOS</td>
                            <td class="td" align="center">USUARIO DEL SISTEMA</td>
                        </tr>
                    </thead>
                    <tbody>
                        <td class="reportes" align="center"><i></i>
                            <?php
                            if (empty($key['TOTAL'])) {
                                echo "<h6>No se Encontraron Datos en Las Fechas Seleccionadas</h6>";
                            } else {
                                echo $key['TOTAL'];
                            }
                            ?>
                        </td>
                        <td class="reportes" align="center"><i></i><?= "  " . $key['PROD'] ?></td>
                        <td class="reportes" align="center"><?= "  " . $key['nombreusuario'] ?></td>
                    </tbody>
                    <?php endforeach ?>
                    </table>
                   
            
        </div>
    <?php elseif (isset($respuesta) && $fechaInicial > $fechaFinal): ?>
        <h3>Error En La selección de las Fechas</h3>
        <br>
    <?php endif; ?>
    </center>
</div>

<script>
$(document).ready(function() {
    $("#uno").addClass("active");
    $("#uno").click(function() {
        $("#uno").addClass("active");
        $('#dos').removeClass('active');
    });

    $("#dos").click(function() {
        $("#dos").addClass("active");
        $('#uno').removeClass('active');
    });

    
});
</script>

