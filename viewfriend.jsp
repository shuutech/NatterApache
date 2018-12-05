<html>
<head>
 <title>${name} home</title>
<link rel="stylesheet" type="text/css" href="../styles.css" />
<script>
function viewFriends() {
    var request = new XMLHttpRequest();
    var url = 'viewfriend';
   // var params = 'searchbook='+document.getElementById("searchbook").value;

    request.open('POST', url, true);

    //Send the proper header information along with the request
    request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    request.onreadystatechange = function() {//Call a function when the state changes.
        if(request.readyState == 4 && request.status == 200) {
        var myObjs = JSON.parse(request.responseText);
		alert(myObjs);
        var outputString = "";
        if(myObjs.length === 0) {
            outputString = "No books found matching the name mentioned";
        } else {
                    outputString = "The following books were found<br>";

                for(i=0;i<myObjs.length;i++) {

                    outputString+="<br>"+myObjs[i].friendUserName+"<br>";
                    outputString+="<br>"+myObjs[i].friendFirstName+"<br>";
                    outputString+="<br>"+myObjs[i].friendLastName+"<br>";
                    outputString+="<br>"+myObjs[i].friendEmail+"<br>";
                }
        }
        document.getElementById('results').innerHTML = outputString;
    }

    }
    request.send(params);
}
</script>
</head>
<body>
<h1>
View Friends of ${name}

</h1>
	<div class="topnav">
  <a class="active" href="index.html">Home</a>
  <a href="login.html">Login</a>
  <a href="create.html">Create User</a>
  <a href="./jsp/viewFriends.jsp">View Friends</a>
  <a href="addfriend.html">Add Friend</a>
   <a href="viewactivity.html">View Activity</a>
   <a href="addactivity.html">Start Activity</a>
</div>

<div id="results"></div>

</body>
</html>

