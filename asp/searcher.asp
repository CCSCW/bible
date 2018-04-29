
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
		alert("请输入检索词.");
		return false;
	}
	
	if  (form.VN.value == "67" || form.VN.value == "68" ){
		alert("请选择搜索范围.");
		return false;
	} 
	return true;}
function checkValue_f(form){
 	
	if  (document.forms["search"].elements["QR"].value.trim() == "") {
		alert("please Input keys.");
		return false;
	}
	
	if  (document.forms["search"].elements["VN"].value == "67" || document.forms["search"].elements["VN"].value == "68" ){
		alert("select search book.");
		return false;
	} 
	return true;}

function sub(){
    if(navigator.userAgent.indexOf("Firefox")!=-1){
       
	if(!checkValue_f(document.forms["search"])) return false;
      
        document.forms["search"].elements["QR"].value=document.forms["search"].elements["QR"].value.trim();
      
   	document.forms["search"].submit();
   }
   else
   {
   if(!checkValue(document.forms("search"))) return false;
   document.forms[0].QR.value = document.forms[0].QR.value.trim();
   document.forms[0].submit();
   }
}
// -->
</script>

  <HTML> 
  <HEAD> 
   <meta http-equiv="content-type" content="text/html;charset=utf-8">
  <title>圣经查询</title> </head>
<body bgcolor=ffffcc text=000000 link=0000cc vlink=0000cc alink=ff6600 onload=SetFocus()>
	<b><font size="2">
	<a target="_blank" href="http://www.usebible.com/bbs/">旧BBS</a></font></b><b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
        <a target="_blank" href="http://bbs.usebible.com/christian/">新BBS</a></font></b><b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
        
	<a target="_blank" href="http://oa.usebible.com/wordpress/">博客</a></font></b>
      <b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.usebible.com/hr">义工网</a></font></b>
         <b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.usebible.com/bbs/List.Asp?BoardID=7">留言</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.usebible.com/bible_lx\">灵修版圣经</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;

<a target="_blank" href="http://www.usebible.com/book/bible/kjv.htm">英语KJV圣经</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.usebible.com/book.htm">作家作品</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
		
         <b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://oa.usebible.com/Search/">网络信息搜索</a></font></b>
        <b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
  	<a target="_blank" href="http://www.usebible.com/Search/site/">网址导航</a></font></b>
        <b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://oa.usebible.com/oa/">在线办公</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://qa.usebible.com/qa">信仰问答</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://oa.usebible.com/mediawiki">麦子wiki</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://www.usebible.com/cbook">麦子文学</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	<a target="_blank" href="http://oa.usebible.com/moodle/">旧课程</a></font></b>
        <a target="_blank" href="http://oa.usebible.com/lesson/">新在线课程</a></font></b>
        
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
	
	<a target="_blank" href="http://www.usebible.com/Treasures/index.html">信仰宝库</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank" href="http://oa.usebible.com/js/">开放期刊</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank" href="http://www.usebible.com/book/21cbible/">证主21世纪圣经新释</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank" href="http://usebible.com:8054/disk/data/public/36261c--zh">文件分享</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;


             
<BR>
<p align=center>------------------------------------------------------------------</p>
<div align=center><font size="4" color="blue"><b>中文和合本圣经在线查询</b></font></div>
 </div> <div align=right>English Version(英语版)&nbsp;&nbsp; <A  href="http://www.useble.com/Liberia/asv_bible/searcher.asp">ASV</A>&nbsp;&nbsp;<A  href="http://www.useble.com/Liberia/ebible/searcher.asp">BBE</A>&nbsp;&nbsp;<A  href="http://www.useble.com/Liberia/kjv_bible/searcher.asp">KJV</A>&nbsp;&nbsp;<A  href="http://www.useble.com/Liberia/YLT_bible//searcher.asp">YLT</A> </div>
<br>
<div align=center><FORM name=search METHOD=GET ACTION=to_pages.asp>
      <td><font size=2 face=" ">
