<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="../bbs/Inc/SysConfig.Asp"-->
<script language="JavaScript">
<!--
function SetFocus() {
	document.search.QR.focus();
	return;
}
// -->
</script>

<script language="JavaScript">
<!--
String.prototype.trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
String.prototype.LTrim = function()
{
    return this.replace(/(^\s*)/g, "");
}
String.prototype.Rtrim = function()
{
    return this.replace(/(\s*$)/g, "");
}

function checkValue(form){
 	
	if  (form.QR.value.trim() == "") {
		alert("�����������.");
		return false;
	}
	
	if  (form.VN.value == "67" || form.VN.value == "68" ){
		alert("��ѡ��������Χ.");
		return false;
	} 
	return true;}

function sub(){
   if(!checkValue(document.forms("search"))) return false;
   document.forms("search").QR.value = document.forms("search").QR.value.trim();

   document.forms("search").submit();
}
// -->
</script>

  <HTML> 
  <HEAD> 
  <title>ʥ����ѯ</title> </head>
<body bgcolor=ffffcc text=000000 link=0000cc vlink=0000cc alink=ff6600 onload=SetFocus()>
<div align=center><font size="4" color="blue"><b>���ĺͺϱ�ʥ�����߲�ѯ</b></font></div>
<br>
<div align=center><FORM name=search METHOD=GET ACTION=to_pages.asp>
      <td><font size=2 face=" ">
<SELECT NAME="VN">
<OPTION SELECTED VALUE="ALL">�¾�Լ
<OPTION VALUE="01">��Լ
<OPTION VALUE="02">��Լ
<OPTION VALUE="68">--------
<OPTION VALUE="1">������
<OPTION VALUE="2">��������
<OPTION VALUE="3">��δ��
<OPTION VALUE="4">������
<OPTION VALUE="5">������
<OPTION VALUE="6">Լ���Ǽ�
<OPTION VALUE="7">ʿʦ��
<OPTION VALUE="8">·�ü�
<OPTION VALUE="9">��ĸ������
<OPTION VALUE="10">��ĸ������
<OPTION VALUE="11">��������
<OPTION VALUE="12">��������
<OPTION VALUE="13">����־��
<OPTION VALUE="14">����־��
<OPTION VALUE="15">��˹����
<OPTION VALUE="16">��ϣ�׼�
<OPTION VALUE="17">��˹����
<OPTION VALUE="18">Լ����
<OPTION VALUE="19">ʫƪ
<OPTION VALUE="20">����
<OPTION VALUE="21">������
<OPTION VALUE="22">�Ÿ�
<OPTION VALUE="23">��������
<OPTION VALUE="24">Ү������
<OPTION VALUE="25">Ү���װ���
<OPTION VALUE="26">��������
<OPTION VALUE="27">��������
<OPTION VALUE="28">��������
<OPTION VALUE="29">Լ����
<OPTION VALUE="30">��Ħ˾��
<OPTION VALUE="31">��͵�����
<OPTION VALUE="32">Լ����
<OPTION VALUE="33">������
<OPTION VALUE="34">�Ǻ���
<OPTION VALUE="35">���͹���
<OPTION VALUE="36">��������
<OPTION VALUE="37">������
<OPTION VALUE="38">����������
<OPTION VALUE="39">��������
<OPTION VALUE="67">--------
<OPTION VALUE="40">��̫����
<OPTION VALUE="41">��ɸ���
<OPTION VALUE="42">·�Ӹ���
<OPTION VALUE="43">Լ������
<OPTION VALUE="44">ʹͽ�д�
<OPTION VALUE="45">������
<OPTION VALUE="46">���ֶ�ǰ��
<OPTION VALUE="47">���ֶ����
<OPTION VALUE="48">����̫��
<OPTION VALUE="49">�Ը�����
<OPTION VALUE="50">��������
<OPTION VALUE="51">��������
<OPTION VALUE="52">����������ǰ��
<OPTION VALUE="53">���������Ⱥ���
<OPTION VALUE="54">��Ħ̫ǰ��
<OPTION VALUE="55">��Ħ̫����
<OPTION VALUE="56">�����
<OPTION VALUE="57">��������
<OPTION VALUE="58">ϣ������
<OPTION VALUE="59">�Ÿ���
<OPTION VALUE="60">�˵�ǰ��
<OPTION VALUE="61">�˵ú���
<OPTION VALUE="62">Լ��һ��
<OPTION VALUE="63">Լ������
<OPTION VALUE="64">Լ������
<OPTION VALUE="65">�̴���
<OPTION VALUE="66">��ʾ¼
        </SELECT>
      </font></td>
      <td class="tk2">
        <INPUT NAME=QR SIZE=20 MAXLENGTH=70>
        <INPUT TYPE=button onclick="sub();" VALUE="����">
      </td>
      </form></div>
    </tr>
<div align=center><font size="2" >��ʾ����ؼ��ֲ�ѯʱ���ؼ���֮���ÿո������</font></div>

<LINK href="searcher.files/public.css" type=text/css rel=STYLESHEET>


<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=tk5><hr>
	<p><b><font size="3">ȫ��ʥ��(����) </font></b><font size="3"></FONT></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://wbible.cn/bbs">���԰�(����)</a></font></b><b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://wbible.cn/blog">����(����)</a></font></b><BR></TD>
    <TD class=tk vAlign=top align=right width="4">��</TD></TR></TBODY></TABLE>
<CENTER>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCCFF">��</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCCFF"><B>��Լ </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">��</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=1">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=2">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=3">��δ��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=4">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=5">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=6">Լ���Ǽ�</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=7">ʿʦ��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=8">·�ü�</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=9">��ĸ������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=10">��ĸ������</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=11">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=12">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=13">����־��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=14">����־��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=15">��˹����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=16">��ϣ�׼�</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=17">��˹����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=18">Լ����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=19">ʫƪ</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=20">����</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=21">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=22">�Ÿ�</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=23">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=24">Ү������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=25">Ү���װ���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=26">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=27">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=28">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=29">Լ����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=30">��Ħ˾��</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=31">��͵�����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=32">Լ����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=33">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=34">�Ǻ���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=35">���͹���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=36">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=37">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=38">����������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=39">��������</A> 
      </LI></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCC99">��</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCC99"><B>��Լ </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">��</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=40">��̫����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=41">��ɸ���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=42">·�Ӹ���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=43">Լ������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=44">ʹͽ�д�</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=45">������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=46">���ֶ�ǰ��</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=47">���ֶ����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=48">����̫��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=49">�Ը�����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=50">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=51">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=52">����������ǰ��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=53">���������Ⱥ���</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=54">��Ħ̫ǰ��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=55">��Ħ̫����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=56">�����</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=57">��������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=58">ϣ������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=59">�Ÿ���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=60">�˵�ǰ��</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=61">�˵ú���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=62">Լ��һ��</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=63">Լ������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=64">Լ������</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=65">�̴���</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=66">��ʾ¼</A> 
      </LI></TD></TR></TBODY></TABLE></CENTER>
<p>

</BODY></HTML>

</body>
  </HTML> 

