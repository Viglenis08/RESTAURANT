		<div class="modal fade bd-example" id="usuarios" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
			<div class="modal-content">

					<div class="modal-header"  style="background: #FF9033;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel" style="color: white;"> <b>Nuevo Usuario</b></h4>
					</div>
					<div class="modal-body">

			<form method="post">
				<div class="row">
  				<div class="col-md-12">  
				<div class="form-group">
			    <label for="formGroupExampleInput">Nombre Usuario</label>
			    <input type="text" name="nombreusuario" class="form-control" id="formGroupExampleInput" placeholder="Ingrese el Nombre de Usuario" required="">
			  </div>
			  </div>
			  </div>
			  <div class="row">
			  <div class="col-md-12"> 
			  <div class="form-group">
			    <label for="formGroupExampleInput2" class="form-control-label">Contraseña Usuario</label>
			    <input type="text" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Ingrese la Contraseña para el Usuario" required="">
			  </div>
			  </div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
						<button type="submit" name="guardarUsuario" class="btn btn-success">Guardar Cambios</button>
           </form>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
		<?php 

		 $usuario = new UsuariosController();
		 if (isset($_POST['guardarUsuario'])) {
			// El formulario se ha enviado, ejecuta la lógica para ingresar el usuario.
			$usuario->ingresarUsuariocontroller();
		}
		 $usuario->ingresarUsuariocontroller();
         $usuario->deleteUsuariosController();

		 ?>	