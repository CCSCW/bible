 
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
   if(!checkValue(document.forms[3])) return false;
   document.forms[3].QR.value = document.forms[3].QR.value.trim();
   document.forms[3].submit();
   }
}


function Reading(id){
	var url = "bible/reading.asp?ch=1&VL="+id;
	if (document.getElementById("KJV").checked)
	{	
		url = url + "&KJV="+document.getElementById("KJV").value; 
	}
	if (document.getElementById("BBE").checked)
	{
		url = url + "&BBE="+document.getElementById("BBE").value; 
	}
	if (document.getElementById("ASV").checked)
	{
		url = url + "&ASV="+document.getElementById("ASV").value; 
	}
	if (document.getElementById("WEB").checked)
	{
		url = url + "&WEB="+document.getElementById("WEB").value;
	}
	if (document.getElementById("YLT").checked)
	{
		url = url + "&YLT="+document.getElementById("YLT").value; 
	}
	if (document.getElementById("GB").checked)
	{
		url = url + "&GB="+document.getElementById("GB").value;
	}
	return window.open(url);
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
	<a target="_blank" href="http://oa.usebible.com/e/">在线办公</a></font></b>
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
<a target="_blank" href="http://share.usebible.com:8054/disk/data/public/36261c--zh">文件分享</a></font></b>
<b><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;


<p>
<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)"  color=#987cb9 SIZE=3>

<p>
<table cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td >
				<font size="2" color="blue">全网基督教信息查询</font></td><td>
<FORM id=form name=f action=http://oa.usebible.com/Search/s  target="_blank">
<input type="hidden" id="su">
<input name=wd type=text id=kw size=42 style='background-color: #FFFFFF; border: 1 solid #000000' maxlength=100>
<font size="2" ><input type=submit value=搜索 id=su></font></FORM></td>
</tr>
<tr><td >		
				<form action=/cbook/search.asp method=post  target="_blank"><font size="2" color="blue">本站作品搜索</font></td><td> 类　型 <select size=1 name=key_type><option value='list_name'>作品名称</option><option value='list_user'>作者名称</option><option value='key'>作品主角</option></select>
				 关键字 <input title='' maxlength='25' name='key_keyword' size='11' class='checklist' style='background-color: #FFFFFF; border: 1 solid #000000'><font size="2" ><input type='submit' value=' 搜索 ' name='submit' title='' class='checklist'></font >&nbsp; </td>
				</form></tr>
<tr><td >
				<font size="2" color="blue">本站百科搜索</font></td><td>  
				<form action="http://oa.usebible.com/mediawiki/index.php" id="searchform"  target="_blank">
		<input name="title" value="特殊:搜索" type="hidden">
				<input id="searchInput" name="search" title="搜索该网站 [alt-shift-f]" accesskey="f" value="" type="text">
		<input name="go" class="searchButton" id="searchGoButton" value="进入" title="如果相同的标题存在的话便直接前往该页面" type="submit">
		<input name="fulltext" class="searchButton" id="mw-searchButton" value="搜索" title="搜索该文字的页面" type="submit">
			</form>
				</td>
				</tr>
				
				<tr><FORM name=search METHOD=GET ACTION=bible/Pages.asp  target="_blank">
				<td><font size="2" color="blue">中文和合本圣经在线查询</font></td><td>
 <SELECT NAME="VSERION">
<OPTION SELECTED VALUE="GB">中文简体
<OPTION VALUE="ASV">ASV
<OPTION VALUE="BBE">BBE
<OPTION VALUE="KJV">KJV
<OPTION VALUE="WEB">WEB
<OPTION VALUE="YLT">YLT
        </SELECT>

      <font size=2 face=" ">