<SELECT NAME="VN">
<OPTION SELECTED VALUE="ALL">新旧约
<OPTION VALUE="01">旧约
<OPTION VALUE="02">新约
<OPTION VALUE="68">--------
<OPTION VALUE="1">创世纪
<OPTION VALUE="2">出埃及记
<OPTION VALUE="3">利未记
<OPTION VALUE="4">民数记
<OPTION VALUE="5">申命记
<OPTION VALUE="6">约书亚记
<OPTION VALUE="7">士师记
<OPTION VALUE="8">路得记
<OPTION VALUE="9">撒母耳记上
<OPTION VALUE="10">撒母耳记下
<OPTION VALUE="11">列王纪上
<OPTION VALUE="12">列王纪下
<OPTION VALUE="13">历代志上
<OPTION VALUE="14">历代志下
<OPTION VALUE="15">以斯拉记
<OPTION VALUE="16">尼希米记
<OPTION VALUE="17">以斯帖记
<OPTION VALUE="18">约伯记
<OPTION VALUE="19">诗篇
<OPTION VALUE="20">箴言
<OPTION VALUE="21">传道书
<OPTION VALUE="22">雅歌
<OPTION VALUE="23">以赛亚书
<OPTION VALUE="24">耶利米书
<OPTION VALUE="25">耶利米哀歌
<OPTION VALUE="26">以西结书
<OPTION VALUE="27">但以理书
<OPTION VALUE="28">何西阿书
<OPTION VALUE="29">约珥书
<OPTION VALUE="30">阿摩司书
<OPTION VALUE="31">俄巴底亚书
<OPTION VALUE="32">约拿书
<OPTION VALUE="33">弥迦书
<OPTION VALUE="34">那鸿书
<OPTION VALUE="35">哈巴谷书
<OPTION VALUE="36">西番雅书
<OPTION VALUE="37">哈该书
<OPTION VALUE="38">撒迦利亚书
<OPTION VALUE="39">玛拉基书
<OPTION VALUE="67">--------
<OPTION VALUE="40">马太福音
<OPTION VALUE="41">马可福音
<OPTION VALUE="42">路加福音
<OPTION VALUE="43">约翰福音
<OPTION VALUE="44">使徒行传
<OPTION VALUE="45">罗马书
<OPTION VALUE="46">歌林多前书
<OPTION VALUE="47">歌林多后书
<OPTION VALUE="48">加拉太书
<OPTION VALUE="49">以弗所书
<OPTION VALUE="50">腓利比书
<OPTION VALUE="51">歌罗西书
<OPTION VALUE="52">帖撒罗尼迦前书
<OPTION VALUE="53">帖撒罗尼迦后书
<OPTION VALUE="54">提摩太前书
<OPTION VALUE="55">提摩太后书
<OPTION VALUE="56">提多书
<OPTION VALUE="57">腓利门书
<OPTION VALUE="58">希伯来书
<OPTION VALUE="59">雅各书
<OPTION VALUE="60">彼得前书
<OPTION VALUE="61">彼得后书
<OPTION VALUE="62">约翰一书
<OPTION VALUE="63">约翰二书
<OPTION VALUE="64">约翰三书
<OPTION VALUE="65">犹大书
<OPTION VALUE="66">启示录
        </SELECT>
      </font></td>
      <td class="tk2">
        <INPUT NAME=QR SIZE=20 MAXLENGTH=70>
        <INPUT TYPE=button onclick="sub();" VALUE="搜索">
      </td>
      </form></div>
    </tr>
<div align=center><font size="2" >提示：多关键字查询时，关键字之间用空格隔开！</font></div>

<LINK href="searcher.files/public.css" type=text/css rel=STYLESHEET>


<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=tk5><hr>
	<p><b><font size="3">全文圣经(简体) </font></b><font size="3"></FONT></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</TD>
      
    <TD class=tk vAlign=top align=right width="4">　</TD></TR></TBODY></TABLE>
<CENTER>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCCFF">　</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCCFF"><B>旧约 </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">　</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=1">创世纪</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=2">出埃及记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=3">利未记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=4">民数记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=5">申命记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=6">约书亚记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=7">士师记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=8">路得记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=9">撒母耳记上</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=10">撒母耳记下</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=11">列王纪上</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=12">列王纪下</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=13">历代志上</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=14">历代志下</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=15">以斯拉记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=16">尼希米记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=17">以斯帖记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=18">约伯记</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=19">诗篇</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=20">箴言</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=21">传道书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=22">雅歌</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=23">以赛亚书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=24">耶利米书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=25">耶利米哀歌</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=26">以西结书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=27">但以理书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=28">何西阿书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=29">约珥书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=30">阿摩司书</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=31">俄巴底亚书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=32">约拿书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=33">弥迦书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=34">那鸿书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=35">哈巴谷书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=36">西番雅书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=37">哈该书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=38">撒迦利亚书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=39">玛拉基书</A> 
      </LI></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCC99">　</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCC99"><B>新约 </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">　</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=40">马太福音</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=41">马可福音</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=42">路加福音</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=43">约翰福音</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=44">使徒行传</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=45">罗马书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=46">哥林多前书</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=47">哥林多后书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=48">加拉太书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=49">以弗所书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=50">腓利比书</A> 


      <LI><A 
      href="reading.asp?ch=1&VL=51">歌罗西书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=52">帖撒罗尼迦前书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=53">帖撒罗尼迦后书</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=54">提摩太前书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=55">提摩太后书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=56">提多书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=57">腓利门书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=58">希伯来书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=59">雅各书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=60">彼得前书</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="reading.asp?ch=1&VL=61">彼得后书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=62">约翰一书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=63">约翰二书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=64">约翰三书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=65">犹大书</A> 

      <LI><A 
      href="reading.asp?ch=1&VL=66">启示录</A> 
      </LI></TD></TR></TBODY></TABLE></CENTER>
<p>
<p>

<p>
<p>
<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="../counter/count.asp"-->
来访计数：<%=ReadNum()%>
<p>
</BODY></HTML>

</body>
  </HTML> 

