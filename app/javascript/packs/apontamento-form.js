document.addEventListener('turbolinks:load', () => {
  const btnPausaConfirma = document.querySelector(".btn_pausa_confirma");
  const grupoInputsPausas = document.querySelector(".grupo_pausas");

  btnPausaConfirma.addEventListener("click", (event) => {
    event.preventDefault();

    grupoInputsPausas.parentNode.appendChild(grupoInputsPausas.cloneNode(true));
  });
})
