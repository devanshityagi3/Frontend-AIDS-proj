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
<h4>1)The long term assets that have no physical existence but are rights that have value is known as
Answer C</h4>
<input type="radio" name="ans1" value="1"> 1. Current assets
<br>
<input type="radio" name="ans1" value="2"> 2. Fixed assets
<br>
<input type="radio" name="ans1" value="3"> 3. Intangible assets
<br>
<input type="radio" name="ans1" value="4"> 4. Investments
<br><br><br>

<h4>2)Patents, Copyrights and Trademarks are
Answer C</h4>
<input type="radio" name="ans2" value="1"> 1. Current assets
<br>
<input type="radio" name="ans2" value="2"> 2. Fixed assets
<br>
<input type="radio" name="ans2" value="3"> 3. Intangible assets
<br>
<input type="radio" name="ans2" value="4"> 4. Investments
<br><br><br>

<h4>3)The debts, which are to be repaid within a short period (year or less) are known as
Answer A</h4>
<br> 
<input type="radio" name="ans3" value="1">1. Current liabilities 
<br>
<input type="radio" name="ans3" value="2">2. Fixed liabilities
<br>
<input type="radio" name="ans3" value="3">3. Contingent liabilities
<br>
<input type="radio" name="ans3" value="4">4. All of the above
<br><br><br>

<h4>4)The sales income (Credit and Cash) of a business during a given period is called
Answer C</h4>
<br>
<input type="radio" name="ans4" value="1">1. Transactions
<br>
<input type="radio" name="ans4" value="2">2. Sales returns
<br>
<input type="radio" name="ans4" value="3">3. Turnover
<br>
<input type="radio" name="ans4" value="4">4. Purchase returns
<br><br><br> 

<h4>5)Any written evidence in support of a business transaction is called
Answer D  
</h4>
<input type="radio" name="ans5" value="1">1. Journal
<br>
<input type="radio" name="ans5" value="2">2. Ledger
<br> 
<input type="radio" name="ans5" value="3">3. Ledger posting
<br>
<input type="radio" name="ans5" value="4">4. Voucher

<br><br><br>

<h4>6)The accounts that records expenses, gains and losses are
Answer C 
</h4>
<input type="radio" name="ans6" value="1">1.Personal accounts
<br>
<input type="radio" name="ans6" value="2">2. Real accounts
<br>
<input type="radio" name="ans6" value="3">3. Nominal accounts
<br>
<input type="radio" name="ans6" value="4">4. None of the above
<br><br><br>

<h4>7)Real accounts records
Answer B
</h4>
<input type="radio" name="ans7" value="1">1. Dealings with creditors or debtors
<br>
<input type="radio" name="ans7" value="2">2. Dealings in commodities
<br>
<input type="radio" name="ans7" value="3">3. Gains and losses
<br>
<input type="radio" name="ans7" value="4">4. All of the above
<br><br><br>

<h4>8)The following is also known as External Internal Equity ratio
Answer C</h4>
<input type="radio" name="ans8" value="1">1. Current ratio
<br>
<input type="radio" name="ans8" value="2">2. Debt service coverage ratio
<br>
<input type="radio" name="ans8" value="3">3. Debt Equity ratio
<br>
<input type="radio" name="ans8" value="4">4. Acid test ratio 
<br><br><br>

<h4>9)The following is a statement showing the financial status of the company at any given time 
Answer C
</h4>
<input type="radio" name="ans9" value="1">1. Trading account
<br>
<input type="radio" name="ans9" value="2">2. Profit and Loss statements
<br>
<input type="radio" name="ans9" value="3">3. Balance sheet
<br>
<input type="radio" name="ans9" value="4">4. Cash book
<br><br><br>

<h4>10)Balance sheets are prepared
Answer D
</h4>
<input type="radio" name="ans10" value="1">1.  Daily
<br>
<input type="radio" name="ans10" value="2">2. Weekly
<br>
<input type="radio" name="ans10" value="3">3. Monthly
<br>
<input type="radio" name="ans10" value="4">4. Annually
<br><br><br>

<input type="submit">
 </form>           
        
<script type="text/javascript">
      window.onunload =  function(){} 
</script>
</body>
</html>