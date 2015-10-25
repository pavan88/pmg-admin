<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->


<title>Embedded JSP:Left Menu Bar</title>
</head>
<body>
 <div class="nano z-depth-2">
      <div class="nano-content">
  <ul>
          <li class="txt-weight blue-text label center">Menu</li>
		  <p></p>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="PMG Set-Up">
            <a href="a-settings" class="waves-effect waves-blue"><i class="mdi mdi-action-settings"></i> PMG Setting</a>
          </li>
          <li>
            <a class="yay-sub-toggle waves-effect waves-blue"><i class="mdi mdi-action-dashboard"></i>Dashboard<span class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
            <ul class="tooltipped" data-position="top" data-delay="50" data-tooltip="  Work Place">
              <li>
                <a href="a-overview" class="waves-effect waves-light"> PMG Overview <span class="yellow badge new"></span></a>
              </li>
			  <li>
                <a href="a-dashboard" class="waves-effect light"> Master's Dashboard</a>
              </li>
            </ul>
          </li>
          <li>
            <a class="yay-sub-toggle waves-effect waves-blue"><i class="mdi mdi-action-wallet-travel"></i> Work Place<span class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
            <ul class="tooltipped" data-position="top" data-delay="50" data-tooltip="  Work Place">
              <li>
                <a href="a-lb" class="waves-effect waves-light"> Link Broadcaster <span class="white blue-text badge new"></span></a>
              </li>
			  <li>
                <a href="linkbroadcaster" class="waves-effect waves-light"> Link Verifier</a>
              </li>
            </ul>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Detail of Every Player">
            <a href="players" class="waves-effect waves-blue"><i class="fa fa-child"></i> Player's Details</a>
          </li>
          <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="  Contributor's Details">
            <a href="contributors" class="waves-effect waves-blue"><i class="mdi mdi-editor-insert-emoticon"></i> Contributors</a>
          </li>
           <li>
            <a class="yay-sub-toggle waves-effect waves-blue"><i class="mdi mdi-action-assessment"></i>Link Uniqueness Value<span class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
            <ul class="tooltipped" data-position="top" data-delay="50" data-tooltip="  Link Uniqueness Value (LUV)">
              <li>
                <a href="a-luv" class="waves-effect waves-light"> Master's LUV</a>
              </li>
			  <li>
                <a href="player-lv.html" class="waves-effect waves-light"> Player's LUV</a>
              </li>
            </ul>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip="Review All Complaints">
            <a href="complaints-reviewer.html" class="waves-effect waves-red"><i class="mdi  mdi-action-history"></i> Complaints Review</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Create / Delete Notifications">
            <a href="a-notify" class="waves-effect waves-blue"><i class="ion-android-notifications"></i> Notification Creator</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Answer Frequently Asked Questions">
            <a href="a-faq" class="waves-effect waves-blue"><i class="fa fa-question-circle"></i>Answer FAQs</a>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" Create Resources & Tips">
            <a href="a-rstips" class="waves-effect waves-blue"><i class="mdi mdi-action-thumb-up"></i> Resources & Tips Maker</a>
          </li>
		   <li>
            <a class="yay-sub-toggle waves-effect waves-blue"><i class="mdi mdi-action-assessment"></i> Subscription Panel<span class="yay-collapse-icon mdi-navigation-expand-more"></span></a>
            <ul class="tooltipped" data-position="top" data-delay="50" data-tooltip="  Subscriotion Details">
              <li>
                <a href="../order/ecom-dashboard.html" class="waves-effect waves-light"> Order Dashboard</a>
              </li>
			  <li>
                <a href="../order/ecom-order.html" class="waves-effect waves-light"> Order's Details</a>
              </li>
			   <li>
                <a href="../order/ecom-pro-add.html" class="waves-effect waves-light"> Create Offers</a>
              </li>
			  <li>
                <a href="buy-now.html" class="waves-effect waves-light"> Player's Buy Now Page</a>
              </li>
            </ul>
          </li>
		  <li class="tooltipped" data-position="right" data-delay="50" data-tooltip=" ProMaGizmo | PMG ~~ Intro / Tour Creation">
            <a href="tour-creator.html" class="waves-effect waves-yellow"><i class="ion-monitor"></i> PMG Tour Set-UP</a>
          </li>
        </ul>
        </div>
        </div>
   </body>
</html>