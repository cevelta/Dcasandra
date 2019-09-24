<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FORM CONTACTO</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
		<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
	 <script type="text/javascript" src="js/form.js"></script>
        <script src="https://use.fontawesome.com/eaf3553229.js"></script>
</head>
<body>


	<main>
	    <form method="post" id="ajaxform">
			<h1>Contacta con nosotros</h1>
			<input type="text" id="nombre" name="nombre" placeholder="Nombre">
			<input type="email" id="email" name="email" placeholder="Email">
			<textarea id="msj" name="msj" placeholder="Mensaje"></textarea>
			<input type="button" id="btn" value="Enviar Form">
		</form>

		<div id="data"> </div>

	</main>
	</body>
</html>

