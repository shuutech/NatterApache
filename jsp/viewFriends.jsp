<html>
<head>
 <title>View Friends</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./styles.css" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script defer src="script.js"></script>
<script>
function viewFriends() {
    var params =  ${friends};
	var outputString = "";
	var name = "";
        if(params.length === 0) {
            outputString = "You have no friend requests";
        } else {
			
					outputString+='<div class="table-responsive"><table class="table"><thead><tr>'
					outputString+="<th>"+"Friends username"+"</th>";
					outputString+="<th>"+"Friend Name"+"</th>";
					outputString+="<th>"+"Friend Last Name"+"</th>";
					outputString+="<th>"+"Email"+"</th>";
					outputString+="<th>"+"Friend status"+"</th>";
					outputString+="</tr></thead><tbody>";
			for(i=0;i<params.length;i++) {
					if (params[i].status==("Friend Added")){
                    outputString+="<tr><td>"+params[i].friendUserName+"</td>";
                    outputString+="<td>"+params[i].friendFirstName+"</td>";
                    outputString+="<td>"+params[i].friendLastName+"</td>";
                    outputString+="<td>"+params[i].friendEmail+"</td>";
					outputString+="<td>"+'<button class="btn-success" onclick="addActivity()"> Friend Added</button>'+"</td></tr>";}

					name =  "Friends of " + params[i].currentUserName;
                }
				for(i=0;i<params.length;i++) {
					if (params[i].status==("Friend Requested")){
                    outputString+="<tr><td>"+params[i].friendUserName+"</td>";
                    outputString+="<td>"+params[i].friendFirstName+"</td>";
                    outputString+="<td>"+params[i].friendLastName+"</td>";
                    outputString+="<td>"+params[i].friendEmail+"</td>";
					outputString+="<td>"+'<button class="btn-info" disabled>Waiting..........</button>'+"</td></tr>";}
                }
				outputString+='</tbody></table></div>'
        }
        document.getElementById('container').innerHTML = outputString;
		document.getElementById('heading').innerHTML = name;
		
}
</script>
</head>
<body onload="viewFriends()">
	<div class="topnav">
  <a class="active" href="index.html">Home</a>
  <a href="login.html">Login</a>
  <a href="create.html">Create User</a>
   <a href="viewfriend.html">View Friends</a>
  <a href="addfriend.html">Add Friend</a>
   <a href="viewactivity.html">View Activity</a>
   <a href="addactivity.html">Start Activity</a>
</div>
<div class="jumbotron text-center">
  <h1 id="heading">Friends of name</h1>
</div>
<div id="container" class="container">

</div>

<script>
function addActivity() {
  alert("hello");
}


</script>

</body>
</html>

