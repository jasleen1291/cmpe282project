<link class="cssdeck" rel="stylesheet"
	href="http:/cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap.min.css"> 
<link rel="stylesheet"
		href="http:/cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css"
		class="cssdeck"> 
	<div class="" id="loginModal">
		<div class="modal-header">

			<h3>Have an Account?</h3>
		</div>
		<div class="modal-body">
			<div class="well">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
					<li><a href="#create" data-toggle="tab">Create Account</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane active in" id="login">
						<g:form url="[controller:'User',action:'authenticate']" class="form-horizontal" action='' method="POST">
							<fieldset>
								<div id="legend">
									<legend class="">Login</legend>
								</div>
								<div class="control-group">
									<!-- Username -->
									<label class="control-label" for="username">Username</label>
									<div class="controls">
										
											
									<g:textField type="text" id="username" name="username" class="input-xlarge"/>
									</div>
								</div>

								<div class="control-group">
									<!-- Password-->
									<label class="control-label" for="password">Password</label>
									<div class="controls">
										
										<g:passwordField  name="password" id="password" name="password"
											placeholder="" class="input-xlarge"/>
									</div>
								</div>


								<div class="control-group">
									<!-- Button -->
									<div class="controls">
										<g:submitButton value="Login" name="Login" class="btn btn-success"/>
									</div>
								</div>
							</fieldset>
						</g:form>
					</div>
					<div class="tab-pane fade" id="create">
						<g:form url="[controller:'User',action:'register']" class="form-horizontal" action='' method="POST" id="tab">
							<label>Username</label> 
								<g:textField type="text" id="username" name="username" class="input-xlarge"/>
								 <label>First Name</label>
								<g:textField type="text" id="fname" name="fname" class="input-xlarge"/>
								 <label>Last Name</label> 								
								<g:textField type="text" id="lname" name="lname" class="input-xlarge"/>
 						<label>Email</label>
						<g:textField type="text" id="email" name="email" class="input-xlarge"/>
 							<label>Address</label>
						<g:textField type="text" id="address" name="address" class="input-xlarge"/>
				<g:passwordField  name="password" id="password" name="password"
											placeholder="" class="input-xlarge"/>
							<div>
							<g:submitButton value="create" name="Create Account" class="btn btn-primary"/>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>

		<script class="cssdeck"
			src="http:/cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script class="cssdeck"
			src="http:/cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>