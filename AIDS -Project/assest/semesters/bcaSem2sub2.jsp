<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <!--====== USEFULL META ======-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="App, Landing, Business, Onepage, Html, Business" />

    <!--====== TITLE TAG ======-->
    <title>Online test </title>

    <!--====== FAVICON ICON =======-->
    <link rel="shortcut icon" type="image/ico" href="assest/img/favicon.ico" />

    <!--====== STYLESHEETS ======-->
    <link href="assest/css/plugins.css" rel="stylesheet">
    <link href="assest/css/theme.css" rel="stylesheet">
    <link href="assest/css/icons.css" rel="stylesheet">

    <!--====== MAIN STYLESHEETS ======-->
    <link href="style.css" rel="stylesheet">
    <link href="assest/css/responsive.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target=".mainmenu-area" data-offset="90">
<%
   if(session.getAttribute("uname")==null){
	   response.sendRedirect("login.jsp");
   }

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    
%>

             <header class="top-area" id="home">
        <div class="header-top-area" id="scroolup">
            <!--MAINMENU AREA-->
            <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar"  style="background-color:black;">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                        	<ul id="nav" class="nav navbar-nav pull-left">
                                <li class="active"><a href="#home" style="font-weight: bold;font-style: oblique;font-family:'Sofia'; font-size: 30px;"><img src="assest/img/favicon.ico"></a></li>
                            </ul>
                            <ul id="nav" class="nav navbar-nav pull-right">
                                <li class="active"><a href="#home">Home</a></li>                                
                                <li><a href="#courses">Courses</a></li>                                
                                <li><a href="#blog">Blog</a></li>                                
                                <li><a href="feedback.jsp">Feedback</a></li>
                                <li><a href="logout"><button class="btn btn-outline-success"type="button" style="background-color:green;">LOG OUT</button></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <!--END MAINMENU AREA END-->
        </div>
        
         <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                            <ul id="nav">
                                <li style="font-size:40px;position:fixed;right:30%;top:17%; ">JAVA Programming</li>                                    
                                <li style="color:#191C16;position:fixed;left:75%;top:17%; font-size:20px;"  >
                                <span id="iTimeShow">Time Remaining: </span><span id='timer' style="font-size:25px;"></span>
                                </li>  
                               
                         <script>
                                var myTime=setInterval(function(){myTimer()},1000);
                                var time="00:00:200";
                                function myTimer(){
                                	var  hr=0;
                                	var min=0;
                                	var sec=0;
                                	
                                	var st=time.split(":");
                                	
                                	hr=parseInt(st[0]);
                                	min=parseInt(st[1]);
                                	sec=parseInt(st[2]);
                                	
                                	if(sec==0){
                                		if(min>0){
                                			min--;
                                			sec=59;
                                		}
                                		else if(hr>0){
                                			hr--;
                                			min=59;
                                			sec=59;
                                		}
                                		else{
                                			 document.getElementById("myform").submit();
                                		}
                                	}
                                	else{
                                		sec--;
                                	}
                                	
                                	if(hr<10){
                                		hr="0"+hr;
                                	}
                                	if(min<10){
                                		min="0"+min;
                                	}
                                	if(sec<10){
                                		sec="0"+sec;
                                	}
                                	
                                	time=hr+":"+min+":"+sec;
                                	document.getElementById("timer").innerHTML=time;  
                                	}  
                                
                           </script>  
                            </ul>      
                        </div>
                    </div>
                </nav>
            </div>
            
        
           </header>
    
            <!--MAINMENU AREA
            <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                        	<ul id="nav" class="nav navbar-nav pull-left">
                                <li class="active"><a style="font-weight: bold;font-style: oblique;font-family:'Sofia'; font-size: 30px;"><img src="assest/img/favicon.ico"></a></li>
                            </ul>
                            <ul id="nav" class="nav navbar-nav pull-right">
                                <li class="active"><a href="home.jsp">Home</a></li>                                
                                <li><a href="#courses">Courses</a></li>                                
                                <li><a href="#blog">Blog</a></li>                                
                                <li><a href="feedback.jsp">Feedback</a></li>
                                <li><a href="logout"><button class="btn btn-outline-success"type="button" style="background-color:green;">LOG OUT</button></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            
            <div class="mainmenu-area" id="mainmenu-area">
                <div class="mainmenu-area-bg"></div>
                <nav class="navbar">
                    <div class="container">

                        <div id="main-nav" class="stellarnav">
                            <ul id="nav">
                                <li style="font-size:40px;position:fixed;right:30%;top:17%; ">JAVA Programming</li>                                    
                                <li style="color:#191C16;position:fixed;left:75%;top:17%; font-size:20px;"  >
                                <span id="iTimeShow">Time Remaining: </span><span id='timer' style="font-size:25px;"></span>
                                </li>  
                               
                         <script>
                                var myTime=setInterval(function(){myTimer()},1000);
                                var time="00:00:200";
                                function myTimer(){
                                	var  hr=0;
                                	var min=0;
                                	var sec=0;
                                	
                                	var st=time.split(":");
                                	
                                	hr=parseInt(st[0]);
                                	min=parseInt(st[1]);
                                	sec=parseInt(st[2]);
                                	
                                	if(sec==0){
                                		if(min>0){
                                			min--;
                                			sec=59;
                                		}
                                		else if(hr>0){
                                			hr--;
                                			min=59;
                                			sec=59;
                                		}
                                		else{
                                			 document.getElementById("myform").submit();
                                		}
                                	}
                                	else{
                                		sec--;
                                	}
                                	
                                	if(hr<10){
                                		hr="0"+hr;
                                	}
                                	if(min<10){
                                		min="0"+min;
                                	}
                                	if(sec<10){
                                		sec="0"+sec;
                                	}
                                	
                                	time=hr+":"+min+":"+sec;
                                	document.getElementById("timer").innerHTML=time;  
                                	}  
                                
                           </script>  
                            </ul>      
                        </div>
                    </div>
                </nav>
            </div>
            
           --> 
            
