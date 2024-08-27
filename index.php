<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Teste</title>
</head>
<body>  
    Pagina teste

    <?php

        $nomeAplicacao = getenv('NOME_APLICACAO');
        $nomeBanco = getenv('NOME_BANCO');
       
        echo $nomeAplicacao + " - " + $nomeBanco;
    ?>
</body>
</html>