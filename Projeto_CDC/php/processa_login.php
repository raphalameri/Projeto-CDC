<?php
include("conexao.php");

if (isset($_POST['submit'])) {
    $usuariocf = $_POST['usuariocf'];
    $senhacf = $_POST['senhacf'];
    md5($_POST['senhacf']);
    $senhacf_md5 = md5($senhacf);

    $sql = "SELECT * FROM usuarios WHERE login = '$usuariocf' AND senha = '$senhacf_md5';";
    $result = mysqli_query($mysqli, $sql);
    $rowcount = mysqli_num_rows($result);

    if ($rowcount == 1) {
        header("Location: buscador.php");
    } else {
        echo '<script>
    window.location.href = "login.php";
    alert("O login falhou, confira seus dados e tente novamente!");
    </script>';

    }

}

?>