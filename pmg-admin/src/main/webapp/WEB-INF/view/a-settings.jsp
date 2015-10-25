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
  
  <!--Drop-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.css" />
  
  <!--Alert-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />
 
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
	  <li><a href="#!" class="search-bar-toggle waves-effect waves-ripple modal-trigger tooltipped" data-position="buttom" data-delay="50" data-tooltip="Notification / Messages"><i class="fa fa-bell"></i><sup class="badge red white-text">1</sup></a>
        </li>
        <li class="user waves-effect waves-ripple">
          <a id="step4" class="dropdown-button" href="#!" data-activates="user-dropdown">
            <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg" alt="Master" class="circle">Master<i class="mdi-navigation-expand-more right"></i>
          </a>
          <ul id="user-dropdown" class="dropdown-content">
            <li class=" blk waves-effect waves-blue"><a href="a-settings"><i class="fa fa-cogs"></i>&ensp; PMG Settings</a>
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
	<form>
      <!-- General -->
      <div class="card z-depth-2">
        <div class="title blue lighten-2">
          <h5 class="shades-text text-white">PMG Settings </h5>
          <a class="minimize shades-text text-white" href="#">
            <i class="mdi-navigation-expand-less "></i>
          </a>
        </div>
        <div class="content">
		 <!-- Product Description -->
          <div class="row">
			<h3>General Setting</h3>
			<br></br>
			<div class="col s12 l6 center">
              <label class="setting-title blue-text text-lighten-2">
                Player Registration
              </label>
			  <p class="switch  note center">
				<label>
				<input type="checkbox" />
				<span class="lever warning confirm pr tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
			<div class="col s12 l6 center">
              <label class="setting-title blue-text text-lighten-2">
                PMG Launch Status
              </label>
			  <p class="switch note center">
				<label>
				<input type="checkbox" />
				<span class="lever warning confirm lb tooltipped" data-position="top" data-delay="50" data-tooltip="Player's Link Broadcasting Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
			<hr class="dash">
			
		<div class="row">
			<h3>Rating Matrix</h3>
			<br></br>
			
			<div class="col s12 l3">
              <label class="setting-title blue-text text-lighten-2">
                Master Rating Bouns
              </label>
            </div>
			<div class="col s12 l7 order-status-select blue-text">
			    <h3><b>No. of <i class="fa fa-dollar fsize green-text"></i> Rated</b></h3>
                
                <select name="order-status">
				<option value="Rate" selected><i class="ion-star"></i>One</option>
                  <option value="Rate">Two</option>
                  <option value="Rate">Three</option>
                  <option value="Rate">Four</option>
                  <option value="Rate">Five</option>
                </select>
              </div>
			   <div class="col s12 l3">
              <label class="setting-title blue-text text-lighten-2">
                Master Rating Bnefits
              </label>
            </div>
			<div class="col s12 l4 order-status-select blue-text">
			    <h5><b>Broadcast More Links</b></h5>
                
                <select name="order-status">
				<option value="LB" selected>Ten</option>
                  <option value="LB">Twenty</option>
                  <option value="LB">Thirty</option>
                  <option value="LB">Fourty</option>
                  <option value="LB">Fifty</option>
                </select>
              </div>
			  <div class="col s12 l4 order-status-select blue-text">
			    <h5><b>Receive Less Link</b></h5>
                
                <select name="order-status">
				<option value="LR" selected>Ten</option>
                  <option value="LR">Twenty</option>
                  <option value="LR">Thirty</option>
                  <option value="LR">Fourty</option>
                  <option value="LR">Fifty</option>
                </select>
              </div>
			  <div class="col s12 l3">
              <label class="setting-title blue-text text-lighten-2">
                Duration Of Benifit
              </label>
            </div>
			<div class="col s12 l7 order-status-select blue-text">
			    <h5><b>Select Duration</b></h5>
                
                <select name="order-status">
				<option value="days" selected>Seven Days</option>
                  <option value="days">Fourteen Days</option>
                  <option value="days">Twenty Days</option>
                  <option value="days">Twenty Eight Days</option>
                  <option value="days">Thirty Five Days</option>
                </select>
              </div>
			</div>
			<div class="row">
			<div class="col s12 l11">
			<div class="btn-group note right">
          <!-- Modal Trigger -->
			<a class="btn btn-small waves-effect waves-light modal-trigger tooltipped" data-position="top" data-delay="50" data-tooltip="Add New Rating Matrix" href="#add"><i class="mdi mdi-content-add"></i></a>
			
			<div id="add" class="card modal blue white-text">
				<h3 class="center">Add New Rating Matrix</h3>
  <hr class="white">
  <p>No. of <i class="fa fa-dollar"></i> Rated</p>
  <div class="input-field">
  <input id="rate" type="text"   style="border-bottom: 1px solid #FAF8F8;"class="validate">
  <label for="rate"><span class="white-text">Enter From One To Five</span></label>
