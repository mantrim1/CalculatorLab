<%-- 
    Document   : AreaCalculator
    Created on : Sep 5, 2015, 2:06:04 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculator</title>
    </head>
    <body>
        
         <h1>Area Of Rectangle</h1>
        <form  method="POST" action="AreaCalculatorController?shape=rectangle"
               name="form1" id="form1" >
        <label for="inputHeight" >Height </label><input required="true" id="inputHeight" type="number" name="inputHeight" />
        <label for="inputwidth" >Width </label><input required="true" id="inputWidth" type="number" name="inputWidth" />
        <input type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
         <p style="color:blue;"><% 
            Object objRectangleMsg = request.getAttribute("rectangleMessage");
            String rectangleMessage = "";
            if(objRectangleMsg != null){
                rectangleMessage = (String) objRectangleMsg;
            }
            
            out.println(rectangleMessage); 
            %></p>
         <h1>Area Of Triangle</h1>
        <form  method="POST" action="AreaCalculatorController?shape=triangle"
               name="form1" id="form1" >
        <label for="inputHeight" >Height </label><input required="true" id="inputHeight" type="number" name="inputHeight" />
        <label for="inputwidth" >Width </label><input required="true" id="inputWidth" type="number" name="inputWidth" />
        <input type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
         <p style="color:blue;"><% 
            Object objTraingleMsg = request.getAttribute("triangleMessage");
            String triangleMessage ="";
            if(objTraingleMsg != null){
                triangleMessage = (String) objTraingleMsg;
            }
            
            out.println(triangleMessage); 
            %></p>
         
         <h1>Area Of Circle</h1>
        <form  method="POST" action="AreaCalculatorController?shape=circle"
               name="form1" id="form1" >
        <label for="inputHeight" >Radius </label><input required="true" id="inputRadius" type="number" name="inputRadius" />
        <input type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
         <p style="color:blue;"><% 
            Object objCircleMsg = request.getAttribute("circleMessage");
            String circleMessage = "";
            if(objCircleMsg != null){
                circleMessage = (String) objCircleMsg;
            }
            
            out.println(circleMessage); 
            %></p>
    </body>
</html>
