<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		.signup
		{
			width:380px;
			height:630px;
			position:relative;
			left:33%;
			top:50px;
			background-color:gold;
			padding: 16px;
		}
		.avatar
		{
			width: 100px;
			height:95px;
			position: absolute;
			left:37%;
			top:-50px;
			border-radius: 50%;
		}
		h1{
    margin: 0;
    padding: 0  10px;
    text-align: center;
    font-size: 20px;
}
h4{
    margin:0;
    padding: 0 0 20px;
    text-align:center;
    font-size: 13px
}
.signup p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.signup input{
    width: 100%;
    margin-bottom: 20px;
}
.signup input[type="text"], input[type="password"],input[type="Email"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 20px;
color: #000;
    font-size: 16px;
}
.signup input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    /*background: #1c8adb;*/
    background: #000000;
    color: #fff;
    outline: none;
    font-size: 18px;
    border-radius: 30px;
}
.signup input[type="date"]
{
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  height: 20px;  
  font-size: 16px;
}

.signup select
{
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  height: 20px;
  font-size: 16px;  

}
.signup a{
    text-decoration: none;
    font-size: 14px;
    color: blue;
}

.signup a:link
{
     /*color: #1c8adb;*/
     color:blue;
}
p.gender{
padding-bottom:20px;
}

	</style>
	<script>
            function validate()
            {
            	alert("hello");
                var username = document.forms["myForm"]["username1"].value;
                var phonenumber = document.forms["myForm"]["phonenumber1"].value;
                var email = document.forms["myForm"]["email1"].value;
                var password = document.forms["myForm"]["password1"].value;
                var confirmpassword = document.forms["myForm"]["confirmpassword"].value;
                 

                var username1= new RegExp("[A-Za-z]{5,}");
                var phonenumber1= new RegExp("[789][0-9]{9}");
                var email1=new RegExp("^[A-Za-z0-9+_.-]+@(.+)$");
                var password1=new RegExp("[A-Za-z0-9]{6,}");

               
                if (!username1.test(username))
                {
                    alert("Please enter valid Username");
                    return false;
                }
                if (!phonenumber1.test(phonenumber))
                {
                    alert("Please enter valid Phonenumber");
                    return false;
                }
                if (!email1.test(email))
                {
                    alert("Please enter valid Emailid");
                    return false;
                }
                if (!password1.test(password))
                {
                    alert("Please enter valid Password");
                    return false;
                }
                if (confirmpassword !== password)
                {
                    alert("Password mismatch");
                    return false;
                }

            }
            
        </script>
</head>
<body>
	<div class="container-fluid">
            <div class="row row-col-1">
                <div class="col">
                    <div class="signup">
                        <img src="images/graduate.png" class="avatar"/><br><br>
                        <h1>SIGN UP</h1><br><br>
                        <form  name="myForm" onsubmit="return validate()" action="registered.jsp">
                              <p>Username:</p> <input type="text" name="username1" placeholder="Username" title="Must have alphabet characters and 5 or more characters only" required/>
                            <p>DOB:</p> <input type="date" name="date1" placeholder="dd\mm\yyyy" required/>
                            <p class="gender"><label for="Gender">Gender:</label>
                                <select id="Gender" name="Gender1">
                                    <option value="female">Female</option>
                                    <option value="male">Male</option>
                                    <option value="others">Others</option>
                                </select></p>
                            <p>Address:</p><input type="text" name="address1" placeholder="Address"  required/>
                            <p>Phone Number: </p><input type="text" name="phonenumber1" placeholder="Phonenumber"  required/>
                            <p>E-Mail id:</p> <input type="Email" name="email1" size="85" placeholder="E-Mail id" required/>
                            <p>Password:</p> <input type="password" name="password1" placeholder="password" title="Must have alphabets and number , and at least 6 or more characters"  required/>
                            <p>Confirm Password:</p> <input type="password" name="confirmpassword" placeholder="Re-enter password"  required/>
                            <input type="submit"   value="Sign Up"/>
                            <h4>already existing ?<a href="login.html">Login</a></h4>
                        </form>
                    </div>
                </div>
            </div>
        </div>
	
	</body>
</html>