</div>
<p>Broadcast Extra Links</p>
  <div class="input-field">
  <input id="LB" type="text"   style="border-bottom: 1px solid #FAF8F8;"class="validate">
  <label for="LB"><span class="white-text">Enter No. of LB</span></label>
</div>
<p>Recieve Less Links</p>
  <div class="input-field">
  <input id="LR" type="text"   style="border-bottom: 1px solid #FAF8F8;"class="validate">
  <label for="LR"><span class="white-text">Enter No. of LR</span></label>
</div>
<p>Duration of Benifit</p>
  <div class="input-field">
  <input id="day" type="text"   style="border-bottom: 1px solid #FAF8F8;"class="validate">
  <label for="day"><span class="white-text">Enter No. of Days</span></label>
</div>
<div class="row">
	<div class="col s6 l6">
	<div class="action-bar center">
    <a class="waves-effect left waves-blue btn btn-small white blue-text modal-action modal-close">Close</a>
				</div>
	</div>
	<div class="col s6 l6"> 
	 <ul class="note">
			<li class="success right">
			  <button class="btn btn-small waves-effect rm waves-blue white blue-text tooltipped" data-position="top" data-delay="50" data-tooltip="Delete Selected FAQ" type="submit" name="action">Add New</button>
			</li>
		  </ul>
	</div>
    </div>
			</div>
			
          <a href="#" class="btn btn-small red waves-effect warning confirm dl waves-light tooltipped" data-position="top" data-delay="50" data-tooltip="Delete Rating Matrix"><i class="mdi mdi-action-delete"></i></a>
        </div>
		</div>
		</div>
			</div>
			
			
		  <hr class="line">
		    <div class="row">
			<h3>PMG Maintenance</h3>
			<br></br>
				<div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Maintenance Pages
					</label>
				</div>
				<div class="col s12 l3 order-status-select blue-text">
			    <h5><b>Select Maintenance Page</b></h5>
                
                <select name="order-status">
				<option value="Maintain" selected>maintain.html</option>
                  <option value="Maintain">Maintain1.html</option>
                  <option value="Maintain">Maintain2.html</option>
                  <option value="Maintain">Maintain3.html</option>
                  <option value="Maintain">Maintain4.html</option>
                </select>
              </div>
			<div class="col s12 l3 center">
					<label class="setting-title blue-text txt-weight">
						Delete Selected Page
					</label>
					<p class="center">
					<button class="white-text waves-effect btn btn-small waves-light tooltipped" data-position="top" data-delay="50" data-tooltip="Delete Selected Page" type="submit">Delete</button></p>
				</div>
				
			   <div class="col s12 l3 center">
              <label class="setting-title blue-text txt-weight">
                Maintenance Mode
              </label>
			  <p class="switch center">
				<label>
				<input type="checkbox" />
				<span class="lever tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
          </div> 
		  <div class="row">
            <div class="col s12 l3">
              <label class="setting-title blue-text txt-weight">
                New Maintenance Pages
              </label>
			  <form></form>
            </div>
			<div class="col s12 l8">
		<h5 class="center blue-text txt-weight">Upload Maintenance Page</h5>
          <form action="/page-upload" class="dropzone" id="my-dropzone"></form>
        </div>
			</div>
          <!-- /Product Description -->
		  <hr class="line">
          <!-- /Product Description -->
          <!-- Product Name -->
          <div class="row blue-text txt-weight">
			<h3>Players Settings</h3>
			<br></br>
            <div class="col s12 l3">
              <label for="ecommerce-product-name" class="setting-title blue-text text-lighten-2">
                Max. Broadcasting Limit / Day
              </label>
            </div>
            <div class="col s12 l9">
			<div class="col s12 l5 order-status-select blue-text">
			    <h5><b>Select Player's Rank</b></h5>
                
                <select name="order-status">
				<option value="All" selected>All</option>
                  <option value="Snale">Snail</option>
                  <option value="Turtule">Turtule</option>
                  <option value="Rabbit">Rabbit</option>
                  <option value="Bolt">Bolt</option>
                </select>
              </div>
			  <div class="col s12 l4">
			   <h5><b>Set Limit</b></h5>
			<div class="input-field">
				<input id="input_text" type="text" class="validate">
				<label for="input_text">Enter the Limit</label>
			</div>
			</div>
			<div class="col s12 l2">
			<button class="white-text waves-effect btn btn-small a1 waves-light tooltipped" data-position="top" data-delay="50" data-tooltip="Add New Broadcasting Limit" type="submit">Add</button>
			</div>
            </div>
          </div>
          <!-- /Product Name -->

          <!-- player Setting -->
          <div class="row blue-text txt-weight">
		  <h3>Account Settings</h3>
		  <br></br>
            <div class="col s12 l4 center">
              <label class="setting-title blue-text text-lighten-2 ">
                Auto Select Country
              </label>
			  <p class="switch center">
				<label>
				<input type="checkbox" />
				<span class="lever tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
			 <div class="col s12 l4 center">
              <label class="setting-title blue-text text-lighten-2 ">
				1 IP per Account
              </label>
			  <p class="switch center">
				<label>
				<input type="checkbox" />
				<span class="lever tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
			 <div class="col s12 l4 center">
              <label class="setting-title blue-text text-lighten-2 ">
                1 Account per IP
              </label>
			  <p class="switch center">
				<label>
				<input type="checkbox" />
				<span class="lever tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
            
          </div>

       <br></br>

          
          <div class="row no-margin-top">
            <div class="col s12 l3">
              <label class="setting-title blue-text text-lighten-2">
                Registration mode
              </label>
            </div>
            <div class="col s12 l9">
