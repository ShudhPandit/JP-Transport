<jsp:include page="header.jsp"></jsp:include>


<head>
<script>
var request;
function sendInfo()
{

var from=document.myform.from.value;
var to=document.myform.to.value;

var url="findservices.jsp?from="+from+"&to="+to;
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
</script>
</head>

<div id="gbox-bg">
              <div id="gbox-grd">
  <h1><font size="+2">WELCOME TO JP TRANSPORT</font></h1>
        <form name="myform" >
            <br><br><br>
<table>
	<tr><td>Route-From:<select name="from" id="select" onchange="sendInfo()">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td><td>To:<select name="to" id="select" onchange="sendInfo()">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
        
	
	<tr><td><br></td></tr>
</table>
<div id="right"></div>
</form>
<br/>

            <jsp:include page="footer.html"></jsp:include>