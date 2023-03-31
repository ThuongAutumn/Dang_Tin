<!DOCTYPE html>
<?php if(!defined('PREPEND_PATH')) define('PREPEND_PATH', ''); ?>
<?php if(!defined('datalist_db_encoding')) define('datalist_db_encoding', 'UTF-8'); ?>
<?php require_once("libs/count_records.php");?>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">
      <title><?php echo ucwords('BLOG ADMIN'); ?> | <?php echo (isset($x->TableTitle) ? $x->TableTitle : ''); ?></title>
      <!-- Bootstrap core CSS -->
      <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Add custom CSS here -->
      <link href="css/sb-admin.css" rel="stylesheet">
      <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
  </head>
  <body>
    <div id="wrapper">
      <input type="checkbox" name="" id="nav-toggle">
      <div class="sidebar">
      <div class="sidebar-brand">
        <a href="index.php"><h2><span class="lab la-accusoft"></span><span>Quản trị Bài viết</span></h2></a>
      </div>
    <div class="sidebar-menu">
      <ul>
     
        <li>
          <a href="#" class="active">
            <i class="fa fa-dashboard"></i>
            <span>Trang Chủ</span>
          </a>
        </li>
        <li>
          <a href="blogs_view.php">
            <i class="fa fa-rss"></i>
            <span>Bài Viết</span>
          </a>
        </li>
        <li>
          <a href="blog_categories_view.php">
            <i class="fa fa-tags"></i>
            <span>Thể Loại</span>
          </a>
        </li>
        <li>
          <a href="blogs_view.php">
            <i class="fa fa-check"></i>
            <span>Đã Công khai</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-tasks"></i>
            <span>Nháp</span>
          </a>
        </li>
        <?php
            $usernow=getLoggedMemberID();
            if ($usernow=="admin") {
            # code...hiển thị thêm liên kết chỉ dành cho quản trị viên
            echo'<li><a href="titles_view.php"><i class="fa fa-desktop"></i><span>Chi tiết web</span></a></li>
            <li><a href="links_view.php"><i class="fa fa-link"></i><span>Đường dẫn</span></a></li>
            <li><a href="editors_choice_view.php"><i class="fa fa-trophy"></i><span>Lựa chọn của người biên tập</span></a></li>
            <li><a href="../adminstats"><i class="fa fa-bar-chart-o"></i><span>Quản trị Thành viên</span></a></li>';
          }
          ?>
      </ul>
    </div>
      </div>
    
    <div class="main-content">
      <header>
        <h1>
            <label for="nav-toggle">
                <span class="las la-bars"></span>
            </label>
            Trang Chủ
        </h1>
        <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">1</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">Tin nhắn mới</li>
                <li class="message-preview">
                  <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">Linh:</span>
                    <span class="message">Này, tôi muốn hỏi bạn một điều ...</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                  </a>
                </li>
                
                <li><a href="#">Xem tin nhắn <span class="badge">1</span></a></li>
              </ul>
            </li>
            <li class="dropdown alerts-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i>Thông báo <span class="badge">3</span> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Default <span class="label label-default">Mặc định</span></a></li>
                <li class="divider"></li>
                <li><a href="#">Xem tất cả</a></li>
             
              </ul>
            </li>
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-user"></i>  
                <?php echo getLoggedMemberID(); ?><b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="<?php echo PREPEND_PATH; ?>membership_profile.php">
                    <i class="fa fa-user"></i> 
                    <strong>Chi tiết hồ sơ của tôi</strong> 
                  </a>
                </li>
               <!--login/logout area starts-->
                <li>
                  <?php if(getLoggedAdmin()){ ?>
                    <a href="<?php echo PREPEND_PATH; ?>admin/pageHome.php" class="btn btn-danger navbar-btn btn-sm hidden-xs"><i class="fa fa-cog"></i> <strong><?php echo $Translation['admin area']; ?></strong></a>
                    <a href="<?php echo PREPEND_PATH; ?>admin/pageHome.php" class="btn btn-danger navbar-btn btn-sm visible-xs btn-sm"><i class="fa fa-cog"></i> <strong><?php echo $Translation['admin area']; ?></strong></a>
                  <?php } ?>
                    <?php if(!$_GET['signIn'] && !$_GET['loginFailed']){ ?>
                    <?php if(getLoggedMemberID() == $adminConfig['anonymousMember']){ ?>
                    <p class="navbar-text navbar-right">&nbsp;</p>
                    <a href="<?php echo PREPEND_PATH; ?>index.php?signIn=1" class="btn btn-success navbar-btn btn-sm navbar-right"><strong><?php echo $Translation['sign in']; ?></strong></a>
                    <p class="navbar-text navbar-right">
                      <?php echo $Translation['not signed in']; ?>
                    </p>
                    <?php }else{ ?>
                    <ul class="nav navbar-nav navbar-right hidden-xs" style="min-width: 330px;">
                    </ul>
                    <ul class="nav navbar-nav visible-xs">
                    </ul>
                    <?php } ?>
                    <?php } ?>
            </li>
            <!--login/logout area ends-->
            <li class="divider"></li>
            <li><a class="btn navbar-btn btn-primary" href="<?php echo PREPEND_PATH; ?>index.php?signOut=1"><i class="fa fa-power-off"></i> <strong style="color:white"><?php echo $Translation['sign out']; ?></strong> </a></li>
          </ul>
        </li>
          </ul>
      </header>
      <main>
      <div class="row">
              <div class="col-lg-3">
                <div class="panel panel-info">
                  <div class="panel-heading">
                    <div class="row">
                      <div class="col-xs-6">
                        <i class="fa fa-rss fa-5x"></i>
                      </div>
                      <div class="col-xs-6 text-right">
                        <p class="announcement-heading"><?php countrecords("blogs","all");?></p>
                        <p class="announcement-text"><strong>Số Bài viết</strong></p>
                      </div>
                    </div>
                  </div>
                  <a href="blogs_view.php">
                    <div class="panel-footer announcement-bottom">
                      <div class="row">
                        <div class="col-xs-6">
                          Lượt Xem
                        </div>
                        <div class="col-xs-6 text-right">
                          <i class="fa fa-arrow-circle-right"></i>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="panel panel-warning">
                  <div class="panel-heading">
                    <div class="row">
                      <div class="col-xs-6">
                        <i class="fa fa-tags fa-5x"></i>
                      </div>
                      <div class="col-xs-6 text-right">
                        <p class="announcement-heading"><?php admincounter("blog_categories");?></p>
                        <p class="announcement-text"><strong>Thể loại</strong></p>
                      </div>
                    </div>
                  </div>
                  <a href="blog_categories_view.php">
                    <div class="panel-footer announcement-bottom">
                      <div class="row">
                        <div class="col-xs-6">
                         Lượt xem
                        </div>
                        <div class="col-xs-6 text-right">
                          <i class="fa fa-arrow-circle-right"></i>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="panel panel-success">
                  <div class="panel-heading">
                    <div class="row">
                      <div class="col-xs-6">
                        <i class="fa fa-check fa-5x"></i>
                      </div>
                      <div class="col-xs-6 text-right">
                        <p class="announcement-heading"><?php countrecords("blogs","publish");?></p>
                        <p class="announcement-text"><strong>Đã công khai</strong></p>
                      </div>
                    </div>
                  </div>
                  <a href="blogs_view.php">
                    <div class="panel-footer announcement-bottom">
                      <div class="row">
                        <div class="col-xs-6">
                          Lượt xem
                        </div>
                        <div class="col-xs-6 text-right">
                          <i class="fa fa-arrow-circle-right"></i>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="panel panel-danger">
                  <div class="panel-heading">
                    <div class="row">
                      <div class="col-xs-6">
                        <i class="fa fa-tasks fa-5x"></i>
                      </div>
                      <div class="col-xs-6 text-right">
                        <p class="announcement-heading"><?php countrecords("blogs","draft");?></p>
                        <p class="announcement-text"><strong>Nháp</strong></p>
                      </div>
                    </div>
                  </div>
                  <a href="#">
                    <div class="panel-footer announcement-bottom">
                      <div class="row">
                        <div class="col-xs-6">
                          Lượt xem
                        </div>
                        <div class="col-xs-6 text-right">
                          <i class="fa fa-arrow-circle-right"></i>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div><!-- /.row -->
        <?php
        $usernow=getLoggedMemberID();
        if ($usernow=="admin") {
              # code...hiển thị nhiều tiện ích hơn chỉ dành cho quản trị viên
          include_once('adminview.php');
        }
        ?>
          <h2>Xin Chào <?php echo getLoggedMemberID(); ?> !</h2>
            <ol class="breadcrumb">
              <li><a href="../index.php"><i class="icon-dashboard" style="text-decoration:none;"></i> <strong>Xem trang web</strong></a></li>
              <li><a href="index.php"><i class="icon-dashboard" style="text-decoration:none;"></i> <strong>Trang Chủ</strong></a></li>
            </ol>
            <?php include("libs/alerts.php");?>
          
      </main>
    </div>
    <footer class="footer footer-inverse">
      <div class="container">
        <div class="text-center">
          <small>Trang quản trị Admin 2021 | Được xuất bản bởi <a href="#">HTL</a></small>
        </div>
      </div>
    </footer>

    </div>
