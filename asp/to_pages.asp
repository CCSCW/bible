<%@codepage="65001"%> 
<%Session.CodePage=65001%> 

<%
   session("juan_id")=request("VN")
   session("key")=request("QR")
response.redirect"pages.asp"
response.end

%>