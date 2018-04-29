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
juan = "创世纪(Genesis)"
case "2"
juan = "出埃及记(Exodus)"
case "3"
juan = "利未记(Leviticus)"
case "4"
juan = "民数记(Numbers)"
case "5"
juan = "申命记(Deuteronomy)"
case "6"
juan = "约书亚记(Joshua)"
case "7"
juan = "士师记(Judges)"
case "8"
juan = "路得记(Ruth)"
case "9"
juan = "撒母耳记上(1 Samuel)"
case "10"
juan = "撒母耳记下(2 Samuel)"
case "11"
juan = "列王纪上(1 Kings)"
case "12"
juan = "列王纪下(2 Kings)"
case "13"
juan = "历代志上(1 Chronicles)"
case "14"
juan = "历代志下(2 Chronicles)"
case "15"
juan = "以斯拉记(Ezra)"
case "16"
juan = "尼希米记(Nehemiah)"
case "17"
juan = "以斯帖记(Esther)"
case "18"
juan = "约伯记(Job)"
case "19"
juan = "诗篇(Psalms)"
case "20"
juan = "箴言(Proverbs)"
case "21"
juan = "传道书(Ecclesiastes)"
case "22"
juan = "雅歌(Song of Songs)"
case "23"
juan = "以赛亚书(Isaiah)"
case "24"
juan = "耶利米书(Jeremiah)"
case "25"
juan = "耶利米哀歌(Lamentations)"
case "26"
juan = "以西结书(Ezekiel)"
case "27"
juan = "但以理书(Daniel)"
case "28"
juan = "何西阿书(Hosea)"
case "29"
juan = "约珥书(Joel)"
case "30"
juan = "阿摩司书(Amos)"
case "31"
juan = "俄巴底亚书(Obadiah)"
case "32"
juan = "约拿书(Jonah)"
case "33"
juan = "弥迦书(Micah)"
case "34"
juan = "那鸿书(Nahum)"
case "35"
juan = "哈巴谷书(Habakkuk)"
case "36"
juan = "西番雅书(Zephaniah)"
case "37"
juan = "哈该书(Haggai)"
case "38"
juan = "撒迦利亚书(Zechariah)"
case "39"
juan = "玛拉基书(Malachi)"
case "40"
juan = "马太福音(Matthew)"
case "41"
juan = "马可福音(Mark)"
case "42"
juan = "路加福音(Luke)"
case "43"
juan = "约翰福音(John)"
case "44"
juan = "使徒行传(Acts)"
case "45"
juan = "罗马书(Romans)"
case "46"
juan = "歌林多前书(1 Corinthians)"
case "47"
juan = "歌林多后书(2 Corinthians)"
case "48"
juan = "加拉太书(Galatians)"
case "49"
juan = "以弗所书(Ephesians)"
case "50"
juan = "腓利比书(Philippians)"
case "51"
juan = "歌罗西书(Colossians)"
case "52"
juan = "帖撒罗尼迦前书(1 Thessalonians)"
case "53"
juan = "帖撒罗尼迦后书(2 Thessalonians)"
case "54"
juan = "提摩太前书(1 Timothy)"
case "55"
juan = "提摩太后书(2 Timothy)"
case "56"
juan = "提多书(Titus)"
case "57"
juan = "腓利门书(Philemon)"
case "58"
juan = "希伯来书(Hebrews)"
case "59"
juan = "雅各书(James)"
case "60"
juan = "彼得前书(1 Peter)"
case "61"
juan = "彼得后书(2 Peter)"
case "62"
juan = "约翰一书(1 John)"
case "63"
juan = "约翰二书(2 John)"
case "64"
juan = "约翰三书(3 John)"
case "65"
juan = "犹大书(Jude)"
case "66" 
juan = "启示录(Revelation)"
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
GB=request("GB")
KJV=request("KJV")
BBE=request("BBE")
YLT=request("YLT")
ASV=request("ASV")
WEB=request("WEB")
selectSQL = "select '和合本', b_gb.chapter, b_gb.section, b_gb.content "
fromSQL = " from b_gb "
whereSQL = " where b_gb.book =" & juan_id & " and b_gb.chapter = " & chapter 

