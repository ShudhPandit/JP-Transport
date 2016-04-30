<jsp:include page="header.jsp"></jsp:include>
<body>
<section class="banner">
  <div class="container-fluid">
   <div class="row">
      <div class="col-md-12 col-sm-12 noPadding">
          <div id="bannerSlides" class="carousel slide" data-ride="carousel">
              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="resources/assets/img/banner.jpg" alt="...">
                  <div class="carousel-caption">
                    <h1>WELCOME TO JP TRANSPORT</h1>
                    <p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>
                  </div>
                </div>
                <div class="item">
                  <img src="resources/assets/img/banner.jpg" alt="...">
                  <div class="carousel-caption">
                    <h1>WELCOME TO JP TRANSPORT</h1>
                    <p>You can find how many vehicle is on road through 
                    my company to your city or closest to it.</p>
                  </div>
                </div>
              </div>
            </div>
      </div>
   </div>  
</div>
</section>

<section class="managerLogin">
   <div class="container">
     <div class="row">
        <div class="col-md-6 col-sm-6 managerLoginSection">
          <h3 class="subheading">Manager Login Form</h3>
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
                  <form action="loginprocess.jsp" method="get" accept-charset="utf-8">
                    <div class="col-md-5 col-sm-5 form-group">
                        <select name="branch" class="form-control">
                         <option >Select a Branch</option>
                          <option value="kanpur">Kanpur</option>
                          <option value="Agra">Agra</option>
                          <option value="Delhi">Delhi</option>
                          <option value="Ghaziabad">Ghaziabad</option>
                          </select>
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                      <label for="">Username:</label>
                      <input type="text" name="username" placeholder="username" class="form-control" />
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                      <label for="">Password:</label>
                      <input type="password" name="userpass" placeholder="password" class="form-control" />
                    </div>
                    <div class="col-md-12 col-sm-12 form-group">
                      <button type="submit" class="btn btn-sm btn-success">Login</button>
                    </div>
                  </form>
        </div>
        <div class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1">
          <h3 class="subheading">Why JP Tranport?</h3>
          <ul class="list-unstyled featuresList">
            <li>
              <i class="fa fa-user"></i>
              <p>lorem ispum soye sum</p>
            </li>
            <li>
              <i class="fa fa-user"></i>
              <p>lorem ispum soye sum</p>
            </li>
            <li>
              <i class="fa fa-user"></i>
              <p>lorem ispum soye sum</p>
            </li>
          </ul>
        </div>
     </div>
   </div>
</section>           

<jsp:include page="footer.html"></jsp:include>


