<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]>     <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]>     <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ProMaGizmo | PMG</title>

  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!--font-->	
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"  charset="utf-8" />
  
   <!--Alert-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />
  
  <!--Map-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/jquery-jvectormap/jquery-jvectormap.css" />

  <!-- nanoScroller -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

  <!-- FontAwesome -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

  <!-- Material Design Icons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.min.css" />

  <!-- IonIcons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />

  <!-- WeatherIcons -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/weatherIcons/css/weather-icons.min.css" />

  <!-- Rickshaw -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.css" />

  <!-- nvd3 -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.css" />

  <!-- Google Prettify -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.css" />

  <!-- Main -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
  <!-- endbuild -->

  <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/static/assets/core/html5shiv/html5shiv.min.js"></script>
  <![endif]-->
</head>

<body class="aside-toggled">

  <nav class="navbar-top">
  <!-- START navbar header-->
   <div class="navbar-header">
	<a href="#" class="navbar-brand">
	<div class="brand-logo">
		ProMaGizmo
	</div>
	</a>
   </div>
<!-- END navbar header-->
    <div class="nav-wrapper">

      <!-- Sidebar toggle -->
      <a href="#" class="yay-toggle">
        <div class="burg1"></div>
        <div class="burg2"></div>
        <div class="burg3"></div>
      </a>
      <!-- Sidebar toggle -->

      <!-- Menu -->
 <ul>
	  <li class="waves-effect waves-light"><a href="#!" class="search-bar-toggle modal-trigger tooltipped" data-position="buttom" data-delay="50" data-tooltip="Notification / Messages"><i class="fa fa-bell"></i><sup class="badge red white-text">1</sup></a>
        </li>
        <li class="user waves-effect waves-ripple">
          <a id="step4" class="dropdown-button" href="#!" data-activates="user-dropdown">
            <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="Master" class="circle">Master<i class="mdi-navigation-expand-more right"></i>
          </a>
          <ul id="user-dropdown" class="dropdown-content">
            <li class=" blk waves-effect waves-blue"><a href="PMG-settings.html"><i class="fa fa-cogs"></i>&ensp; PMG Settings</a>
            </li>
			<li class=" blk waves-effect waves-blue"><a href="lock.html"><i class="mdi mdi-action-lock"></i>&ensp; Lock Account</a>
            </li>
            <li class="divider"></li>
            <li class=" blk waves-effect waves-blue"><a href="${pageContext.request.contextPath}/static/sign-in.html"><i class="mdi-action-settings-power"></i>&ensp; Logout</a>
            </li>
          </ul>
        </li>
      </ul>
      <!-- /Menu -->
    </div>
  </nav>
  <!-- /Top Navbar -->
  
  <aside class="yaybar yay-light yay-shrink yay-hide-to-small yay-gestures z-depth-2">
    <div class="top">
      <div>
        <!-- Sidebar toggle -->
        <a href="#" class="yay-toggle">
          <div class="burg1"></div>
          <div class="burg2"></div>
          <div class="burg3"></div>
        </a>
        <!-- Sidebar toggle -->
      </div>
    </div>
     <jsp:include page="left_menu.jsp" />
  </aside>

   <!-- /Yay Sidebar -->

  <!-- Main Content -->
  <section class="content-wrap">
    <!-- Breadcrumb -->
    <div class="page-title z-depth-1">
        <div class="col s12 m3 l2 right-align">
		  <a class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"  data-tooltip="Chat with US" data-position="left">
    <i class="fa fa-comments"></i>
  </a>
        </div>
    </div>
    <!-- /Breadcrumb -->
	
	<div class="row sortable">
      <div class="col l3 m6 s12">
        <div class="card-panel stats-card purple lighten-2 white-text z-depth-2">
          <span class="count"><i class="mdi mdi-action-accessibility"></i> 3,80,00</span>
		  <p>
          <div class="name">Today's Joining</div></p>
        </div>
      </div>
      <div class="col l3 m6 s12">
        <div class="card-panel stats-card indigo lighten-2 white-text z-depth-2">
          <span class="count"><i class="mdi mdi-action-accessibility"></i> 13,547,00</span>
		  <p>
          <div class="name">Total Joined</div></p>
        </div>
      </div>
      <div class="col l3 m6 s12">
        <div class="card-panel stats-card teal lighten-2 white-text z-depth-2">
          <span class="count"><i class="mdi mdi-action-accessibility"></i> 23,54,70</span>
		  <p>
          <div class="name">Weekly Target</div></p>
		  <div class="progress small">
  <div class="red lighten-2 white-text" style="width: 50%"></div>
