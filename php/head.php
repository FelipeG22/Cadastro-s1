<!DOCTYPE html>
<?php
session_start();
if (!($_SESSION['guerra']) && !($_SESSION['posto'])) {
    header("Location:sair.php");
}
?>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Felipe Gonçalves">
    <link href="../_assets/css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/bootstrap-reboot.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../_assets/css/estilo.css" rel="stylesheet" type="text/css" />
    <script src="../_assets/jquery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../_assets/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="../_assets/js/bootstrap.bundle.js" type="text/javascript"></script>
    <script src="../_assets/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="../_assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="../_assets/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="../_assets/_img/flav.icon.png" />
    <title>Área do Admin</title>
</head>

<body style="background-color: #DCDCDC">
    
<div class="container border border-secondary">