<SELECT NAME="VN">
<OPTION SELECTED VALUE="ALL">新旧约(ALL)
<OPTION VALUE="01">旧约(OT)
<OPTION VALUE="02">新约(NT)
<OPTION VALUE="68">--------
<OPTION VALUE="1">创世纪(Genesis)
<OPTION VALUE="2">出埃及记(Exodus)
<OPTION VALUE="3">利未记(Leviticus)
<OPTION VALUE="4">民数记(Numbers)
<OPTION VALUE="5">申命记(Deuteronomy)
<OPTION VALUE="6">约书亚记(Joshua)
<OPTION VALUE="7">士师记(Judges)
<OPTION VALUE="8">路得记(Ruth)
<OPTION VALUE="9">撒母耳记上(1 Samuel)
<OPTION VALUE="10">撒母耳记下(2 Samuel)
<OPTION VALUE="11">列王纪上(1 Kings)
<OPTION VALUE="12">列王纪下(2 Kings)
<OPTION VALUE="13">历代志上(1 Chronicles)
<OPTION VALUE="14">历代志下(2 Chronicles)
<OPTION VALUE="15">以斯拉记(Ezra)
<OPTION VALUE="16">尼希米记(Nehemiah)
<OPTION VALUE="17">以斯帖记(Esther)
<OPTION VALUE="18">约伯记(Job)
<OPTION VALUE="19">诗篇(Psalms)
<OPTION VALUE="20">箴言(Proverbs)
<OPTION VALUE="21">传道书(Ecclesiastes)
<OPTION VALUE="22">雅歌(Song of Songs)
<OPTION VALUE="23">以赛亚书(Isaiah)
<OPTION VALUE="24">耶利米书(Jeremiah)
<OPTION VALUE="25">耶利米哀歌(Lamentations)
<OPTION VALUE="26">以西结书(Ezekiel)
<OPTION VALUE="27">但以理书(Daniel)
<OPTION VALUE="28">何西阿书(Hosea)
<OPTION VALUE="29">约珥书(Joel)
<OPTION VALUE="30">阿摩司书(Amos)
<OPTION VALUE="31">俄巴底亚书(Obadiah)
<OPTION VALUE="32">约拿书(Jonah)
<OPTION VALUE="33">弥迦书(Micah)
<OPTION VALUE="34">那鸿书(Nahum)
<OPTION VALUE="35">哈巴谷书(Habakkuk)
<OPTION VALUE="36">西番雅书(Zephaniah)
<OPTION VALUE="37">哈该书(Haggai)
<OPTION VALUE="38">撒迦利亚书(Zechariah)
<OPTION VALUE="39">玛拉基书(Malachi)
<OPTION VALUE="67">--------
<OPTION VALUE="40">马太福音(Matthew)
<OPTION VALUE="41">马可福音(Mark)
<OPTION VALUE="42">路加福音(Luke)
<OPTION VALUE="43">约翰福音(John)
<OPTION VALUE="44">使徒行传(Acts)
<OPTION VALUE="45">罗马书(Romans)
<OPTION VALUE="46">歌林多前书(1 Corinthians)
<OPTION VALUE="47">歌林多后书(2 Corinthians)
<OPTION VALUE="48">加拉太书(Galatians)
<OPTION VALUE="49">以弗所书(Ephesians)
<OPTION VALUE="50">腓利比书(Philippians)
<OPTION VALUE="51">歌罗西书(Colossians)
<OPTION VALUE="52">帖撒罗尼迦前书(1 Thessalonians)
<OPTION VALUE="53">帖撒罗尼迦后书(2 Thessalonians)
<OPTION VALUE="54">提摩太前书(1 Timothy)
<OPTION VALUE="55">提摩太后书(2 Timothy)
<OPTION VALUE="56">提多书(Titus)
<OPTION VALUE="57">腓利门书(Philemon)
<OPTION VALUE="58">希伯来书(Hebrews)
<OPTION VALUE="59">雅各书(James)
<OPTION VALUE="60">彼得前书(1 Peter)
<OPTION VALUE="61">彼得后书(2 Peter)
<OPTION VALUE="62">约翰一书(1 John)
<OPTION VALUE="63">约翰二书(2 John)
<OPTION VALUE="64">约翰三书(3 John)
<OPTION VALUE="65">犹大书(Jude)
<OPTION VALUE="66">启示录(Revelation)
        </SELECT>
      </font>
        <INPUT NAME=QR SIZE=20 MAXLENGTH=70>
        <INPUT TYPE=button onclick="sub();" VALUE="搜索">同时显示：<input type=checkbox id=sGB NAME=sGB checked value="GB" >中文简体 &nbsp;<input type=checkbox id=sKJV  NAME=sKJV  value="KJV">KJV &nbsp;<input type=checkbox id=sBBE NAME=sBBE   value="BBE">BBE&nbsp;<input type=checkbox id=sWEB   NAME=sWEB value="WEB">WEB&nbsp; <input type=checkbox id=sYLT NAME=sYLT   value="YLT">YLT&nbsp; <input type=checkbox id=sASV  NAME=sASV  value="ASV">ASV&nbsp;
      
      </form></td></tr><tr> <td><font size="2" >圣经查询提示：</td><td>多关键字查询时，关键字之间用空格隔开！</font></td><td>
       </td>
    </tr>
    </table>
    <p>

     