</div>
        </div>
      </div>
      <div class="col l3 m6 s12">
        <div class="card-panel stats-card red lighten-2 white-text z-depth-2">
          <span class="count"><i class="mdi mdi-action-accessibility"></i> 53,54,70</span>
		  <p>
          <div class="name">Monthly Target</div></p>
		  <div class="progress small">
  <div class="green lighten-2 white-text" style="width: 60%"></div>
</div>
        </div>
      </div>
    </div>
    <!-- /Stats Panels -->
	<!-- Revenue -->
    <div class="row">
      <div class="col s12">
        <div class="card-panel z-depth-2">
		<a href="#"><h3>Players Overview</h3></a>
		<hr class="line">
          <div class="col s12 l9">
            <h5 class="txt-weight">Monthly </h5>
            <div id="revenueLineChart" style="height: 250px"></div>
          </div>
          <div class="col s12 l3">
            <h5 class="txt-weight">Daily</h5>
            <div id="revenueBarChart" style="height: 250px"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Revenue -->
	<!-- Revenue -->
    <div class="row">
      <div class="col s12">
        <div class="card-panel z-depth-2">
		<a href="#"><h3>Link's Click Status</h3></a>
		<hr class="line">
          <div class="col s12 l9">
            <h5 class="txt-weight">Monthly </h5>
            <div id="cline" style="height: 250px"></div>
          </div>
          <div class="col s12 l3">
            <h5 class="txt-weight">Daily</h5>
            <div id="cbar" style="height: 250px"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Revenue -->
	<!-- Revenue -->
    <div class="row">
      <div class="col s12">
        <div class="card-panel z-depth-2">
		<a href="#"><h3>Link's Verification Status</h3></a>
		<hr class="line">
          <div class="col s12 l9">
            <h5 class="txt-weight">Monthly </h5>
            <div id="vline" style="height: 250px"></div>
          </div>
          <div class="col s12 l3">
            <h5 class="txt-weight">Daily</h5>
            <div id="vbar" style="height: 250px"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- /Revenue -->
	  <div class="row">
      <!-- map -->
      <div class="col s12 l12">
        <div class="card-panel">
		
          <a href="#"><h3>Countries Overview</h3></a>
		<hr class="line">
          <div id="map1" class="map" style="height: 300px;"></div>
        </div>
      </div>
	  </div>
	
	  <div class="row">
<div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Players Link LUV</h3></a>
		<hr class="line">
          <div id="luv" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>
	  <div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Total Complaint Status</h3></a>
		<hr class="line">
          <div id="complaint" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>

	  </div>
	   <div class="row">
<div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Max Time Invested Daily</h3></a>
		<hr class="line">
          <div id="MTI" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>
	  <div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Multiple IPs LOG-IN</h3></a>
		<hr class="line">
          <div id="TTI" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>

	  </div>
	  <div class="row">
<div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Player Status</h3></a>
		<hr class="line">
          <div id="player" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>
	  <div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Account Status </h3></a>
		<hr class="line">
          <div id="account" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>

	  </div>
	   <div class="row">
