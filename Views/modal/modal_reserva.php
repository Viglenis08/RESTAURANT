<div class="modal fade bd-example-modal-lg" id="reserva" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background: #FF9033;">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel" style="color: white;"><b>Nueva Reserva</b></h4>
        </div>
        <div class="modal-body">

          <form method="post">
          <div class="row">
            <div class="col-md-6">  
              <div class="form-group">
                <label for="recipient-name" class="form-control-label">Nombre Cliente</label>
                <input type="text" class="form-control" id="recipient-name" name="nombrecliente" required="">
              </div>
            </div>
               <div class="col-md-6">  
             <div class="form-group">
              <label for="recipient-name" class="form-control-label">Cantidad de Personas</label>
              <input type="text" class="form-control" id="recipient-name" name="cantidadpersonas" required="">
            </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6"> 
             <div class="form-group">
              <label for="recipient-name" class="form-control-label">Telefono de Contacto</label>
              <input type="text" class="form-control" id="recipient-name" name="telefono" required="">
            </div>
            </div>
            <div class="col-md-6"> 
             <div class="form-group">
              <label for="recipient-name" class="form-control-label">Fecha Reserva (Dia/Mes/Año)</label>
              <input type="date" class="form-control" id="datepicker" name="diallegada" required="">
            </div>
            </div>
            </div>
             <div class="row">
            <div class="col-md-6"> 
              <div class="form-group">
              <label for="recipient-name" class="form-control-label">Hora de Reserva</label>
              <input type="time" class="form-control" id="recipient-name" name="horallegada" required>
            </div>

            </div>
              <div class="col-md-6"> 
              <div class="form-group">
              <label for="message-text" class="form-control-label">Observaciones</label>
              <textarea class="form-control" id="message-text" name="observaciones" required=""></textarea>
            </div>
            </div>
            <input type="hidden" name="idusuario" value="<?php echo $_SESSION['nombreusuario']; ?>">
        </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-success" name="agregar">Agregar Reserva</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>




<?php  
$registrar = new MvcController();
$registrar->agregarReservaController();
?>  
