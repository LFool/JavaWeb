<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home </title>
	<meta charset="utf-8">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="">
	
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Karla:400,400i,700%7CLato:300,400,400i,700' rel='stylesheet'>
	
	<!-- Css -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/magnific-popup.css" />
	<link rel="stylesheet" href="css/font-icons.css" />
	<link rel="stylesheet" href="css/sliders.css" />
	<link rel="stylesheet" href="css/style.css" />
	
	<!-- Favicons -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
</head>
<body>
	<!-- Preloader -->
  <div class="loader-mask">
    <div class="loader">
      "Loading..."
    </div>
  </div>

  <main class="main-wrapper">

    <!-- Navigation -->
    <header class="nav nav--transparent nav--always-fixed nav--sticky-on-mobile">
      <div class="nav__holder nav__holder--no-line" id="sticky-nav">

        <div class="container-fluid container-semi-fluid">
          <div class="flex-parent">

            <div class="nav__header clearfix">
              <!-- Logo -->
              <div class="logo-wrap">
                <a href="index1.jsp" class="logo__link">
                  <img class="logo logo--dark" src="img/logo_dark.png" alt="logo">
                  <img class="logo logo--light" src="img/logo_light.png" alt="logo">
                </a>
              </div>
            </div> <!-- end nav-header -->

            <!-- Nav Open Icon -->
            <div class="nav__icon-wrap">
              <div id="nav__icon" class="nav__icon">
                <div class="nav__icon__inner">
                  <a href="index1.jsp" id="nav__icon__trigger" class="nav__icon__trigger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                  </a>
                </div>
              </div>
            </div>
        
          </div> <!-- end flex-parent -->
        </div> <!-- end container -->
      </div>


      <!-- Fullscreen Menu -->
      <div class="nav__overlay" id="nav__overlay">
        <div class="nav__overlay__menu">
          <ul>
            <li><a href="index1.jsp">About</a></li>
            <li><a href="index1.jsp">Works</a></li>
            <li><a href="index1.jsp">Blog</a></li>
            <li><a href="index1.jsp">Demos</a></li>
          </ul>
        </div>

        <!-- Nav Close Icon -->
        <div class="nav__icon-wrap">
          <div class="nav__icon">
            <div class="nav__icon__inner">
              <a href="index1.jsp" id="nav__icon__close" class="nav__icon__trigger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
              </a>
            </div>
          </div>
        </div>

      </div>
    </header> <!-- end navigation -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网站建设</a></div>

    <div class="content-wrapper oh">

      <!-- Fullpage -->
      <div id="fullpage" class="fullscreen-img">

        <!-- Hero -->
        <div class="section hero bg-img" style="background-image: url(img/hero/hero_6_1.jpg);">
          <div class="container">
            <div class="hero__outer">
              <div class="hero__inner">
                <h3 class="hero__subtitle--uppercase">此处应该有心灵鸡汤</h3>
                <h1 class="hero__title hero--boxed--md hero--bold"><a href="img/11.jpg">任何你写的代码，超过6个月不去看它，当你再看时，都像是别人写的。</a></h1>
              </div>
            </div>

            <!-- Partners -->
            <div class="partners partners--overlay">
              <div class="container">
                <div class="row">
                  <div class="col-xs-3 col-xxs-6">
                    <a href="index1.jsp">
                      <img src="img/partners/partner_logo_light_1.png" alt="">
                    </a>
                  </div>
                  <div class="col-xs-3 col-xxs-6">
                    <a href="index1.jsp">
                      <img src="img/partners/partner_logo_light_2.png" alt="">
                    </a>
                  </div>
                  <div class="col-xs-3 col-xxs-6">
                    <a href="index1.jsp">
                      <img src="img/partners/partner_logo_light_3.png" alt="">
                    </a>
                  </div>
                  <div class="col-xs-3 col-xxs-6">
                    <a href="index1.jsp">
                      <img src="img/partners/partner_logo_light_4.png" alt="">
                    </a>
                  </div>
                </div>
              </div>
            </div> <!-- end partners -->


          </div>          
        </div> <!-- end hero -->

        <!-- Services -->
        <div class="section hero bg-img" style="background-image: url(img/hero/hero_6_2.jpg)">
          <div class="container pt-sm-60">

            <div class="heading-row text-center">
              <h2 class="heading heading--lg">What we do</h2>
              <p class="subheading white hidden-sm hidden-xs">例如像 C, C++, Python, Java, JavaWeb, JavaScript, CSS, Html, Matlab, 布啦布啦布啦的</p>
            </div>

            <div class="row">
              <div id="owl-services-slider" class="owl-carousel owl-theme">

                <div class="feature feature--transparent text-center">
                  <div class="feature__base feature--border">
                    <a href="index1.jsp" class="feature__icon-holder">
                      <i class="pe-7s-cloud feature__icon"></i>
                    </a>
                    <div class="feature__text">
                      <h3 class="feature__title bottom-line">Apps开发</h3>
                      <p class="feature__text__paragraph">此处省略3725个字......</p>
                    </div>
                  </div>
                </div> <!-- end feature item -->

                <div class="feature feature--transparent text-center">
                  <div class="feature__base feature--border">
                    <a href="index1.jsp" class="feature__icon-holder">
                      <i class="pe-7s-diamond feature__icon"></i>
                    </a>
                    <div class="feature__text">
                      <h3 class="feature__title bottom-line">Web</h3>
                      <p class="feature__text__paragraph">此处省略4568个字......</p>
                    </div>
                  </div>
                </div> <!-- end feature item -->

                <div class="feature feature--transparent text-center">
                  <div class="feature__base feature--border">
                    <a href="index1.jsp" class="feature__icon-holder">
                      <i class="pe-7s-shopbag feature__icon"></i>
                    </a>
                    <div class="feature__text">
                      <h3 class="feature__title bottom-line">Game制作</h3>
                      <p class="feature__text__paragraph">此处省略542个字......</p>
                    </div>
                  </div>
                </div> <!-- end feature item -->

                <div class="feature feature--transparent text-center">
                  <div class="feature__base feature--border">
                    <a href="index1.jsp" class="feature__icon-holder">
                      <i class="pe-7s-graph2 feature__icon"></i>
                    </a>
                    <div class="feature__text">
                      <h3 class="feature__title bottom-line">实在想不到了</h3>
                      <p class="feature__text__paragraph">这个就凑合看吧...............</p>
                    </div>
                  </div>
                </div> <!-- end feature item -->

              </div>
            </div>

          </div>
        </div> <!-- end services -->

        <!-- Project 1 -->
        <div class="section hero bg-img" style="background-image: url(img/hero/hero_6_3.jpg)">
          <div class="container-fluid no-padding">
            <div class="fullpage-project-body">
              <div class="work-item__description">
                <h3 class="work-item__title"><a href="index1.jsp">这个就欣赏一下电脑吧</a></h3>
                <span class="work-item__text">
                  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                </span>
              </div>
            </div>
          </div>
        </div> <!-- end project 1 -->

        <!-- Project 2 -->
        <div class="section hero bg-img" style="background-image: url(img/hero/hero_6_4.jpg)">
          <div class="container-fluid no-padding">
            <div class="fullpage-project-body">
              <div class="work-item__description">
                <h3 class="work-item__title"><a href="index1.jsp">欣赏大自然And背影</a></h3>
                <span class="work-item__text">
                  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                </span>
              </div>
            </div>
          </div>
        </div> <!-- end project 2 -->

        <!-- Contact -->
        <div class="section hero bg-img" style="background-image: url(img/hero/hero_6_5.jpg)">
          <div class="container pt-sm-60">
            <div class="hero__outer">
              <div class="hero__inner text-center">

                <div class="heading-row text-center">
                  <h2 class="heading heading--lg"><a href="submitinfo.jsp">Click Here</a></h2>
                  <p class="subheading white hidden-xs" style="font-size: 25px">--------------------If you want to join us!--------------------</p>
                </div>

                <div class="contact-item">
                  <font color="yellow"> 门前大桥下，游过一群鸭，快来快来数一数，二四六七八 </font><br/>
                  <audio src="music/yayayazi.mp3" controls>你的浏览器太low</audio> 
                  <p>More Information <a href="managerlogin.jsp" target="_blank" title="啦啦啦啦">啦啦啦啦</a> --- Making by <a href="https://www.ctguqmx.com/" title="哈哈哈哈" target="_blank">哈哈哈哈</a></p>
                </div> <!-- end address -->

                <div class="contact-item">
                  <span class="contact-item__title">Phone:</span>
                  <a href="tel:+123456789" class="contact-item__phone">+密密 密密 密密密 密密 密密</a>              
                </div> <!-- end phone -->

                <div class="contact-item">
                  <span class="contact-item__title">Email:</span>
                  <a href="mailto:1712199884@qq.com" class="contact-item__email">密密密密密@密密.密密密</a>
                </div> <!-- end email -->

                <div class="social-icons social-icons--nobase social-icons--white mt-50">
                  <a href="index1.jsp"><i class="ui-twitter"></i></a>
                  <a href="index1.jsp"><i class="ui-facebook"></i></a>
                  <a href="index1.jsp"><i class="ui-linkedin"></i></a>
                  <a href="index1.jsp"><i class="ui-instagram"></i></a>
                </div>

              </div>           
            </div>
          </div>
        </div> <!-- end contact -->
      </div> <!-- end fullpage -->


    </div> <!-- End content wrapper -->
  </main> <!-- End main wrapper -->
  

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/plugins.js"></script>  
  <script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>
