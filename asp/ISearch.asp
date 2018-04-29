
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../counter/count.asp"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY bgcolor=LawnGreen>

<P>&nbsp;欢迎使用麦子圣经查询系统,数据处理中,请稍等......</P>
<FORM name=search METHOD=GET ACTION=to_pages.asp>
<INPUT type=hidden NAME=QR VALUE=<%=request("QR")%> >
<INPUT type=hidden NAME=VN VALUE=<%=request("VN")%> >
</form>
<p>
<p>

来访计数：<%=ReadNum()%>
<p>



</BODY>
</HTML>

<script language="VBSCRIPT">

   document.forms("search").submit

</script>