<div class="col s12 l4">
  <input type="checkbox" id="free" />
  <label class="blue-text "for="free">Free</label>
  </div>
<div class="col s12 l5">
 <input type="checkbox" id="paid" />
  <label class="blue-text "for="paid">paid</label>
  </div>
            </div>
          </div>
		  
          
          <!-- /Player setting -->
	<hr class="line">
	 <div class="row">
			<h3>PMG BackUp</h3>
			<br></br>
			<div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Back-Up Schedule
					</label>
				</div>
			<div class="col s12 l9 order-status-select blue-text">
			    <ul>
								     <input class="d-blue" name="radios" type="radio" id="1hr" checked="">
									 <label style="padding-left: 40px;"for="1hr" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Hourly Back-Up">Hourly</label>
									 <input class="d-blue" name="radios" type="radio" id="6hrs">
									 <label style="padding-left: 40px;"for="6hrs" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="6 Hourly Back-Up">6 Hourly</label>
									 <input class="d-blue" name="radios" type="radio" id="12hrs">
									 <label style="padding-left: 40px;"for="12hrs" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="12 Hourly Back-Up">12 Hourly</label>
									 <input class="d-blue" name="radios" type="radio" id="daily">
									 <label style="padding-left: 40px;"for="daily" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Daily Back-Up">Daily</label>
									 <input class="d-blue" name="radios" type="radio" id="weekly">
									 <label style="padding-left: 40px;"for="weekly" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Weekly Back-Up">Weekly</label>
									 <input class="d-blue" name="radios" type="radio" id="monthly">
									 <label style="padding-left: 40px;"for="monthly" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Monthly Back-Up">Monthly</label>
									 
								 </ul>
              </div>
			  <div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Back-Up Upload
					</label>
				</div>
			<div class="col s12 l9 order-status-select blue-text">
			    <ul>
								     <input class="d-blue" name="up" type="radio" id="1hr-up" checked="">
									 <label style="padding-left: 40px;"for="1hr-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Hourly Back-Up Upload">Hourly</label>
									 <input class="d-blue" name="up" type="radio" id="6hrs-up">
									 <label style="padding-left: 40px;"for="6hrs-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="6 Hourly Back-Up Upload">6 Hourly</label>
									 <input class="d-blue" name="up" type="radio" id="12hrs-up">
									 <label style="padding-left: 40px;"for="12hrs-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="12 Hourly Back-Up Upload">12 Hourly</label>
									 <input class="d-blue" name="up" type="radio" id="daily-up">
									 <label style="padding-left: 40px;"for="daily-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Daily Back-Up Upload">Daily</label>
									 <input class="d-blue" name="up" type="radio" id="weekly-up">
									 <label style="padding-left: 40px;"for="weekly-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Weekly Back-Up Upload">Weekly</label>
									 <input class="d-blue" name="up" type="radio" id="monthly-up">
									 <label style="padding-left: 40px;"for="monthly-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Monthly Back-Up Upload">Monthly</label>
									 
								 </ul>
              </div>
			  <div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Upload To Cloud Drive
					</label>
				</div>
			<div class="col s12 l9 order-status-select blue-text">
			    <ul>
								     <input class="d-blue" name="cloud" type="radio" id="Drop-box" checked="">
									 <label style="padding-left: 40px;"for="Drop-box" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Upload to Drop Box">Drop Box</label>
									 <input class="d-blue" name="cloud" type="radio" id="Mega">
									 <label style="padding-left: 40px;"for="Mega" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Mega.cn.nz">Mega.cn.nz</label>
									 <input class="d-blue" name="cloud" type="radio" id="12hrs-up">
									 <label style="padding-left: 40px;"for="12hrs-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Upload to Google Drive">Google Drive</label>
									 <input class="d-blue" name="cloud" type="radio" id="daily-up">
									 <label style="padding-left: 40px;"for="daily-up" class="tooltipped blue-text txt-weight" data-position="top" data-delay="50" data-tooltip="Upload to Cloud">Cloud</label>
									 
								 </ul>
              </div>
			   <div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Import & Upload Back-Up 
					</label>
				</div>
			<div class="col s12 l9 order-status-select blue-text">
			    <div class="col s12 l4">
  <input type="checkbox" id="PC" />
  <label class="blue-text "for="PC">Local Computer</label>
  </div>
