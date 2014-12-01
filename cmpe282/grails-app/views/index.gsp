<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="widtd=device-widtd, initial-scale=1">
<meta name="description" content="">
<meta name="autdor" content="">

<link rel="stylesheet" type="text/css"
	href="<g:createLinkTo dir='jquery' file='jRating.jquery.css'/>"
	media="screen" />
<title>Shop Homepage - Start Bootstrap Template</title>
<link rel="stylesheet" type="text/css" href="style.css">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<g:createLinkTo dir='css' file='shop-homepage.css'/>"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view tde page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect tde nav links, forms, and otder content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<form style="float: left; margin: 10px">
					<input type="text" id="search"></input>
					<button type="submit" style="border: 0; background: transparent">
						<img src="search.png" width="30" height="30" alt="submit" />
					</button>
				</form>
				<ul class="nav navbar-nav" style="float: right">
					<li><a href="#">My Profile</a></li>
					<li><a href="#">Logout</a></li>
					<li><img style="margin: 10px" src="cart.png" widtd="31"
						height="27"> </img></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p class="lead">Shop Name</p>
				<div class="list-group">
					<a href="#" class="list-group-item">Category 1</a> <a href="#"
						class="list-group-item">Category 2</a> <a href="#"
						class="list-group-item">Category 3</a>
				</div>
			</div>
			<div class="col-md-9">
				<table width="100%">
					<tr style="padding: 20px; margin: 5px;" id="linearBg2">
						<td class="head">Album</td>
						<td class="head">Artist</td>
						<td class="head">Rating</td>
						<td class="head">Song</td>
						<td class="head">Cost</td>
					</tr>

					 <ul>
     					 <g:each in="${data}">
       					 <li>${it.Album}</li><li>${it.Artist}</li><li>${it.Rating}</li><li>${it.Track}</li>
      					</g:each>
    					</ul>
					<tr style="padding: 20px; margin: 5px;">
						<td class="head">Song Title</td>
						<td class="head">Artist</td>
						<td class="head">
							<ul class="rating nostar" id="sec">
								<li class="one"><a href="#" title="1 Star"
									onclick="getPaging('sec','one')">1</a></li>
								<li class="two"><a href="#" title="2 Stars"
									onclick="getPaging('sec','two')">2</a></li>
								<li class="three"><a href="#" title="3 Stars"
									onclick="getPaging('sec','three')">3</a></li>
								<li class="four"><a href="#" title="4 Stars"
									onclick="getPaging('sec','four')">4</a></li>
								<li class="five"><a href="#" title="5 Stars"
									onclick="getPaging('sec','five')">5</a></li>
							</ul>
						</td>
						</tr>

				</table>
				<nav class="pagination">
					<a href="index.html" class="prev">&lt;</a> <a href="index.html">1</a>
					<a href="index.html">2</a> <a href="index.html">3</a> <span>4</span>
					<a href="index.html">5</a>
					<g:link url="item" class="next">&gt;</g:link>
				</nav>
			</div>
		</div>
		<!-- /.container -->
		<div class="container">
			<hr>
		</div>
		<!-- /.container -->
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<script type="text/javascript" src="jquery/jRating.jquery.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		<script src="jquery/jquery.tablesorter.pager.js"></script>
		<script>
         function getPaging(e,f)
         {
         document.getElementById(e).className = "rating "+f+"star";
         }
      </script>
</body>
</html>
