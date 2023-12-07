<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../../assets/css/estilos.login.css">

  <title>Login</title>
  <style>
        .conta {
            border: 4px solid red; /* Cambia el color del borde según tu preferencia */
           
        animation: borderChange 2s infinite alternate; /* Define la animación */
}

@keyframes borderChange {
    from {
        border-color: #e69138; /* Color inicial del borde */
    }
    to {
        border-color: #da4385 /* Color final del borde */
    }
}
    </style>
</head>

<body>
  
  <div class="row" color: black>
    <div class="col-md-12">
      <div class="conta">
  
        <h1>RestoManager&nbsp;&nbsp;<i class="fa fa-cutlery"></i> &nbsp; Bienvenido!</h1>
        <form class="" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
          <hr>
          <div class="form-group">
            <i class="fa fa-user"></i>
            <label for="nombreusuario"><b> Nombre del Usuario</b></label>
            <input type="text" name="nombreusuario" class="form-control btn-outline-warning" placeholder="Ingrese el usuario" required>
          </div>
          <div class="form-group">
            <i class="fa fa-unlock-alt"></i>
            <label for="password"><b> Contraseña del Usuario</b></label>
          
              <span class="input-group-text" id="eye-icon" onclick="togglePasswordVisibility()">
                  <i class="fa fa-eye-slash" id="eye"></i>
                </span>
           
            <div class="input-group">
              <input type="password" name="password" class="form-control btn-outline-warning" id="password" placeholder="Ingrese su contraseña" required>
             
            </div>
          </div><br>

          <?php if (!isset($_SESSION['nombreusuario'])): ?>
            <?php require 'btn.php'; ?>
          <?php endif; ?>

          <?php if (!empty($enviar)): ?>
            <div class="enviar">
              <?php echo $enviar; ?>
            </div>
            <?php echo $enviado; ?>
          <?php endif; ?>

          <br>

          <?php if (!empty($error)): ?>
            <br>
            <div class="error">
              <?php echo $error; ?>
            </div>
          <?php endif; ?>
        </form>
      </div>
    </div>
  </div>

  <script>
    function togglePasswordVisibility() {
      const passwordInput = document.getElementById('password');
      const eyeIcon = document.getElementById('eye');

      if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        eyeIcon.classList.remove('fa-eye-slash');
        eyeIcon.classList.add('fa-eye');
      } else {
        passwordInput.type = 'password';
        eyeIcon.classList.remove('fa-eye');
        eyeIcon.classList.add('fa-eye-slash');
      }
    }

  </script>
</body>
</html>
