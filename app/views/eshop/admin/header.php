<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

  <title><?= $page_title . ' - ' . WEBSITE_TITLE ?></title>

  <!-- Bootstrap core CSS -->
  <link href="<?= ASSETS . THEME ?>admin/css/bootstrap.css" rel="stylesheet">
  <!--external css-->
  <link href="<?= ASSETS . THEME ?>admin/font-awesome/css/font-awesome.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="<?= ASSETS . THEME ?>admin/css/style.css" rel="stylesheet">
  <link href="<?= ASSETS . THEME ?>admin/css/style-responsive.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="<?= ASSETS . THEME ?>admin//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="<?= ASSETS . THEME ?>admin//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

  <section id="container">
    <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="<?= ROOT ?>admin" class="logo"><b>eSHOP ADMIN</b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">

          <!-- settings start -->

          <!-- settings end -->
          <!-- inbox dropdown start-->
          <?php
          // show(get_all_messages()[0]);
          ?>
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="<?= ROOT ?>admin/messages">
              <i class="fa fa-envelope-o"></i>

              <span class="badge bg-theme"><?= count(get_all_messages()); ?></span>
              <?php if (get_all_messages() != "" && is_array(get_all_messages())): ?>
              </a>
              <?php
              // show(get_all_messages());
              ?>
              <ul class="dropdown-menu extended inbox">
                <div class="notify-arrow notify-arrow-green"></div>

                <li>
                  <p class="green">You have <?= count(get_all_messages()); ?> new messages</p>
                </li>

                <?php foreach (get_all_messages() as $message): ?>

                  <li>
                    <a href="<?= ROOT ?>admin/messages?show=<?= $message['id'] ?>">
                      <!-- <span class="photo"><img alt="avatar" src="<?= ASSETS . THEME ?>admin/img/ui-zac.jpg"></span> -->
                      <span class="subject">
                        <span class="from"><?= $message['name'] ?></span>
                        <span class="time"><?= date("jS M Y H:i a", strtotime($message['date'])) ?></span>
                      </span>
                      <span class="message">
                        <?= $message['subject'] ?>
                      </span>
                    </a>
                  </li>

                <?php endforeach; ?>
                <li>
                  <a href="<?= ROOT ?>admin/messages">See all messages</a>
                </li>

              <?php endif; ?>
            </ul>

          </li>
          <!-- inbox dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="<?= ROOT ?>">Website</a></li>
        </ul>
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="<?= ROOT ?>logout">Logout</a></li>
        </ul>

      </div>
      <?php

      ?>
    </header>
    <!--header end-->