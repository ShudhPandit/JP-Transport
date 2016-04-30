        <jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>        

<script>
var request;

function sendInfo()
{
var branch=document.myform.select.value;
var v=document.myform.findName.value;
var url="afindname.jsp?val="+v+"&branch="+branch;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('right').innerHTML=val;
}
}


/*function viewAll(name)
{
var v=name;
var url="aviewall.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}
function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}*/
</script>

<section class="searchBlock">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
                        <%
                        String islogin=(String)session.getAttribute("islogin");
                        if(islogin==null){
                        request.setAttribute("notlogin_msg","Sorry,Please Login first");
                        %>
                        <jsp:forward page="test.jsp"></jsp:forward>
                        <%
                        }
                        %>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  <% 
                  if(request.getAttribute("msg")!=null){
                  out.print(request.getAttribute("msg"));
                  }
                  %>
                  
                  <form name="myform">
                    <div class="col-md-6 col-sm-6 form-group">
                      <label for="">Branch:</label>
                      <select name="branch" id="select" class="form-control">
                        <option>Select a Branch</option>
                        <option>Ghaziabad</option>
                        <option>Kanpur</option>
                        <option>Delhi</option>
                        <option>Agra</option>
                      </select>
                    </div>
                    <div class="col-md-6 col-sm-6 form-group">
                      <label for="">Find Manager:-</label>
                      <input type="text" name="findName" onkeyup="sendInfo()" class="form-control">
                    </div>
                    
                     <div class="col-md-12 col-sm-12">
                      <div id="right" class="">
                      </div>                      
                    </div>
                </form>  
			
				<div role="tabpanel" class="tabpanel">
				    <!-- Nav tabs -->
				    <ul class="nav nav-tabs" role="tablist">
				        <li role="presentation" class="">
				            <a href="#CreateManager" aria-controls="CreateManager" role="tab" data-toggle="tab"><i class="fa fa-list"></i> Create New Manager</a>
				        </li>
				        <li role="presentation">
				            <a href="#Tinstall" aria-controls="Tinstall" role="tab" data-toggle="tab"><i class="fa fa-book"></i> Install New Truck </a>
				        </li>
				        <li role="presentation" class="active">
				            <a href="#Tsearch" aria-controls="Tsearch" role="tab" data-toggle="tab"><i class="fa fa-star-o"></i> Search Truck</a>
				        </li>				        
				    </ul>
				
				    <!-- Tab panes -->
				    <div class="tab-content">
				       <div role="tabpanel" class="tab-pane active" id="CreateManager">
				         <% 
			              if(request.getAttribute("Error")!=null){
			              out.print(request.getAttribute("Error"));
			              }
			              %>
			              <div class="col-md-8 col-sm-12">
			              	 <form name="myform" action="asave.jsp">
			              	 <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Branch:</label>
				                        <select name="branch" class="form-control">
											<option>Select a Branch</option>
											<option>Ghaziabad</option>
											<option>Kanpur</option>
											<option>Delhi</option>
											<option>Agra</option>
										</select>
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Username:</label>
			                        <input type="text" name="username" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Password:</label>
			                        <input type="password" name="userpass" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Date of Joining:</label>
			                        <input type="text" name="doj" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Date of Birth:</label>
			                        <input type="text" name="dob" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">salary</label>
			                        <input type="text" name="salary" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <button type="" class="btn btn-sm btn-success">Create Manager account</button>
			                    </div>
			              	 </form>
			              </div>
				        </div>
