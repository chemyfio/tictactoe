<%-- 
    Document   : index
    Created on : Oct 24, 2018, 9:56:19 PM
    Author     : fiona
--%>

<%@page import="helper.GameProcess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
        <script src="js/app-ajax.js" type="text/javascript"></script>
        <style>
            table {
                margin: 0 auto;
                border-collapse: collapse;
                border-style: hidden;
              }
            table td {
              padding: 1rem;
              border: 5px solid lightgray;
            }
            
            td {
              width: 105px;
              height: 105px;
            }
            
            td:hover {
              background-color: #ffff99;
            }
        </style>
    </head>
    <body>
        <% GameProcess.initGame(); %>
        <div class="w3-display-middle">
            <table>
                <% for(int i=0; i<3; i++){%>
                <tr >
                    <% for(int j=0; j<3; j++){%>
                        <td id="<%=i+""+j%>">
                            <image src="" id="img<%=i+""+j%>"/>
                        </td>
                    <% } %>
                </tr>
                <%}%>
            </table>
                <br>
                <button class="w3-button w3-red w3-ripple w3-round w3-large w3-block reset" >Reset</button>
        </div>
        
        <div id="modal-result" class="w3-modal">
            <div class="w3-modal-content w3-animate-zoom">
                <div class="w3-container">
                    <center>
                    
                    <span onclick="document.getElementById('modal-result').style.display='none'" class="w3-button w3-display-topright reset">&times;</span>
                    <br>
                    <image src="" id="result-img"/>
                    <br>
                    <h3 id="result-text"></h3>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>
