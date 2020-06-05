<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Formulário</title>

    <link rel="stylesheet" href="https://gusleaooliveira.github.io/hcw/css/hcw.min.css">
  </head>
  <body class="padding-10">

    <header class="raisin-black padding-16 margin-10">
      <h1 class="text-center">Formulário</h1>
    </header>

    <section>
      <form class="light-gray card margin-10" onsubmit="return bloquear()" method="post">
        <h2 class="text-center blue-twitter padding-5">Sorteador de Números</h2>

        <div class="padding-5">
          <label for="qtdValores">Quantidade de valores:</label>
          <input type="number" min="0" id="qtdValores" class="input white border-bottom-blue-twitter-focus" required>

          <label for="valorMaximo">Valor máximo dos números sorteados:</label>
          <input type="number" min="0" id="valorMaximo" class="input white border-bottom-blue-twitter-focus" required>

          <br>
          <input type="submit" id="btnEnviar" value="Sortear" class="btn btn-block blue-twitter">
        </div>
      </form>
    </section>

    <section id="conteudo" class="light-gray card margin-10">

    </section>

    <script src="js/escript.js"></script>

  </body>
</html>