<!--				         CreateManager ends -->

				         <div role="tabpanel" class="tab-pane" id="Tinstall">
			              <div class="col-md-8 col-sm-12">
			              	 <form name="myform" action="tsave.jsp">
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Truck Model</label>
			                        <input type="text" name="model" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Truck No.</label>
			                        <input type="text" name="tno" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label>Insurance</label>
					              	 <div class="radio">
					              	 	<label for="InsYes">Yes</label>
						              	<input type="radio" name="insurance" id="InsYes" checked="true" /> 	

						              	<label for="InsNo">No</label>
						              	<input type="radio" name="insurance" id="InsNo" />
					              	 </div>
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">If Yes then Insurance Company Name</label>
			                        <input type="text" name="cname" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Owner</label>
			                        <input type="text" name="owner" class="form-control" />
			                    </div>
			                    
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Mobile</label>
			                        <input type="text" name="mobile" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <label for="">Date of Joining</label>
			                        <input type="text" name="dat" class="form-control" />
			                    </div>
			                    <div class="form-group col-md-6 col-sm-6">
					              	 <label for="">Route-From</label>
				                        <select name="from" id="select">
											<option>Select a Branch</option>
											<option>Ghaziabad</option>
											<option>Kanpur</option>
											<option>Delhi</option>
											<option>Agra</option>
										</select>
			                    </div>
			                    <div class="form-group col-md-6 col-sm-6">
					              	 <label for="">To</label>
			                        <select name="to" id="select">
										<option>Select a Branch</option>
										<option>Ghaziabad</option>
										<option>Kanpur</option>
										<option>Delhi</option>
										<option>Agra</option>
									</select>
			                    </div>
			                    <div class="form-group col-md-12 col-sm-12">
					              	 <button type="" class="btn btn-sm btn-success">Install Truck</button>
			                    </div>
			              	 </form>
			              </div>
				        </div>  <!--info tab ends -->
				        <div role="tabpanel" class="tab-pane active" id="Tsearch">
				        	<script>
							var request;
							function sendInfo()
							{

							var v=document.myform.findName.value;
							var url="tfindname.jsp?val="+v;
							if(window.XMLHttpRequest){
							request=new XMLHttpRequest();
							}
							else if(window.ActiveXObject){
							request=new ActiveXObject("Microsoft.XMLHTTP");
							}
							try
							{
							request.onreadystatechange=getInfo;
							request.open("GET",url,true);
							request.send();
							}
							catch(e){alert("Unable to connect to server");}
							}

							function getInfo(){
							if(request.readyState==4){
							var val=request.responseText;
							document.getElementById('myTable').innerHTML=val;
							}
							}


							</script>
							<form name="myform">
								<div class="col-md-12 col-sm-12 form-group">
									<label for="">Find Truck</label>
									<input type="text" align="right" name="findName" onkeyup="sendInfo()" placeholder="Enter Modal"/>
								</div>
								<%
								String n=request.getParameter("val");
								System.out.print(n);
								if(n.length()>0){
								try{
									Class.forName("com.mysql.jdbc.Driver");

									Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JP","sudhir", "sarthak");

								PreparedStatement ps=con.prepareStatement("select tmodel,tno,malik,tfrom,tto from tinstall where tmodel ='"+n+"' ");
								//ps.setString(1,n);
								out.print("<br>");
								ResultSet rs=ps.executeQuery();
								while(rs.next()){
								%>
								<table class="table table-striped" id='myTable'>
									<thead>
										<tr>
											<th>Model</th>
											<th>Truck No.</th>
											<th>Owner</th>
											<th>Route</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><% out.print(rs.getString(1)); %></td>
											<td><% out.print(rs.getString(2)); %></td>
											<td><% out.print(rs.getString(4)); %></td>
											<td><% out.print(rs.getString(6) +"-"+rs.getString(7)+"-"+rs.getString(6)); %></td>
										</tr>
									</tbody>
								</table>
			                  <%
			                  }

								con.close();
								}catch(Exception e){e.printStackTrace();}
								}//end of if
								%>
		                    </form>
				        </div> <!-- Tsearch tabpanel ends -->
				    </div> <!-- tab-content ends -->
				</div> <!-- tab-panel ends -->
			</div> <!-- col-md-12 ends -->

<div id='bottom'></div>


<div id="right1" align="right">
</div>
<!-- 
<a href="create.jsp"><font style="color: navy;"><B>Create New Manager</B></font></a><BR/>
<a href="install.jsp"><font style="color: navy;"><B>Install New Truck</B></font></a>   <br/>               
<a href="findtruck.jsp"><font style="color: navy;"><B>Search Truck</B></font></a> -->                  
                        
      </div>
    </div>
  </div>
</section>

            <jsp:include page="footer.html"></jsp:include>