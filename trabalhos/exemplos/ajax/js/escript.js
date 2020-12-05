function bloquear() { return false; }

document.querySelector("#btnEnviar").onclick = () => {
  let qtdValores = document.querySelector("#qtdValores");
  let valorMaximo = document.querySelector("#valorMaximo");
  let formData =  new FormData();
  formData.append("qtdValores", qtdValores.value);
  formData.append("valorMaximo", valorMaximo.value);

  let ajax = new XMLHttpRequest();
  ajax.onreadystatechange = () => {
    if(ajax.readyState == 4 && ajax.status == 200){
      document.querySelector("#conteudo").innerHTML = ajax.responseText;
      console.log(ajax.responseText);
    }
  };
  ajax.open("POST", "php/sorteador.php", true);
  ajax.send(formData);

};
