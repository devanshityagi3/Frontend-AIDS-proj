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
<h4>1)What is the 16-bit compiler allowable range for integer constants?
Answer D</h4>
<input type="radio" name="ans1" value="1"> 1. -3.4e38 to 3.4e38
<br>
<input type="radio" name="ans1" value="2"> 2. -32767 to 32768
<br>
<input type="radio" name="ans1" value="3"> 3. -32668 to 32667
<br>
<input type="radio" name="ans1" value="4"> 4. -32768 to 32767
<br><br><br>

<h4>2) Study the following program:
     main()  
    {printf("javatpoint");  
    main();} 
What will be the output of this program?
Answer B</h4>
<input type="radio" name="ans2" value="1">1. Wrong statement
<br>
<input type="radio" name="ans2" value="2">2. It will keep on printing javatpoint
<br>
<input type="radio" name="ans2" value="3">3. It will print javatpoint once
<br>
<input type="radio" name="ans2" value="4">4. None of the these
<br><br><br>

<h4>3)  What is required in each C program?  
Answer A</h4>
<br> 
<input type="radio" name="ans3" value="1">1. The program must have at least one function.
<br>
<input type="radio" name="ans3" value="2">2. The program does not require any function.
<br>
<input type="radio" name="ans3" value="3">3. Input data
<br>
<input type="radio" name="ans3" value="4">4. Output data
<br><br><br>

<h4>4)What will this program print?

    main()  
    {  
      int i = 2;  
      {  
        int i = 4, j = 5;  
         printf("%d %d", i, j);  
      }    
      printf("%d %d", i, j);  
    }  
Answer A</h4>
<br>
<input type="radio" name="ans4" value="1">1. 4525
<br>
<input type="radio" name="ans4" value="2">2. 2525
<br>
<input type="radio" name="ans4" value="3">3. 4545
<br>
<input type="radio" name="ans4" value="4">4. None of these
<br><br><br> 

<h4>5)Which of the following comment is correct when a macro definition includes arguments?
Answer A   
</h4>
<input type="radio" name="ans5" value="1">1. The opening parenthesis should immediately follow the macro name.
<br>
<input type="radio" name="ans5" value="2">2. There should be at least one blank between the macro name and the opening parenthesis.
<br> 
<input type="radio" name="ans5" value="3">3. There should be only one blank between the macro name and the opening parenthesis.
<br>
<input type="radio" name="ans5" value="4">4. All the above comments are correct.

<br><br><br>

<h4>6)What is a lint?    
Answer C 
</h4>
<input type="radio" name="ans6" value="1">1. C compiler
<br>
<input type="radio" name="ans6" value="2">2. Interactive debugger
<br>
<input type="radio" name="ans6" value="3">3. Analyzing tool
<br>
<input type="radio" name="ans6" value="4">4. C interpreter
<br><br><br>

<h4>7) Study the following program:

    main()  
    {  
       char x [10], *ptr = x;  
      scanf ("%s", x);  
      change(&x[4]);  
    }  
     change(char a[])  
     {  
       puts(a);  
     }  
     If abcdefg is the input, the output will be
Answer C
</h4>
<input type="radio" name="ans7" value="1">1. abcd
<br>
<input type="radio" name="ans7" value="2">2. abc
<br>
<input type="radio" name="ans7" value="3">3. efg
<br>
<input type="radio" name="ans7" value="4">4. Garbage
<br><br><br>

<h4>8)
Answer C</h4>
<input type="radio" name="ans8" value="1">1. 
<br>
<input type="radio" name="ans8" value="2">2. 
<br>
<input type="radio" name="ans8" value="3">3. 
<br>
<input type="radio" name="ans8" value="4">4.  
<br><br><br>

<h4>9)Study the following program:

    main()  
    {  
      int a = 1, b = 2, c = 3:  
      printf("%d", a + = (a + = 3, 5, a))  
    }  
    What will be the output of this program?
Answer D
</h4>
<input type="radio" name="ans9" value="1">1. 6
<br>
<input type="radio" name="ans9" value="2">2. 9
<br>
<input type="radio" name="ans9" value="3">3. 12
<br>
<input type="radio" name="ans9" value="4">4. 8
<br><br><br>

<h4>10)What does this declaration mean?

    int x : 4;  
Answer A
</h4>
<input type="radio" name="ans10" value="1">1.  x is a four-digit integer.
<br>
<input type="radio" name="ans10" value="2">2. X cannot be greater than a four-digit integer.
<br>
<input type="radio" name="ans10" value="3">3. X is a four-bit integer.
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