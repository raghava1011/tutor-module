

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
/*    body{
    margin: 0;
    padding: 0;
   background-color:white;
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}*/
  body{
    background-image: url("images/bg.jpg");
   background-repeat: no-repeat;
    background-size: cover;
    font-family: sans-serif;
}
.login{
    width: 380px;
    height: 450px;
    /*background: rgba(0, 0, 0, 0.5);*/
     background: #fc8019;
    color: #000000;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.avatar{
    width: 100px;
    height: 95px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
h4{
    margin:0;
    padding: 0 0 20px;
    text-align:center;
    font-size: 13px
}
.login p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login input{
    width: 100%;
    margin-bottom: 20px;
}
.login input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 20px;
    color: #000;
    font-size: 16px;
}
.login input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #000000;
    color: #fff;
    outline: none;
    font-size: 18px;
    border-radius: 30px;
}
.login select
{
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  height: 20px;
  font-size: 16px;  

}
.login a{
    text-decoration: none;
    font-size: 14px;
}

.login a:link
{
     color: #1c8adb;
}

</style>
    </head>
    <body>
        <div class="login">
            <img src="images/graduate.png" class="avatar"/>
        <h1> LOGIN </h1>
<form name = "myForm" action="valid.jsp" method="post">
<p>E-Mail id:</p> <input type="text" name="email1" size="35" placeholder="E-Mail id"  required/>
<p>Password:</p> <input type="password" name="password1" placeholder="password"  required/>
<br><br>
<input type="submit" value="Login"/>
<h4>forgot password ?</h4>
<!--<h4>new user <a href="signup.jsp">Sign up</a></h4>-->
</form>
        </div>
    </body>
</html>
