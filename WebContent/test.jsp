        <jsp:include page="header.jsp"></jsp:include>
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
                  
        <section class="adminLogin">
          <div class="container">
            <div class="row">
              <div class="col-md-12 col-sm-12">
              <form action="aloginprocess.jsp" method="get" accept-charset="utf-8">
                     Username:<input type="text" name="username"/>
                    Password:<input type="password" name="userpass"/>
                    <input type="submit" value="Login">
                  </form>
              </div>
            </div>
          </div>
        </section>

            <jsp:include page="footer.html"></jsp:include>