<div align=center><font size="2" >圣经分卷阅读</font></div>

<LINK href="bible/searcher.files/public.css" type=text/css rel=STYLESHEET>


<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=tk5><hr>
	<p><b><font size="3">全文圣经 </font></b><input type=checkbox id=GB checked readonly value="中文简体" hidden>中文简体 &nbsp;&nbsp;同时显示：<input type=checkbox id=KJV  value="KJV">KJV &nbsp;&nbsp;<input type=checkbox id=BBE  value="BBE">BBE&nbsp;&nbsp;<input type=checkbox id=WEB  value="WEB">WEB&nbsp;&nbsp; <input type=checkbox id=YLT  value="YLT">YLT&nbsp;&nbsp; <input type=checkbox id=ASV  value="ASV">ASV&nbsp;&nbsp; <font size="3"></FONT></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</TD>
      
    <TD class=tk vAlign=top align=right width="4">　</TD></TR></TBODY></TABLE>
<CENTER>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCCFF">　</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCCFF"><B>旧约(OT) </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">　</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(1);">创世纪(Genesis)</A> 

      <LI><A 
      href="javascript:Reading(2);">出埃及记(Exodus)</A> 

      <LI><A 
      href="javascript:Reading(3);">利未记(Leviticus)</A> 

      <LI><A 
      href="javascript:Reading(4);">民数记(Numbers)</A> 

      <LI><A 
      href="javascript:Reading(5);">申命记(Deuteronomy)</A> 

      <LI><A 
      href="javascript:Reading(6);">约书亚记(Joshua)</A> 

      <LI><A 
      href="javascript:Reading(7);">士师记(Judges)</A> 

      <LI><A 
      href="javascript:Reading(8);">路得记(Ruth)</A> 

      <LI><A 
      href="javascript:Reading(9);">撒母耳记上(1 Samuel)</A> 

      <LI><A 
      href="javascript:Reading(10);">撒母耳记下(2 Samuel)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(11);">列王纪上(1 Kings)</A> 

      <LI><A 
      href="javascript:Reading(12);">列王纪下(2 Kings)</A> 

      <LI><A 
      href="javascript:Reading(13);">历代志上(1 Chronicles)</A> 

      <LI><A 
      href="javascript:Reading(14);">历代志下(2 Chronicles)</A> 

      <LI><A 
      href="javascript:Reading(15);">以斯拉记(Ezra)</A> 

      <LI><A 
      href="javascript:Reading(16);">尼希米记(Nehemiah)</A> 

      <LI><A 
      href="javascript:Reading(17);">以斯帖记(Esther)</A> 

      <LI><A 
      href="javascript:Reading(18);">约伯记(Job)</A> 

      <LI><A 
      href="javascript:Reading(19);">诗篇(Psalms)</A> 

      <LI><A 
      href="javascript:Reading(20);">箴言(Proverbs)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(21);">传道书(Ecclesiastes)</A> 

      <LI><A 
      href="javascript:Reading(22);">雅歌(Song of Songs)</A> 

      <LI><A 
      href="javascript:Reading(23);">以赛亚书(Isaiah)</A> 

      <LI><A 
      href="javascript:Reading(24);">耶利米书(Jeremiah)</A> 

      <LI><A 
      href="javascript:Reading(25);">耶利米哀歌(Lamentations)</A> 

      <LI><A 
      href="javascript:Reading(26);">以西结书(Ezekiel)</A> 

      <LI><A 
      href="javascript:Reading(27);">但以理书(Daniel)</A> 

      <LI><A 
      href="javascript:Reading(28);">何西阿书(Hosea)</A> 

      <LI><A 
      href="javascript:Reading(29);">约珥书(Joel)</A> 

      <LI><A 
      href="javascript:Reading(30);">阿摩司书(Amos)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(31);">俄巴底亚书(Obadiah)</A> 

      <LI><A 
      href="javascript:Reading(32);">约拿书(Jonah)</A> 

      <LI><A 
      href="javascript:Reading(33);">弥迦书(Micah)</A> 

      <LI><A 
      href="javascript:Reading(34);">那鸿书(Nahum)</A> 

      <LI><A 
      href="javascript:Reading(35);">哈巴谷书(Habakkuk)</A> 

      <LI><A 
      href="javascript:Reading(36);">西番雅书(Zephaniah)</A> 

      <LI><A 
      href="javascript:Reading(37);">哈该书(Haggai)</A> 

      <LI><A 
      href="javascript:Reading(38);">撒迦利亚书(Zechariah)</A> 

      <LI><A 
      href="javascript:Reading(39);">玛拉基书(Malachi)</A> 
      </LI></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=0 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR bgColor=#f0f0f0>
    <TD widt="4%" bgcolor="#FFCC99">　</TD>
    <TD class=tk3 colSpan=4 bgcolor="#FFCC99"><B>新约(NT) </B></TD></TR>
  <TR vAlign=top>
    <TD widt="4%">　</TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(40);">马太福音(Matthew)</A> 

      <LI><A 
      href="javascript:Reading(41);">马可福音(Mark)</A> 

      <LI><A 
      href="javascript:Reading(42);">路加福音(Luke)</A> 

      <LI><A 
      href="javascript:Reading(43);">约翰福音(John)</A> 

      <LI><A 
      href="javascript:Reading(44);">使徒行传(Acts)</A> 

      <LI><A 
      href="javascript:Reading(45);">罗马书(Romans)</A> 

      <LI><A 
      href="javascript:Reading(46);">哥林多前书(1 Corinthians)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(47);">哥林多后书(2 Corinthians)</A> 

      <LI><A 
      href="javascript:Reading(48);">加拉太书(Galatians)</A> 

      <LI><A 
      href="javascript:Reading(49);">以弗所书(Ephesians)</A> 

      <LI><A 
      href="javascript:Reading(50);">腓利比书(Philippians)</A> 


      <LI><A 
      href="javascript:Reading(51);">歌罗西书(Colossians)</A> 

      <LI><A 
      href="javascript:Reading(52);">帖撒罗尼迦前书(1 Thessalonians)</A> 

      <LI><A 
      href="javascript:Reading(53);">帖撒罗尼迦后书(2 Thessalonians)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(54);">提摩太前书(1 Timothy)</A> 

      <LI><A 
      href="javascript:Reading(55);">提摩太后书(2 Timothy)</A> 

      <LI><A 
      href="javascript:Reading(56);">提多书(Titus)</A> 

      <LI><A 
      href="javascript:Reading(57);">腓利门书(Philemon)</A> 

      <LI><A 
      href="javascript:Reading(58);">希伯来书(Hebrews)</A> 

      <LI><A 
      href="javascript:Reading(59);">雅各书(James)</A> 

      <LI><A 
      href="javascript:Reading(60);">彼得前书(1 Peter)</A> 
      </LI></TD>
    <TD class=tk3 width="24%">
      <LI><A 
      href="javascript:Reading(61);">彼得后书(2 Peter)</A> 

      <LI><A 
      href="javascript:Reading(62);">约翰一书(1 John)</A> 

      <LI><A 
      href="javascript:Reading(63);">约翰二书(2 John)</A> 

      <LI><A 
      href="javascript:Reading(64);">约翰三书(3 John)</A> 

      <LI><A 
      href="javascript:Reading(65);">犹大书(Jude)</A> 

      <LI><A 
      href="javascript:Reading(66);">启示录(Revelation)</A> 
      </LI></TD></TR></TBODY></TABLE></CENTER>