<div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Domain Verification Status</h3></a>
		<hr class="line">
          <div id="domain" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>
	  <div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Membership Overview </h3></a>
		<hr class="line">
          <div id="member" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>

	  </div>
	  <div class="row">
	<div class="col s12 l6">
        <div class="card-panel">
          <!-- Top Geographic -->
          
           <a href="#" class=""><h3>Countries Overview</h3></a>
          <hr class="line">
          <div class="content">
            <table class="table">
              <tbody>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/in.png" alt="India">&ensp; India</td>
                  <td class="right-align">
                    <strong>1,795</strong>  <small>(11.57%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/us.png" alt="United States">&ensp; United States</td>
                  <td class="right-align">
                    <strong>1,773</strong>  <small>(11.43%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/br.png" alt="Brazil">&ensp; Brazil</td>
                  <td class="right-align">
                    <strong>883</strong>  <small>(5.69%)</small>
                  </td>
				  <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/tr.png" alt="Turkey">&ensp; Turkey</td>
                  <td class="right-align">
                    <strong>871</strong>  <small>(5.61%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/ru.png" alt="Russia">&ensp; Russia</td>
                  <td class="right-align">
                    <strong>829</strong>  <small>(5.34%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/de.png" alt="Germany">&ensp; Germany</td>
                  <td class="right-align">
                    <strong>485</strong>  <small>(3.13%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/fr.png" alt="France">&ensp; Germany</td>
                  <td class="right-align">
                    <strong>473</strong>  <small>(3.05%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
                <tr>
                  <td>
                    <img src="${pageContext.request.contextPath}/static/assets/core/flagIcons/it.png" alt="Italy">&ensp; Italy</td>
                  <td class="right-align">
                    <strong>356</strong>  <small>(2.29%)</small>
                  </td>
				   <td><i class="fa fa-level-up green-text"></i></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- /Top Geographic -->
        </div>
      </div>
	  <!-- ToDo Card -->
       <div class="col l6 s12">
        <!-- Pie Chart -->
        <div class="card-panel">
          <a href="#"><h3>Master's Bonus Overview  </h3></a>
		<hr class="line">
          <div id="mbo" style="height: 250px"></div>
        </div>
        <!-- /Pie Chart -->
      </div>
      <!-- /ToDo Card -->
	</div>
	
  </section>
  <!-- /Main Content -->

  
  <!-- Chat.chat-light - light color scheme-->
  <div class="chat z-depth-4-hover">
    <div class="layer-overlay"></div>
    <div class="layer-content">
      <!-- Contacts -->
      <div class="contacts">
        <!-- Top Bar -->
        <div class="topbar">
          <a href="#!" class="text">Chat</a>
          <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
        </div>
        <!-- /Top Bar -->
        <div class="nano">
          <div class="nano-content">
		   <div class="input-field white-text">
        <i class="mdi-social-public prefix white-text"></i>
        <input class="white-text"id="Search" type="text">
        <label class="white-text"for="Search">Search Players</label>
      </div>
            <span class="label">Online</span>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="Felecia Castro" class="circle photo">
              <div class="name">Felecia Castro</div>
              <div class="status">Lorem status</div>
              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user3.jpg" alt="Max Brooks" class="circle photo">
              <div class="name">Max Brooks</div>
              <div class="status">Lorem status</div>
              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>
            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user4.jpg" alt="Patsy Griffin" class="circle photo">

              <div class="name">Patsy Griffin</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user5.jpg" alt="Chloe Morgan" class="circle photo">

              <div class="name">Chloe Morgan</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user6.jpg" alt="Vernon Garrett" class="circle photo">

              <div class="name">Vernon Garrett</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user7.jpg" alt="Greg Mcdonalid" class="circle photo">

              <div class="name">Greg Mcdonalid</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user8.jpg" alt="Christian Jackson" class="circle photo">

              <div class="name">Christian Jackson</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="ongreen-text fa fa-circle"></i>
              </div>
            </div>


            <span class="label">Offline</span>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user9.jpg" alt="Willie Kelly" class="circle photo">

              <div class="name">Willie Kelly</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user10.jpg" alt="Jenny Phillips" class="circle photo">

              <div class="name">Jenny Phillips</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user11.jpg" alt="Darren Cunningham" class="circle photo">

              <div class="name">Darren Cunningham</div>
              <div class="status">Lorem status</div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user12.jpg" alt="Sandra Cole" class="circle photo">

              <div class="name">Sandra Cole</div>
              <div class="status">Lorem status</div>
            </div>

          </div>
        </div>
      </div>
      <!-- /Contacts -->

      <!-- Messages -->
      <div class="messages">

        <!-- Top Bar with back link -->
        <div class="topbar">
          <a href="#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
          <a href="#!" class="chat-back"><i class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
        </div>
        <!-- /Top Bar with back link -->

        <!-- All messages list -->
        <div class="list">
          <div class="nano scroll-bottom">
            <div class="nano-content">

              <div class="date">Monday, Feb 23, 8:23 pm</div>

              <div class="from-me">
                Hi, Felicia.
                <br>How are you?
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Hi! I am good!
              </div>

              <div class="clear"></div>

              <div class="from-me">
                Glad to see you :)
                <br>This long text is intended to show how the chat will display it.
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Also, we will send the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
              </div>

              <div class="date">Friday, Mar 10, 5:07 pm</div>

              <div class="from-me">
                Hi again!
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">Hi! Glad to see you.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                I want to add you in my Facebook.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                Can you give me your page?
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">I do not use Facebook. But you can follow me in Twitter.
              </div>

              <div class="clear"></div>

              <div class="from-me">
                It's good idea!
              </div>

              <div class="clear"></div>

              <div class="from-them">
                <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="John Doe" class="circle photo">You can find me here - <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
              </div>

            </div>
          </div>
        </div>
        <!-- /All messages list -->

        <!-- Send message -->
        <div class="send">
          <form action="#!">
            <div class="input-field">
              <input id="chat-message" type="text" name="chat-message">
            </div>

            <button class="btn waves-effect z-depth-2"><i class="mdi-content-send"></i>
            </button>
          </form>
        </div>
        <!-- /Send message -->

      </div>
      <!-- /Messages -->
    </div>

  </div>
  <!-- /Chat -->


  <footer class="z-depth-3">&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.</footer>
  <!-- DEMO [REMOVE IT ON PRODUCTION] -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/pmg/js/_demo.js"></script>

  <!-- build:js ../../assets/core/js/script.js -->
  <!-- jQuery -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

  <!-- jQuery RAF (improved animation performance) -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

  <!-- nanoScroller -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>

  <!-- Materialize -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

  <!-- Simple Weather -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/simpleWeather/jquery.simpleWeather.min.js"></script>

  <!-- Sparkline -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/sparkline/jquery.sparkline.min.js"></script>

  <!-- Flot -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.time.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.pie.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.tooltip.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.categories.min.js"></script>

  <!-- d3 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/d3/d3.min.js"></script>

  <!-- nvd3 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.js"></script>

  <!-- Rickshaw -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.js"></script>

  <!-- Google Prettify -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.js"></script>

  <!-- Sortable -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/sortable/Sortable.min.js"></script>

  <!-- Main -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
  <!-- endbuild -->

  <!--Alert-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>
  
   <!--On top-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>
   
   <!--Map-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery-jvectormap/jquery-jvectormap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/jquery-jvectormap/gdp-data.js"></script>
   
  <!-- MarkItUp -->
  <script src="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/set.js" type="text/javascript"></script>
  <link href="${pageContext.request.contextPath}/static/assets/core/markitup/skins/pmg/style.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/style.css" rel="stylesheet" type="text/css" />
  <script>

            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '../.././music/ding.mp3'
            });

        </script>
		 <script>
    /*
     * Revenue Line Chart
     */
    (function() {
      var chart = $("#revenueLineChart");
      var dataPhones = {
        data: [[1,0.49],[2,12230.26],[3,11850.82],[4,12030.58],[5,10280.26],[6,12600.74],[7,11690.33],[8,10680.55],[9,12670.51],[10,13310.9],[11,10650.97],[12,11620.62]],
        idx: 0,
        label: "Total"
      };
      var dataTablets = {
        data: [[1,0.49],[2,2096.24],[3,3368.09],[4,8048.95],[5,10153.2],[6,8022.75],[7,8057.52],[8,7055.9],[9,9093.13],[10,11093.1],[11,7090.67],[12,9307.19]],
        idx: 1,
        label: "Snale"
      };
      var dataWatches = {
        data: [[1,0.99],[2,585.23],[3,731.48],[4,450.13],[5,592.13],[6,743.91],[7,616.52],[8,570.09],[9,722.23],[10,525.69],[11,563.85],[12,519.79]],
        idx: 2,
        label: "Turtule"
      };
      var dataTVs = {
        data: [[1,0.78],[2,1305.13],[3,1392.68],[4,1055.79],[5,1432.01],[6,1098.6],[7,1280.68],[8,1010.23],[9,1267.37],[10,1447.23],[11,1447.43],[12,1073.42]],
        idx: 3,
        label: "Rabbit"
      };
	   var dataBolt = {
        data: [[1,0.78],[2,135.13],[3,139.68],[4,105.79],[5,142.01],[6,598.6],[7,1080.68],[8,1010.23],[9,1267.37],[10,1347.23],[11,1547.43],[12,1073.42]],
        idx: 4,
        label: "Bolt"
      };
      var options = {
        series: {
          lines: {
            show: true,
            lineWidth: 1,
            fill: false
          },
          points: {
            show: true, 
            lineWidth: 2,
            radius: 3
          },
          shadowSize: 2,
          stack: true
        },
        grid: {
          hoverable: true, 
          clickable: true, 
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        legend: {
          // show: false
          backgroundOpacity: 0,
          labelBoxBorderColor: "#fff",
          labelFormatter: function(label, series){
            return '<a href="#" onClick="togglePlot('+series.idx+'); return false;" style="color: inherit">'+label+'</a>';
          }
        },
        colors: ["#ab47bc", "#5c6bc0", "#26a69a", "#ef5350", "#EFF68A"],
        xaxis: {
          ticks: [[1, "Jan"], [2, "Feb"], [3, "Mar"], [4,"Apr"], [5,"May"], [6,"Jun"], 
                     [7,"Jul"], [8,"Aug"], [9,"Sep"], [10,"Oct"], [11,"Nov"], [12,"Dec"]],
          font: {
            family: "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {color: "#A5A5A5"}
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, [dataPhones, dataTablets, dataWatches, dataTVs, dataBolt], options);
        chart.css({
            marginTop: 25
          })
          .find('.legend table')
            .css({
              marginTop: -35,
              width: 'auto'
            })
          .find('td').css({
            padding: 5
          })
        chart.find('tr').css({
          display: 'block',
           'float': 'left'
         });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      window.togglePlot = function(seriesIdx) {
        var someData = plot.getData();
        someData[seriesIdx].lines.show = !someData[seriesIdx].lines.show;
        someData[seriesIdx].points.show = !someData[seriesIdx].points.show;
        plot.setData(someData);
        plot.draw();
      }
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 60,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': '#339FF4'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, month + "<br>" + item.series.label + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    }());
    
    
    
    /*
     * Revenue Bar Chart
     */
    $(function() {
      var chart = $("#revenueBarChart");
      var data = [
        {data: [["Total", 1000]], color: "#ab47bc"},
        {data: [["Snale", 570]], color: "#5c6bc0"},
        {data: [["Turtule", 330]], color: "#26a69a"},
        {data: [["Rabbit", 103]], color: "#ef5350"},
		{data: [["Bolt", 103]], color: "#EFF68A"}
      ];
      var options = {
        series: {
          bars: {
            show: true,
            barWidth: 0.3,
            lineWidth: 0,
            align: "center",
            fill: 1
          }
        },
        grid: {
          hoverable: true,
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        xaxis: {
          mode: "categories",
          font: {
            family: "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {
            family: "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, data, options);
        chart.css({
          marginTop: 25
        });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 40,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': '#339FF4'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, item.series.data[0][0] + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    });
  </script>
	<script>
    /*
     * Revenue Line Chart
     */
    (function() {
      var chart = $("#vline");
      var dataTotal = {
        data: [[1,1396.49],[2,1223.26],[3,1185.82],[4,1203.58],[5,1028.26],[6,1260.74],[7,1169.33],[8,1068.55],[9,1267.51],[10,1331.9],[11,1065.97],[12,1162.62]],
        idx: 0,
        label: "Total"
      };
      var dataPending = {
        data: [[1,1042.49],[2,1096.24],[3,868.09],[4,848.95],[5,1153.2],[6,822.75],[7,857.52],[8,755.9],[9,993.13],[10,1193.1],[11,790.67],[12,937.19]],
        idx: 1,
        label: "Pending"
      };
      var dataAccepted = {
        data: [[1,631.99],[2,585.23],[3,731.48],[4,450.13],[5,592.13],[6,743.91],[7,616.52],[8,570.09],[9,722.23],[10,525.69],[11,563.85],[12,519.79]],
        idx: 2,
        label: "Accepted"
      };
      var dataRejected = {
        data: [[1,1131.78],[2,1305.13],[3,1392.68],[4,1055.79],[5,1432.01],[6,1098.6],[7,1280.68],[8,1010.23],[9,1267.37],[10,1447.23],[11,1447.43],[12,1073.42]],
        idx: 3,
        label: "Rejected"
      };
      var options = {
        series: {
          lines: {
            show: true,
            lineWidth: 1,
            fill: true
          },
          points: {
            show: true, 
            lineWidth: 2,
            radius: 3
          },
          shadowSize: 0,
          stack: true
        },
        grid: {
          hoverable: true, 
          clickable: true, 
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        legend: {
          // show: false
          backgroundOpacity: 0,
          labelBoxBorderColor: "#fff",
          labelFormatter: function(label, series){
            return '<a href="#" onClick="togglePlot('+series.idx+'); return false;" style="color: inherit">'+label+'</a>';
          }
        },
        colors: ["#ab47bc", "#5c6bc0", "#26a69a", "#ef5350"],
        xaxis: {
          ticks: [[1, "Jan"], [2, "Feb"], [3, "Mar"], [4,"Apr"], [5,"May"], [6,"Jun"], 
                     [7,"Jul"], [8,"Aug"], [9,"Sep"], [10,"Oct"], [11,"Nov"], [12,"Dec"]],
          font: {
            family: "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {color: "#A5A5A5"}
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, [dataTotal, dataPending, dataAccepted, dataRejected], options);
        chart.css({
            marginTop: 25
          })
          .find('.legend table')
            .css({
              marginTop: -35,
              width: 'auto'
            })
          .find('td').css({
            padding: 5
          })
        chart.find('tr').css({
          display: 'block',
           'float': 'left'
         });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      window.togglePlot = function(seriesIdx) {
        var someData = plot.getData();
        someData[seriesIdx].lines.show = !someData[seriesIdx].lines.show;
        someData[seriesIdx].points.show = !someData[seriesIdx].points.show;
        plot.setData(someData);
        plot.draw();
      }
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 60,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': '#339FF4'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, month + "<br>" + item.series.label + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    }());
    
    
    
    /*
     * Revenue Bar Chart
     */
    $(function() {
      var chart = $("#vbar");
      var data = [
        {data: [["Total", 100]], color: "#ab47bc"},
        {data: [["Pending", 67]], color: "#5c6bc0"},
        {data: [["Accepted", 30]], color: "#26a69a"},
        {data: [["Rejected", 3]], color: "#ef5350"}
      ];
      var options = {
        series: {
          bars: {
            show: true,
            barWidth: .2,
            lineWidth: 0,
            align: "center",
            fill: 1
          }
        },
        grid: {
          hoverable: true,
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        xaxis: {
          mode: "categories",
          font: {
            family: "Papyrus,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {
            family: "Papyrus,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, data, options);
        chart.css({
          marginTop: 25
        });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 40,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': '#339FF4'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, item.series.data[0][0] + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    });
  </script>
  <script>
    /*
     * Revenue Line Chart
     */
    (function() {
      var chart = $("#cline");
      var dataTotal = {
        data: [[1,1396.49],[2,1223.26],[3,1185.82],[4,1203.58],[5,1028.26],[6,1260.74],[7,1169.33],[8,1068.55],[9,1267.51],[10,1331.9],[11,1065.97],[12,1162.62]],
        idx: 0,
        label: "Total"
      };
      var dataClicked = {
        data: [[1,1042.49],[2,1096.24],[3,868.09],[4,848.95],[5,1153.2],[6,822.75],[7,857.52],[8,755.9],[9,993.13],[10,1193.1],[11,790.67],[12,937.19]],
        idx: 1,
        label: "Clicked"
      };
      var dataPending = {
        data: [[1,631.99],[2,585.23],[3,731.48],[4,450.13],[5,592.13],[6,743.91],[7,616.52],[8,570.09],[9,722.23],[10,525.69],[11,563.85],[12,519.79]],
        idx: 2,
        label: "Pending"
      };
      var dataRejected = {
        data: [[1,1131.78],[2,1305.13],[3,1392.68],[4,1055.79],[5,1432.01],[6,1098.6],[7,1280.68],[8,1010.23],[9,1267.37],[10,1447.23],[11,1447.43],[12,1073.42]],
        idx: 3,
        label: "Rejected"
      };
      var options = {
        series: {
          lines: {
            show: true,
            lineWidth: 1,
            fill: true
          },
          points: {
            show: true, 
            lineWidth: 2,
            radius: 3
          },
          shadowSize: 0,
          stack: true
        },
        grid: {
          hoverable: true, 
          clickable: true, 
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        legend: {
          // show: false
          backgroundOpacity: 0,
          labelBoxBorderColor: "#fff",
          labelFormatter: function(label, series){
            return '<a href="#" onClick="togglePlot('+series.idx+'); return false;" style="color: inherit">'+label+'</a>';
          }
        },
        colors: ["#ab47bc", "#5c6bc0", "#26a69a", "#ef5350"],
        xaxis: {
          ticks: [[1, "Jan"], [2, "Feb"], [3, "Mar"], [4,"Apr"], [5,"May"], [6,"Jun"], 
                     [7,"Jul"], [8,"Aug"], [9,"Sep"], [10,"Oct"], [11,"Nov"], [12,"Dec"]],
          font: {
            family: "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {color: "#A5A5A5"}
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, [dataTotal, dataClicked, dataPending, dataRejected], options);
        chart.css({
            marginTop: 25
          })
          .find('.legend table')
            .css({
              marginTop: -35,
              width: 'auto'
            })
          .find('td').css({
            padding: 5
          })
        chart.find('tr').css({
          display: 'block',
           'float': 'left'
         });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      window.togglePlot = function(seriesIdx) {
        var someData = plot.getData();
        someData[seriesIdx].lines.show = !someData[seriesIdx].lines.show;
        someData[seriesIdx].points.show = !someData[seriesIdx].points.show;
        plot.setData(someData);
        plot.draw();
      }
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 60,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': 'rgba(0,0,0,0.6)'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, month + "<br>" + item.series.label + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    }());
    
    
    
    /*
     * Revenue Bar Chart
     */
    $(function() {
      var chart = $("#cbar");
      var data = [
        {data: [["Total", 100]], color: "#ab47bc"},
        {data: [["clicked", 67]], color: "#5c6bc0"},
        {data: [["Pending", 30]], color: "#26a69a"},
        {data: [["Rejected", 3]], color: "#ef5350"}
      ];
      var options = {
        series: {
          bars: {
            show: true,
            barWidth: .2,
            lineWidth: 0,
            align: "center",
            fill: 1
          }
        },
        grid: {
          hoverable: true,
          tickColor: "#f9f9f9",
          borderWidth: 0
        },
        xaxis: {
          mode: "categories",
          font: {
            family: "Papyrus,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        },
        yaxis: {
          ticks:7,
          font: {
            family: "Papyrus,Roboto,sans-serif",
            color: "#A5A5A5"
          }
        }
      };
      
      var plot;
      function initFlot() {
        plot = $.plot(chart, data, options);
        chart.css({
          marginTop: 25
        });
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    
      function showTooltip(x, y, contents) {
        var tooltip = $('<div id="tooltip">' + contents + '</div>').css( {
          position: 'absolute',
          display: 'none',
          top: y - 40,
          color: "#fff",
          padding: '5px 10px',
          marginLeft: '-10px',
          'border-radius': '3px',
          'background-color': 'rgba(0,0,0,0.6)'
        }).appendTo("body");
    
        tooltip.css({
          left: x - tooltip.width() / 2
        }).fadeIn(200);
      }
    
      var previousPoint = null;
      chart.bind("plothover", function (event, pos, item) {
        if (item) {
          if (previousPoint != item.dataIndex) {
            previousPoint = item.dataIndex;
    
            $("#tooltip").remove();
            var x = item.datapoint[0].toFixed(0),
                y = item.datapoint[1].toFixed(0);
    
            var month = item.series.xaxis.ticks[item.dataIndex].label;
    
            showTooltip(item.pageX, item.pageY, item.series.data[0][0] + " : " + y);
          }
        }
        else {
          $("#tooltip").remove();
          previousPoint = null;
        }
      });
    });
  </script>
    <script>
   
    // Pie Chart
    (function() {
      var chart = $("#luv");
      var data = [
          { label: "Healthy",  data: 68.5, color: "#95F68A"},
          { label: "Moderate",  data: 12.5, color: "#EFF68A"},
          { label: "Week",  data: 9, color: "#F7C16D"},
          { label: "Danger",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	 // Pie Chart Total Time Invested
    (function() {
      var chart = $("#mbo");
      var data = [
          { label: "1 Dollar",  data: 68.5, color: "#95F68A"},
          { label: "2 Dollars",  data: 12.5, color: "#EFF68A"},
          { label: "3 Dollars",  data: 20, color: "#F76D6D"},
		  { label: "4 Dollars",  data: 40, color: "#F76D6D"},
		  { label: "5 Dollars",  data: 5, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	// Pie Chart
    (function() {
      var chart = $("#complaint");
      var data = [
          { label: "Accepted",  data: 68.5, color: "#95F68A"},
          { label: "Pending",  data: 12.5, color: "#EFF68A"},
          { label: "Rejected",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
   
  </script>
  <script>

  
	 // Pie Chart Total Time Invested
    (function() {
      var chart = $("#TTI");
      var data = [
          { label: "1 IP",  data: 68.5, color: "#95F68A"},
          { label: "2 IPs",  data: 12.5, color: "#EFF68A"},
          { label: "3 IPs",  data: 11, color: "#F76D6D"},
		  { label: "4 IPs",  data: 11, color: "#F76D6D"},
		  { label: "5-10 IPs",  data: 11, color: "#F76D6D"},
		  { label: "10-15 IPs",  data: 11, color: "#F76D6D"},
		  { label: "15-20 IPs.",  data: 11, color: "#F76D6D"},
		  { label: "More than 20 IPs",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
   // Pie Chart Max Time Investor
    (function() {
      var chart = $("#MTI");
      var data = [
          { label: "Less than 30Mins.",  data: 68.5, color: "#95F68A"},
          { label: "Less than 1Hrs.",  data: 12.5, color: "#EFF68A"},
		  { label: "Less than 3Hrs.",  data: 11, color: "#F76D6D"},
		  { label: "Less than 5Hrs.",  data: 11, color: "#F76D6D"},
		  { label: "Less than 7Hrs.",  data: 11, color: "#F76D6D"},
		  { label: "Less than 9Hrs.",  data: 11, color: "#F76D6D"},
		  { label: "More than 10Hrs.",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	// Pie Chart player
    (function() {
      var chart = $("#player");
      var data = [
          { label: "Online",  data: 68.5, color: "#95F68A"},
          { label: "OffLine",  data: 12.5, color: "#EFF68A"},
          { label: "Vacation",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	// Pie Chart account
    (function() {
      var chart = $("#account");
      var data = [
          { label: "Active",  data: 68.5, color: "#95F68A"},
          { label: "In-Active (Temp)",  data: 12.5, color: "#EFF68A"},
          { label: "Banned",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	// Pie Chart domain
    (function() {
      var chart = $("#domain");
      var data = [
          { label: "Verified",  data: 68.5, color: "#95F68A"},
          { label: "Pending",  data: 12.5, color: "#EFF68A"},
          { label: "Rejected",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	// Pie Chart member
    (function() {
      var chart = $("#member");
      var data = [
          { label: "Paid",  data: 68.5, color: "#95F68A"},
          { label: "Free",  data: 12.5, color: "#EFF68A"},
          { label: "Pending",  data: 11, color: "#F76D6D"}
      ];
      var options = {
        series: {
          pie: {
            innerRadius: 0.5,
            show: true
          }
        },
        grid: {
          hoverable: true
        },
        legend: {
          backgroundOpacity: 0,
          labelBoxBorderColor: "none"
        },
        tooltip: true,
        tooltipOpts: {
          content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
          shifts: {
            x: 20,
            y: 0
          },
          defaultTheme: false
        }
      };
    
      function initFlot() {
        $.plot(chart, data, options);
        chart.find('.legend table').css('width', 'auto')
             .find('td').css('padding', 5);
      }
      initFlot();
      $(window).on('resize', initFlot);
    
    }());
	/*
 * MAP 1
 */
jQuery(function() {
  $('#map1').vectorMap({
    map: 'world_mill_en',
    series: {
      regions: [{
        values: gdpData,
        scale: ['#e3f2fd', '#2196f3'],
        normalizeFunction: 'polynomial'
      }]
    },
	backgroundColor: '#383f47',
    onRegionTipShow: function(e, el, code){
      el.html(el.html()+' ('+gdpData[code]+')');
    }
  });
})

</script>
</body>

</html>