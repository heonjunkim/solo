document.addEventListener("DOMContentLoaded", function () {
  document.querySelector("#io-delete").addEventListener("click", function () {
    let id = document.querySelector("#io-delete").getAttribute("data-id");
    if (confirm("정말 삭제하시겠어요?")) {
      document.location.replace(`${rootPath}/delete?id=${id}`);
    }
  });
});