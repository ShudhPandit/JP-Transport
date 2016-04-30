<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JP TRANSPORT</title>
    <link rel="stylesheet" href="resources/assets/css/libraries/css/bootstrap.min.css" />
    <link rel="stylesheet" href="resources/assets/css/libraries/css/font-awesome.min.css" />
    <link rel="stylesheet" href="resources/assets/css/jquery.sidr.dark.css">
    <link rel="stylesheet" href="resources/assets/css/style.css" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png">
    
                  <script src="resources/assets/js/jquery.min.js"></script>
              <script src="resources/assets/js/bootstrap.min.js"></script>
              <script src="resources/assets/js/custom.js"></script>

</head>
	
<body>
<header>
  <nav class="navbar navbar-fixed-top navHeader">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.jsp">
          <!-- <img src="assets/img/icons/logo.png" alt="FoodChef"> -->
          <h3>JP Transport</h3>
        </a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav pull-right links">
                      <li><a href="index.jsp">HOME</a></li>
              <li><a href="ritruck.jsp">RECENTLY INSTALLED TRUCKS</a></li>
              <li><a href="services.jsp">SERVICES</a></li>
         
              
              <% if(session.getAttribute("admin")!=null){
 out.print("<li><a href='contacted.jsp'>CONTACT US</a></li>");
}
else{
out.print("<li><a href='contactus.jsp'>CONTACT US</a></li>");

}
            %>
            <%
            if(session.getAttribute("islogin")!=null){
            out.print("<li><a href='logout.jsp'>Logout</a></li>");
            }
            else{
            out.print("<li><a href='#signer' data-toggle='modal' class='In'>Login</a></li>");
            }
             %>
        </ul>
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
</header>


<% 
                  if(request.getAttribute("notlogin_msg")!=null){
                  out.print(request.getAttribute("notlogin_msg"));
                  }
                  
                  %>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>

        <!-- Login Modal -->
        <div class="modal fade" id="signer">
          <div class="modal-dialog">
            <div class="modal-content" id="modalTheme">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <p class="modal-title">
                  <span class="In pull-left"><i class="fa fa-sign-in"></i>Sign In</span>
                  <span class="New pull-right"><i class="fa fa-user-plus"></i>New User?</span>
                </p>
              </div>
              <div class="modal-body">
                <form action="aloginprocess.jsp" method="POST" role="form" class="formTheme" id="signin">
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-user"></i> </div>
                      <input type="text" class="form-control" name="username" id="exampleInputAmount" placeholder="Username" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-key"></i> </div>
                      <input type="password" class="form-control" name="userpass" id="exampleInputAmount" placeholder="password" required>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Sign In</button>
                  <a href="#forgot" data-toggle="modal" class="pull-right">Forgot password?</a>
                </form>
                <form action="" method="POST" role="form" class="formTheme" id="signup">
                  <div class="col-md-6 form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-user"></i> </div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="First name" required>
                    </div>
                  </div>
                  <div class="col-md-6 form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-user"></i> </div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Last name" required>
                    </div>
                  </div>

                  <div class="col-md-6 form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-compass"></i> </div>
                      <select name="branch" class="form-control">
                          <option>Select a Branch</option>
                          <option>Ghaziabad</option>
                          <option>Kanpur</option>
                          <option>Delhi</option>
                          <option>Agra</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-6 form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-compass"></i> </div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Zipcode" required>
                    </div>
                  </div>
                  <div class="col-md-6 form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-phone"></i> </div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Contact number" required>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <hr>
                    <div class="col-md-6 form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-envelope"></i> </div>
                        <input type="email" class="form-control" id="exampleInputAmount" placeholder="Email address" required>
                      </div>
                    </div>
                    <div class="col-md-6 form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-key"></i> </div>
                        <input type="password" class="form-control" id="exampleInputAmount" placeholder="Password" required>
                      </div>
                    </div>
                    <div class="checkbox">
                      <div class="form-group">
                        <input id="check1" type="checkbox" name="check" value="check1" required>
                        <label for="check1">I accept <a href="#">Terms &amp; Conditions</a>.</label>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Sign Up</button>
                  </div>
                  
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- Login Modal ends -->
        <!-- Forgot passwrod modal -->
        <div class="modal fade" id="forgot">
          <div class="modal-dialog">
            <div class="modal-content text-center" id="modalTheme">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <p class="modal-title">
                  <h3>Reset Password</h3>
                </p>
              </div>
              <div class="modal-body">
                <form action="" method="POST" role="form" class="formTheme" id="signin">
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-envelope"></i> </div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Email Address" required>
                    </div>
                  </div>
                  <a href="TrackOrder.html" type="submit" class="btn btn-primary2"><i class="fa fa-arrow-right"></i>Reset Password</a>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- Forgot passwrod modal ends -->