<form action="QuizQuestion.jsp" method = "post" id = "myform">
<br><br>
<h4>1)1- Management is a creative and ________ process.     
Answer A</h4>
<input type="radio" name="ans1" value="1"> 1.  Continuous
<br>
<input type="radio" name="ans1" value="2"> 2. Technical
<br>
<input type="radio" name="ans1" value="3"> 3. Democratic
<br>
<input type="radio" name="ans1" value="4"> 4. None of the above
<br><br><br>

<h4>2) 3- Which type of strategies do professional managers help organizations in chalking out?
Answer B</h4>
<input type="radio" name="ans2" value="1">1. Multi-disciplinary
<br>
<input type="radio" name="ans2" value="2">2. Corporate
<br>
<input type="radio" name="ans2" value="3">3. Managerial
<br>
<input type="radio" name="ans2" value="4">4. All of the above
<br><br><br>

<h4>3)  5- Limitation(s) of control is (are)
Answer D</h4>
<br> 
<input type="radio" name="ans3" value="1">1. external factors
<br>
<input type="radio" name="ans3" value="2">2. fixing of responsibility
<br>
<input type="radio" name="ans3" value="3">3. variation and its causes
<br>
<input type="radio" name="ans3" value="4">4. All of the above
<br><br><br>

<h4>4)6- Management is said to be the combination of 
Answer A</h4>
<br>
<input type="radio" name="ans4" value="1">1. arts, science and profession
<br>
<input type="radio" name="ans4" value="2">2. arts, science and engineering
<br>
<input type="radio" name="ans4" value="3">3. arts, commerce and science
<br>
<input type="radio" name="ans4" value="4">4. arts, commerce and principles
<br><br><br> 

<h4>5)_______ is supposed to be immutable, unchanging and eternal.
Answer A   
</h4>
<input type="radio" name="ans5" value="1">1. Policy
<br>
<input type="radio" name="ans5" value="2">2.  Vision
<br> 
<input type="radio" name="ans5" value="3">3. Mission
<br>
<input type="radio" name="ans5" value="4">4. All the above are correct.

<br><br><br>

<h4>6)Costliness of the ________ is the overriding factor determining the extent of decentralization. 
Answer A
</h4>
<input type="radio" name="ans6" value="1">1. Decision
<br>
<input type="radio" name="ans6" value="2">2. Staffing
<br>
<input type="radio" name="ans6" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans6" value="4">4. None of the above
<br><br><br>

<h4>7)The heart of administration is the ___ function.
Answer A
</h4>
<input type="radio" name="ans7" value="1">1. Directing
<br>
<input type="radio" name="ans7" value="2">2. Organizing
<br>
<input type="radio" name="ans7" value="3">3. Controlling
<br>
<input type="radio" name="ans7" value="4">4. Cooperating
<br><br><br>

<h4>8)The different A’s of the service sector are
Answer B</h4>
<input type="radio" name="ans8" value="1">1. acceptability , awareness , adaptability
<br>
<input type="radio" name="ans8" value="2">2. acceptability , awareness , availability
<br>
<input type="radio" name="ans8" value="3">3. adaptability , awareness , availability
<br>
<input type="radio" name="ans8" value="4">4. acceptability , adaptability , availability 
<br><br><br>

<h4>9)What articulates the long-term goals of an enterprise?
Answer B
</h4>
<input type="radio" name="ans9" value="1">1. Policies
<br>
<input type="radio" name="ans9" value="2">2. Vision statement
<br>
<input type="radio" name="ans9" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans9" value="4">4. None of the above
<br><br><br>

<h4>10)15- Direction is a ________ function performed by all the managers at all levels of the organization.
Answer A
</h4>
<input type="radio" name="ans10" value="1">1.  Managerial
<br>
<input type="radio" name="ans10" value="2">2. Organizational
<br>
<input type="radio" name="ans10" value="3">3. Both (A) and (B)
<br>
<input type="radio" name="ans10" value="4">4. None of the these
<br><br><br>

<input type="submit">
 </form>           
        
<script type="text/javascript">
      window.onunload =  function(){} 
</script>
</body>
</html>