If KJV="KJV" Then
selectSQL = selectSQL & " ,'KJV',b_KJV.chapter, b_KJV.section, b_KJV.content "
fromSQL = fromSQL & " ,b_KJV   "
whereSQL = whereSQL & "  and  b_gb.id=b_KJV.id  "
End If

If BBE="BBE" Then
selectSQL = selectSQL &  " ,'BBE',b_bbe.chapter, b_bbe.section, b_bbe.content "
fromSQL = fromSQL &  " ,b_bbe   "
whereSQL =  whereSQL &  "  and  b_gb.id=b_bbe.id  "
End If

If WEB="WEB" Then
selectSQL = selectSQL &  " ,'WEB',b_web.chapter, b_web.section, b_web.content "
fromSQL = fromSQL &  " ,b_web   "
whereSQL =  whereSQL &  "  and  b_gb.id=b_web.id  "
End If

If YLT="YLT" Then
selectSQL = selectSQL &  " ,'YLT',b_ylt.chapter, b_ylt.section, b_ylt.content "
fromSQL = fromSQL &  " ,b_ylt   "
whereSQL =  whereSQL &  "  and  b_gb.id=b_ylt.id  "
End If

If ASV="ASV" Then
selectSQL = selectSQL &  " ,'ASV',b_asv1901.chapter, b_asv1901.section, b_asv1901.content "
fromSQL = fromSQL &  " ,b_asv1901   "
whereSQL =  whereSQL &  "  and  b_gb.id=b_asv1901.id  "
End If


SQLstr= selectSQL & fromSQL & whereSQL  & " order by b_gb.section "
'Response.Write(SQLstr)
set rs = conn.execute(SQLstr )
if not rs.eof then
			   ''创建表格，用于显示 
			   
 			   Response.Write("<table align=center cellspacing=1 cellpadding=2 border=0") 
 			   Response.Write(" bordercolor=#99CCFF bordercolordark=#b0e0e6 bordercolorlight=#000066>")  
 			   Response.Write("<tr bgcolor=#ccccff bordercolor=#000066>")  
  			   Set Columns=rs.Fields 
  			   ''显示表头 %>
			   <td align=center> 
    			   <font size=2><b>版 本</b></font></td>
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
               'GB
  			   Response.Write("<tr bgcolor=#99ddff bordercolor=#000066>") 
  			   For j=0 to 3
                           if j=1 then
				Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
                           else
  			   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
				end if
  			      Next 
  			   Response.Write("</tr>")
               'KJV
                If  Columns.Count>7 then
					Response.Write("<tr bgcolor=#99ccff bordercolor=#cc00CC>") 
					For j=4 to 7 
							   if j=5 then
					Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
							   else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			   End if
                'BBE
               If  Columns.Count>11 then
				   Response.Write("<tr bgcolor=#99ccdd bordercolor=#0000EE>") 
					For j=8 to 11 
							   if j=9 then
					Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
							   else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
               End If
               
			   'WEB
               If  Columns.Count>15 then 
				   Response.Write("<tr bgcolor=#99cccc bordercolor=#cc00DD>") 
				   For j=12 to 15 
							   if j=13 then
					Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
							   else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If
			    
                'YLT
               If  Columns.Count>19 then 
				   Response.Write("<tr bgcolor=#99ccbb bordercolor=#000055>") 
				   For j=16 to 19 
							   if j=17 then
					Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
							   else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If
			    
				'ASV
               If  Columns.Count>23 then 
				   Response.Write("<tr bgcolor=#99ccaa bordercolor=#cc0044>") 
				   For j=20 to 23 
							   if j=21 then
					Response.Write("<td><font size=2>"&Columns(j)&":</font></td>") 
							   else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If
			    
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

  			   <font size=2><a href="reading2.asp?ch=<%=rs("chapter")%>&VL=<%=juan_id%>&GB=true&KJV=<%=KJV%>&BBE=<%=BBE%>&ASV=<%=ASV%>&YLT=<%=YLT%>&WEB=<%=WEB%>"><%=rs("chapter")%></font></a>&nbsp;

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
<br><div align=right><b><a href="searcher2.asp">返回查询界面</a></b></div>

</body></html>