<div class="col s12 l5">
 <input type="checkbox" id="Cloud" />
  <label class="blue-text "for="Cloud">Cloud Drive</label>
  </div>
              </div>
			
			<hr class="dash">
			<div class="row">
			<h3>PMG Payment</h3>
			<br></br>
				<div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Payment Pages
					</label>
				</div>
				<div class="col s12 l3 order-status-select blue-text">
			    <h5><b>Select Payment Page</b></h5>
                
                <select name="order-status">
				<option value="payment" selected>payment.html</option>
                  <option value="payment">payment1.html</option>
                  <option value="payment">payment2.html</option>
                  <option value="payment">payment3.html</option>
                  <option value="payment">payment4.html</option>
                </select>
              </div>
			  <div class="col s12 l3 center">
					<label class="setting-title blue-text txt-weight">
						Delete Selected Page
					</label>
					<p class="center">
					<button class="white-text waves-effect btn btn-small waves-light tooltipped" data-position="top" data-delay="50" data-tooltip="Delete Selected Page" type="submit">Delete</button></p>
				</div>
			   <div class="col s12 l3 center">
              <label class="setting-title blue-text txt-weight">
                Payment Mode
              </label>
			  <p class="switch center">
				<label>
				<input type="checkbox" />
				<span class="lever tooltipped" data-position="top" data-delay="50" data-tooltip="Dis-abled / Enabled"></span>
				</label>
				</p>
            </div>
          </div>
		  <div class="row">
		  <div class="col s12 l3">
					<label class="setting-title blue-text txt-weight">
						Display TO
					</label>
				</div>
			<div class="col s12 l9 order-status-select blue-text">
			    <div class="col s12 l2">
  <input type="checkbox" id="R1" />
  <label class="blue-text "for="R1">All</label>
  </div>
