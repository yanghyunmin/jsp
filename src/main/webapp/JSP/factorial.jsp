<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Factorial</title>
</head>
<body>

	<%! public String hello(){
			return "hello";	
		}
	%>
	
		hello() : <%= hello()  %><br>
		
	<%!
		public int fac(int num){
			int result = 0;
			if(num == 1){
				result = 1;
			} else{
				result = num * fac(num-1);
			}
				return result;
		}
	%>
	
	f1 : <%= fac(1)  %><br>
	f2 : <%= fac(2)  %><br>
	f3 : <%= fac(3)  %><br>
	f4 : <%= fac(4)  %><br>
	f5 : <%= fac(5)  %><br>
	f6 : <%= fac(6)  %><br>
	f7 : <%= fac(7)  %><br>
	f8 : <%= fac(8)  %><br>
		
</body>
</html>