<p>
<HR style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#987cb9,direction:145,strength:15)"  color=#987cb9 SIZE=1>

</tr>
</table>
<p>
<HR style="border:3 double #987cb9"  color=#987cb9 SIZE=3>
<p>
<div align=center><font size="2" >麦子文学</font></div>
<p>
<!--#include file="cbook/index.html"-->
<p>
<HR style="border:2 double #987cb9"  color=#987cb9 SIZE=2>
<p>

<p>
<p>


<p>
<p>
<div align=center><font size="2" >求职招聘</font></div>
<p>
<!--#include file="jobs2_asp.htm"-->

<p>
<p>
<div align=center><a target="_blank" href="http://oa.usebible.com/mediawiki">麦子wiki</a></font></b></div>
<p>
<iframe width=100% height=80% src="http://oa.usebible.com/mediawiki/index.php?title=%E7%89%B9%E6%AE%8A:%E6%89%80%E6%9C%89%E9%A1%B5%E9%9D%A2"></iframe>
<p>
<HR style="border:2 double #987cb9"  color=#987cb9 SIZE=2>
<%@LANGUAGE="VBSCRIPT" %>
<!--#include file="counter/count.asp"-->
来访计数：<%=ReadNum()%>
<p>

</BODY></HTML>

</body>
  </HTML> 

