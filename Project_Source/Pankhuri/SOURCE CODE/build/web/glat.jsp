<%-- 
    Document   : glat
    Created on : Oct 16, 2015, 7:59:32 PM
    Author     : Zee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
function myFunction() {
    alert("Page is loaded");
}
</script>
    </head>
    <body onload="getLocation()">
       


<p id="demo"></p>

<script>
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    x.innerHTML = "Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude;
    var lat=	position.coords.latitude;
    var lo=	position.coords.longitude;
    //alert('hai'+lat+" "+lo);
//  document.getElementById("lat1").value = lat;
//  document.getElementById("lo1").value = lo;
    
 window.location.replace("us2.jsp?lat="+lat+"&&lo="+lo);
     //window.location.replace("http://www.w3schools.com");
}
</script>
 <%  String name= (String) session.getAttribute("uname");
    session.setAttribute("aaa", name);
    
//     String lat1=request.getParameter("lat");
//      session.setAttribute("lat", lat1);
//out.println("lat"+lat1);out.println("lo"+lat1);
//String lo1=request.getParameter("lo");
// session.setAttribute("lo", lo1);
////out.println(lo);
System.out.println("11111111111111========="+name);%>
<%
   
//     
//    
//    String nam=request.getParameter("aaa");session.setAttribute("aaa", nam);
//    RequestDispatcher rd=request.getRequestDispatcher("us2.jsp");
//                rd.include(request, response);
    
//out.println(lat);
//String lo=request.getParameter("lo");
//out.println(lo);


%>
    </body>
</html>

