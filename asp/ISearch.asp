
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../counter/count.asp"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY bgcolor=LawnGreen>

<P>&nbsp;��ӭʹ������ʥ����ѯϵͳ,���ݴ�����,���Ե�......</P>
<FORM name=search METHOD=GET ACTION=to_pages.asp>
<INPUT type=hidden NAME=QR VALUE=<%=request("QR")%> >
<INPUT type=hidden NAME=VN VALUE=<%=request("VN")%> >
</form>
<p>
<p>

���ü�����<%=ReadNum()%>
<p>



</BODY>
</HTML>

<script language="VBSCRIPT">

   document.forms("search").submit

</script>