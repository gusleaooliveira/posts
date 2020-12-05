<?php

  if(isset($_POST)){
    $qtdValores = $_POST['qtdValores'];
    $valorMaximo = $_POST['valorMaximo'];

    gerar($qtdValores, $valorMaximo);
  }
  else{
    echo "Ocorreu algum erro ao Receber!";
  }

  function gerar($quantidade, $maximo){
    echo '<h2 class="text-center blue-twitter padding-5">Resultado:</h2>';
    echo '<div class="padding-10">';
    for($i = 0; $i < $quantidade; $i++){
        echo "<p><b>Número ".($i+1).":</b> ".rand(0, $maximo)."</p>";
    }
    echo '</div>';
  }


?>
