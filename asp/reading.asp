<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>《圣经》全文浏览</title></head>
<body bgcolor="#ffffcc">
<%
juan_id=request("VL")
<!--开始转换-->
Select case juan_id
Case "1" 
juan = "创世纪"
case "2"
juan = "出埃及记"
case "3"
juan = "利未记"
case "4"
juan = "民数记"
case "5"
juan = "申命记"
case "6"
juan = "约书亚记"
case "7"
juan = "士师记"
case "8"
juan = "路得记"
case "9"
juan = "撒母耳记上"
case "10"
juan = "撒母耳记下"
case "11"
juan = "列王纪上"
case "12"
juan = "列王纪下"
case "13"
juan = "历代志上"
case "14"
juan = "历代志下"
case "15"
juan = "以斯拉记"
case "16"
juan = "尼希米记"
case "17"
juan = "以斯帖记"
case "18"
juan = "约伯记"
case "19"
juan = "诗篇"
case "20"
juan = "箴言"
case "21"
juan = "传道书"
case "22"
juan = "雅歌"
case "23"
juan = "以赛亚书"
case "24"
juan = "耶利米书"
case "25"
juan = "耶利米哀歌"
case "26"
juan = "以西结书"
case "27"
juan = "但以理书"
case "28"
juan = "何西阿书"
case "29"
juan = "约珥书"
case "30"
juan = "阿摩司书"
case "31"
juan = "俄巴底亚书"
case "32"
juan = "约拿书"
case "33"
juan = "弥迦书"
case "34"
juan = "那鸿书"
case "35"
juan = "哈巴谷书"
case "36"
juan = "西番雅书"
case "37"
juan = "哈该书"
case "38"
juan = "撒迦利亚书"
case "39"
juan = "玛拉基书"
case "40"
juan = "马太福音"
case "41"
juan = "马可福音"
case "42"
juan = "路加福音"
case "43"
juan = "约翰福音"
case "44"
juan = "使徒行传"
case "45"
juan = "罗马书"
case "46"
juan = "歌林多前书"
case "47"
juan = "歌林多后书"
case "48"
juan = "加拉太书"
case "49"
juan = "以弗所书"
case "50"
juan = "腓利比书"
case "51"
juan = "歌罗西书"
case "52"
juan = "帖撒罗尼迦前书"
case "53"
juan = "帖撒罗尼迦后书"
case "54"
juan = "提摩太前书"
case "55"
juan = "提摩太后书"
case "56"
juan = "提多书"
case "57"
juan = "腓利门书"
case "58"
juan = "希伯来书"
case "59"
juan = "雅各书"
case "60"
juan = "彼得前书"
case "61"
juan = "彼得后书"
case "62"
juan = "约翰一书"
case "63"
juan = "约翰二书"
case "64"
juan = "约翰三书"
case "65"
juan = "犹大书"
case "66" 
juan = "启示录"
case else
End Select 
<!--结束转换-->
%>
<p align="center"><b><font face="楷体_GB2312" color="#0000FF" size="5"><%=juan%></font></b></p><hr>
  
<%''建立数据库连接
   dim conn   
   dim connstr,db
'更改数据库名字 
db="data/data.mdb" 
Set conn = Server.CreateObject("ADODB.Connection") 
  connstr="driver={Microsoft Access Driver (*.mdb)};dbq=" & Server.MapPath(db)
  conn.Open connstr

Set rs=Server.CreateObject("ADODB.Recordset") ''创建Recordset对象 
 %>

<%
'预显示第一章
juan_id = CInt(juan_id)
chapter = CInt(request("ch"))
set rs = conn.execute("select chapter, section, content from b_gb WHERE book =" & juan_id & " and chapter = " & chapter & " order by section")
if not rs.eof then
			   ''创建表格，用于显示 
			   
 			   Response.Write("<table align=center cellspacing=1 cellpadding=2 border=0") 
 			   Response.Write(" bordercolor=#99CCFF bordercolordark=#b0e0e6 bordercolorlight=#000066>")  
 			   Response.Write("<tr bgcolor=#ccccff bordercolor=#000066>")  
  			   Set Columns=rs.Fields 
  			   ''显示表头 %>
			   
   			   <td align=center> 
    			   <font size=2><b>章 号</b></font></td>
  			   <td align=center> 
  			   <font size=2><b>节 号</b></font></td>
 			   <td align=center> 
  			   <font size=2><b>经 文 内 容</b></font></td>
 				 </tr> 
                           <%
  			  ''显示内容 
 			   do while not rs.eof
  			   Response.Write("<tr bgcolor=#99ccff bordercolor=#000066>") 
  			   For j=0 to Columns.Count-1 
                           if j=0 then
				Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
                           else
  			   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
				end if
  			      Next 
  			   Response.Write("</tr>")
   
   			   rs.movenext 
			   loop
  			   Response.Write("</table>")
			   ''创建表格，用于显示  结束
else
	Response.Write("<div align=center><b>该卷书第" &chapter& "章没有内容！</b></div>") 
end if
%>
<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren" data-cmd="renren"></a><a href="#" class="bds_weixin" data-cmd="weixin"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>

<%
'查询该卷书的  章字段，显示各章的链接
Response.Write("<hr>本卷书各章的链接：&nbsp;")
set rs = conn.execute("select distinct chapter from b_gb WHERE book =" & juan_id & "")
if not rs.eof then
			   ''创建用于显示 
  			   
			   temp =1 
  			  ''显示内容 
 			   do while not rs.eof %>

  			   <font size=2><a href="reading.asp?ch=<%=rs("chapter")%>&VL=<%=juan_id%>"><%=rs("chapter")%></font></a>&nbsp;

                         <%
   			   rs.movenext 
			   temp =temp +1
			   if (temp Mod 28)=0 then
				Response.Write("<br>")
			   end if
			   loop
			   rs.close
 			   Set rs = Nothing 
  			   Conn.close 
  			   Set conn = Nothing 
			   ''创建用于显示链接结束
else
	
        rs.close
 	Set rs = Nothing 
  	Conn.close 
  	Set conn = Nothing 
        Response.Write("<div align=center><b>该卷书没有任何内容！</b></div>") 
end if

%>
<br><div align=right><b><a href="searcher.asp">返回查询界面</a></b></div>

</body></html>