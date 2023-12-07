<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Contacto</title>
    <link rel="stylesheet" type="text/css" href="../../assets/css/estilos.index.css">
    <!--Icon-Font-->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
/* Estilos CSS personalizados */
.my-custom-popup {
    background-color: whitesmoke; 
    border: 3px solid #090519; 
    width: 300px;
    max-width: none;
}

.my-custom-title {
    color: #0b5394; /* Cambia el color del texto del título */
}

.my-custom-content {
    color: #080101; /* Cambia el color del texto del contenido */
}



    </style>

</head>
<body>
    <div class="container-form" method="post">
        <div class="info-form">
            <h2>Contáctanos</h2>
            <p>¡Nos encantaría saber de ti! Por favor, completa el formulario a continuación y te responderemos lo antes posible.</p>
            <a href="tel:123456789" onclick="handlePhoneNumberClick(event)"><i class="fa fa-phone"></i> Escribenos: 123-456-789</a>
            <a href=""mailto:email@tudominio.com" onclick="handleEmailClick(event)"><i class="fa fa-envelope"></i> Dirección Electrónica: solucionesrestaurantes@sistemas-gdr.com</a>
            <a href="https://www.google.com.ar/maps/place/San+Juan+y+Boedo/@-34.6253523,-58.416381,17z/data=!3m1!4b1!4m6!3m5!1s0x95bccbdd9ded8891:0xe3fc1307e41d3df0!8m2!3d-34.6253523!4d-58.416381!16s%2Fg%2F11h2bbxdqk?entry=ttu" target="_blank"><i class="fa fa-map-marked"></i> Nuestra Ubicación: Boedo, CABA CP 1452</a>
        </div>
        <form action="" method="post" autocomplete="off" onsubmit="return handleSubmit()">
            <input type="text" name="nombre" placeholder="Tu Nombre" class="campo">
            <input type="email" name="email" placeholder="Tu Email" class="campo">
            <textarea name="mensaje" placeholder="Tu Mensaje..."></textarea>
            <input type="submit" name="enviar" value="Enviar Mensaje" class="btn-enviar">
        </form>
    </div>
    <?php



// Configuración de correo electrónico
$destinatario_email = 'viglenisbrito@gmail.com';

// Obtener datos del formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = isset($_POST['nombre']) ? htmlspecialchars($_POST['nombre']) : '';
    $visitor_email = isset($_POST['email']) ? filter_var($_POST['email'], FILTER_SANITIZE_EMAIL) : '';
    $message = isset($_POST['mensaje']) ? htmlspecialchars($_POST['mensaje']) : '';

    $email_from = 'viglenisbrito@email.com'; // Reemplaza con tu dirección de correo
    $email_subject = 'Asunto del correo'; 

    // Componer el cuerpo del correo
    $email_body = "Usuario: $name. \n" .
        "Mail: $visitor_email. \n" .
        "Mensaje: $message. \n";

    // Resto del código...
    $to = $destinatario_email;
    $headers = "From: $email_from \r\n";
    $headers .= "Reply-To: $visitor_email \r\n";
    $mail_sent = mail($to, $email_subject, $email_body, $headers);

}

?>

    


<script>
    function handlePhoneNumberClick(event) {
        // Previniendo la acción predeterminada del enlace
        event.preventDefault();

        const phoneNumber = "+123456789"; 
        const whatsappLink = `https://wa.me/${phoneNumber}`;

        // Redirigir a WhatsApp
        window.location.href = whatsappLink;
    }

    function handleEmailClick(event) {
        // Previniendo la acción predeterminada del enlace
        event.preventDefault();

        const emailAddress = "solucionesrestaurantes@sistemas-gdr.com"; 
        const emailLink = `mailto:${emailAddress}`;

        // Redirigir a la aplicación de correo electrónico predeterminada
        window.location.href = emailLink;
    }

    function handleSubmit() {
        // Función para manejar el envío del formulario
        Swal.fire({
            icon: 'success',
            title: '¡Mensaje enviado!',
            text: 'Gracias por ponerte en contacto.',
            showConfirmButton: false,
            timer: 3000,  // Cierra automáticamente después de 3 segundos
            customClass: {
            popup: 'my-custom-popup',
            title: 'my-custom-title',
            content: 'my-custom-content',
        },
        }).then(() => {
            // Redireccionar a la página anterior
            window.location.href = "index.php";
        });

        return false;
    }
    </script>
</body>
</html>