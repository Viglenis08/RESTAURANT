<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" type="text/css" href="../../assets/css/estilos.index.css">
  <link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
  <title>Inicio</title>
</head>
<style>
  .icono{
  animation: moverIzquierda 1s ease-in;
  z-index: 100%;
  font-size: 12px;
  background-color: #dbc234;
  color: #1f0202;
  border: none;
  padding: 5px 10px;
  cursor: pointer;
  border-radius: 5px;
}

.icono:hover {
  background-color: rgb(116, 31, 150);
}


</style>

<body>   
  <header>
    <nav class="top-nav">
 
      <a href="#" id="icono" class="icono"><h2>Ingrese</h2></a>
      <a href="#" id="salir" style="display:none;">Salir</a>
      <div class="enlaces" id="enlaces">
          <a href="http://localhost/Restaurant/Views/login/login.php" >
          <i class="fa fa-user-circle-o"></i><b>Inicio de Sesión</b></a>
        <a href="../../Documentacion.pdf"><i class="fa fa-file-pdf-o"></i>Manual del Usuario</a>
        <a href="../inicio/contacto.php"><i class="fa fa-envelope-o"></i>Contacto</a>
      </div>
    </nav>
    <div class="container">
      <span data-text="RestoManager-Pro"><h4>RestoManager-Pro</h4></span>
    </div>
  </header>

<div class="gallery">
    
  <img src="../../assets/Imge/image1.jpg" alt="Imagen1" data-title="img1">
  <img src="../../assets/Imge/image2.jpg" alt="Imagen2" data-title="img2">
  <img src="../../assets/Imge/image3.jpg" alt="Imagen3" data-title="img3">
  <img src="../../assets/Imge/image4.jpg" alt="Imagen4" data-title="img4">
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
      let boton = document.getElementById("icono");
      let enlaces = document.getElementById("enlaces");

      boton.addEventListener("click", function(e) {
        e.stopPropagation(); // Evitar que el clic se propague al documento

        // Alterna la visibilidad del menú al hacer clic en el enlace "Menú"
        enlaces.style.display = (enlaces.style.display === "flex") ? "none" : "flex";
      });

      // Cierra el menú si se hace clic en cualquier lugar fuera del menú
      document.addEventListener("click", function() {
        enlaces.style.display = "none";
      });
    });
  </script>
</body>
</html>

