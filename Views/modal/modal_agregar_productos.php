<div class="modal fade" id="bebidas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background: #FF9033;">
                <h5 class="modal-title" id="exampleModalLabel" style="color: white;"><b>Agregar a las Mesas</b></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <?php  
                            $consul = $conexion->conectar()->prepare("SELECT * FROM usuarios");
                            $consul->execute();
                            foreach ($consul as $key): ?>
                                <input type="hidden" name="usuario" value="<?php echo $key['idusuario'] ?>">
                            <?php endforeach ?>

                            <!-- Selección de categoría 1 -->
                            <?php             
               $consulcategoria = $conexion->conectar()->prepare("SELECT * FROM categorias");
               $consulcategoria->execute();
               ?>
               <select class="form-control chosen-select" id="categoria" name="categoria">
                   <option value="" disabled selected>SELECCIONE UNA CATEGORIA</option>
                   <?php
                   foreach ($consulcategoria as $fila) {
                    echo '<option value="' . $fila['nombrecategoria'] . '">' . ucwords($fila['nombrecategoria']) . '</option>';
                   }
                   ?>
               </select>
               
                        </div>

            <!-- Selección de producto -->
<div class="col-md-6">
    <?php
    if (isset($_POST['categoria'])) {
        $categoriaSeleccionada = $_POST['categoria'];
        $consul = $conexion->conectar()->prepare("SELECT
        pro.idproducto,
        pro.nombreproducto,
        cat.nombrecategoria AS nombrecategoria_producto,
        pro.precio,
        pro.idusuario
    FROM
        productos pro
    JOIN
        categorias cat
    ON
        pro.idcategoria = cat.idcategoria
    WHERE
        cat.nombrecategoria = :categoria
    ORDER BY
        pro.nombreproducto ASC;
    ");
    $consul->bindParam(':categoria', $categoriaSeleccionada, PDO::PARAM_STR);
} else {
    // Si no se ha seleccionado una categoría, mostrar todos los productos
    $consul = $conexion->conectar()->prepare("SELECT
        pro.idproducto,
        pro.nombreproducto,
        cat.nombrecategoria AS nombrecategoria_producto,
        pro.precio,
        pro.idusuario
    FROM
        productos pro
    JOIN
        categorias cat
    ON
        pro.idcategoria = cat.idcategoria
    ORDER BY
        pro.nombreproducto ASC;
    ");
}

$consul->execute();
?>
    
    <select class="form-control chosen-select" id="producto" name="producto[]">
        <option value="" disabled selected>SELECCIONA UN PRODUCTO</option>
        <?php
        foreach ($consul as $fila) {
            echo '<option value="' . $fila['idproducto'] . '-' . $fila['precio'] . '">' . ucwords($fila['nombreproducto']) . '</option>';
        }
        ?>
    </select>
</div>

                        
                        <!-- Botón de envío del formulario -->
                        <input type="hidden" name="fecha" value="<?php echo date('d-m-Y') ?>">
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            <button type="submit" name="agregarBebidas" id="agregarBebidas" class="btn btn-info">Agregar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
