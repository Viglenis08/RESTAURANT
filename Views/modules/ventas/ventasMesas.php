
<?php
require 'Views/modules/ventas/conexion.php';
ob_start();

$conexion = new Conexion_bd();
$pdo = $conexion->conectar(); // Obtener una instancia de PDO válida

$tabla = $_GET['action'];

if (isset($_GET['idmesa'])) {
    $id = $_GET['idmesa'];

    $sql = $pdo->prepare("DELETE FROM $tabla WHERE idmesa = :id");
    $sql->bindParam(':id', $id, PDO::PARAM_INT);
    $sql->execute();

    header("location:$tabla");
}

if (isset($_POST['agregarBebidas'])) {
    date_default_timezone_set('America/Argentina/Buenos_Aires');
    $fecha = $_POST['fecha'];
    $usu = $_POST['usuario'];
    $productos = $_POST['producto'];

    foreach ($productos as $key) {
        if (isset($key[0]) && isset($key[1])) {
            list($idproducto, $precio) = explode('-', $key);
            $sql = $pdo->prepare("INSERT INTO $tabla (idproducto, precio, fecha, idusuario) VALUES (:idproducto, :precio, :fecha, :idusuario)");
            $sql->bindParam(':idproducto', $idproducto);
            $sql->bindParam(':precio', $precio);
            $sql->bindParam(':fecha', $fecha);
            $sql->bindParam(':idusuario', $usu);
            $sql->execute();
        }
    }

    header("location:$tabla");
}

if (isset($_POST['venta'])) {
    $conexion = new Conexion_bd();
    $pdo = $conexion->conectar();
    $sql = $pdo->prepare("INSERT INTO detalles (idproducto, precio, fecha, idusuario, mesa)
        SELECT ta.idproducto, ta.precio, ta.fecha, ta.idusuario, ta.mesa
        FROM $tabla ta");
    $sql->execute();
    $conexion = new Conexion_bd();
    $pdo = $conexion->conectar();
    $sql = $pdo->prepare("DELETE FROM $tabla");
    $sql->execute();

    header("location:$tabla");
}
?>

<div class="container">
    <center>
        <h1><i class="fa fa-credit-card" aria-hidden="true"></i> <?php echo $tabla; ?></h1>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bebidas" data-whatever="@mdo">
            <i class="fa fa-plus-square"></i> AGREGUE PEDIDOS A LAS MESAS
        </button>
    </center>

    <?php require 'Views/modal/modal_agregar_productos.php'; ?>

    <?php
    $pdo = $conexion->conectar();
    $consult = $pdo->query("SELECT * FROM $tabla ta JOIN productos pro ON ta.idproducto = pro.idproducto");
    ?>
    
    <table class="table table-bordered" id="imprimeme">
        
        <thead>
            <tr>
                <th>CODIGO</th>
                <th>DESCRIPCIÓN</th>
                <th>PRECIO</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($consult as $key): ?>
                <tr>
                    <td><?php echo $key['idproducto'] ?></td>
                    <td><?php echo $key['nombreproducto'] ?></td>
                    <td>
                        <i class="fa fa-usd"></i>
                        <?php echo $key['precio'] ?>
                        <a href="index.php?action=<?php echo $tabla ?>&idmesa=<?php echo $key['idmesa'] ?>" class="pull-right">
                            <i class="fa fa-trash-o btn btn-danger btn-sm"></i>
                        </a>
                    </td>
                </tr>
            <?php endforeach ?>
            <tr>
                <td></td>
                <td><i></i></td>
                <td colspan="2">TOTAL</td>
                <?php
                $total = $pdo->prepare("SELECT SUM(precio) AS TOTAL FROM $tabla");
                $total->execute();
                foreach ($total as $key) {
                    $result = $key['TOTAL'];
                } ?>
                <td><i class="fa fa-usd"></i> <?php echo $result; ?></td>
            </tr>
        </tbody>
    </table>

    <?php
    $sql = $pdo->prepare("SELECT * FROM $tabla, usuarios ");
    $sql->execute();
    ?>

    <form method="post">
        <?php foreach ($sql as $key) : ?>
            <input type="hidden" name="fecha[]" value="<?php echo date("Y-m-d"); ?>">
            <input type="hidden" name="idproducto[]" value="<?php echo $key['idproducto'] ?>">
            <input type="hidden" name="precio[]" value="<?php echo $key['precio'] ?>">
            <input type="hidden" name="idusuario[]" value="<?php echo $key['idusuario'] ?>">
        <?php endforeach; ?>
        <input type="submit" class="btn btn-danger" name="venta" value="$ Finalizar Venta" onclick="imprimir()">
    </form>
</div>

<script>
    function imprimir() {
        var objeto = document.getElementById('imprimeme');
        var ventana = window.open('', '_blank');
        ventana.document.write('<h1 style="text-align:center;color:blue; font-family: Arial, sans-serif;">Tu Recibo - <?php echo $tabla; ?></h1> </hr></hr>');

        ventana.document.write(objeto.outerHTML);
        ventana.document.close();
        ventana.print();
        ventana.close();
    }
</script>