<div class="col s12 l2">
 <input type="checkbox" id="R2" />
  <label class="blue-text "for="R2">Snails</label>
  </div>
   <div class="col s12 l2">
  <input type="checkbox" id="R3" />
  <label class="blue-text "for="R3">Turtles</label>
  </div>
<div class="col s12 l2">
 <input type="checkbox" id="R4" />
  <label class="blue-text "for="R4">Rabbits</label>
  </div>
  <div class="col s12 l2">
 <input type="checkbox" id="R5" />
  <label class="blue-text "for="R5">Bolts</label>
  </div>
              </div>
		  
		  </div>
		  <div class="row">
		  <div class="col s12 l3">
            </div>
			<div class="col s12 l4 order-status-select blue-text">
			    <h5><b>Account Age</b></h5>
                
                <select name="order-status">
				<option value="AA" selected>Any</option>
                  <option value="AA">One Month</option>
                  <option value="AA">Two Month</option>
                  <option value="AA">Three Month</option>
                  <option value="AA">Five Month</option>
                </select>
              </div>
			  <div class="col s12 l4 order-status-select blue-text">
			    <h5><b>Estimated Dollar Earned</b></h5>
                
                <select name="order-status">
				<option value="DO" selected>Any Amount</option>
                  <option value="DO"> less than $ 100 per Month</option>
                  <option value="DO">$ 100 to 250 per Month</option>
                  <option value="DO">$ 250 to 500 per Month</option>
                  <option value="DO">$ 500 to 750 Month</option>
				  <option value="DO">$ 750 to 1000 Month</option>
				  <option value="DO">$ 1500 to 2000 Month</option>
				  <option value="DO">$ 2500 to 3000 Month</option>
				  <option value="DO">More $ 3000 per Month</option>
                </select>
              </div>
		  </div>
		  
		  <div class="row">
            <div class="col s12 l3">
              <label class="setting-title blue-text txt-weight">
                New Payment Page
              </label>
			  <form></form>
            </div>
			<div class="col s12 l8">
		<h5 class="center blue-text txt-weight">Upload Payment Page</h5>
          <form action="/page-upload" class="dropzone" id="my-dropzone"></form>
        </div>
			</div>
			</div>
        </div>
      </div>
      <!-- /General -->
    </form>
	
	
	
	
  </section>
  <!-- /Main Content -->

  <!-- Chat.chat-light - light color scheme-->
  <div class="chat">
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

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user7.jpg" alt="Greg Mcdonalid" class="circle photo">

              <div class="name">Greg Mcdonalid</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
              </div>
            </div>

            <div class="user">
              <img src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user8.jpg" alt="Christian Jackson" class="circle photo">

              <div class="name">Christian Jackson</div>
              <div class="status">Lorem status</div>

              <div class="online"><i class="onongreen-text fa fa-circle"></i>
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



   <footer class="z-depth-3"><i class="fa fa-copyright"></i> 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.</footer>
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
   
   <!--Drop-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/core/dropzone/dropzone.min.js"></script>

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
			// Player Registration
document.querySelector('p.note span.warning.confirm.pr').onclick = function(){
	swal({
		title: "Are you sure Master?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("IT Begins!", "Registraion is NOW open to All!", "success");
	});
};
		// LB Begins
document.querySelector('p.note span.warning.confirm.lb').onclick = function(){
	swal({
		title: "Are you sure Master?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("IT Begins!", "Link Broadcasting begins for All Players!", "success");
	});
};
		// LB Begins
document.querySelector('div.note a.warning.confirm.ad').onclick = function(){
	swal({
		title: "Are you sure Master?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("IT Begins!", "Link Broadcasting begins for All Players!", "success");
	});
};
		// LB Begins
document.querySelector('div.note a.warning.confirm.dl').onclick = function(){
	swal({
		title: "Are you sure Master?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Begins!", "Link Broadcasting begins for All Players!", "success");
	});
};
	// Appriciate More
			document.querySelector('ul.note li.success button.rm').onclick = function(){
		swal({ 
		title:  "Great Job Username",
		text: "Successfully Appriciated !!!",
		timer: 3000,
		type: "success",
		showConfirmButton: false
		
	});
};
  </script>

</body>

</html>