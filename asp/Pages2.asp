<!--#Include File="adovbs.inc"--> 
  <%''建立数据库连接
   dim conn   
   dim connstr,db
   dim rs_PageSize

'更改数据库名字 
db="data/data.mdb" 
Set conn = Server.CreateObject("ADODB.Connection") 
  connstr="driver={Microsoft Access Driver (*.mdb)};dbq=" & Server.MapPath(db)
  
conn.Open connstr 

     Set rs=Server.CreateObject("ADODB.Recordset") ''创建Recordset对象 
  rs.CursorLocation=adUseClient ''设定记录集指针属性 
  ''设定一页内的记录总数，可根据需要进行调整 
  rs.PageSize=30
  ''设置查询语句 

  chapter_id=request("VN")
  key=request("QR")
  VSERION =request("VSERION")
  GB=request("sGB")
KJV=request("sKJV")
BBE=request("sBBE")
YLT=request("sYLT")
ASV=request("sASV")
WEB=request("sWEB")
  'Response.Write("VN")
  ''Response.Write(request("VN"))
  'Response.Write("QR")
  'Response.Write(request("QR"))
FromSQL = " from b_gb a"
selectSQL = "select '和合本' "

	

   commSQL = ",  a.name, a.book,  a.chapter, a.section, a.content "
  If VSERION ="GB" Then
   'id, book,name, chapter, section, content 
      selectSQL = "select '和合本' " & commSQL
      FromSQL = " from b_gb a "
  	  
	  
  ElseIf  VSERION ="KJV"  Then
      selectSQL = "select 'KJV' " & commSQL
      FromSQL = " from b_kjv  a "
	   
	  
  ElseIf  VSERION ="BBE"  Then
      selectSQL = "select 'BBE' " & commSQL
      FromSQL = " from b_bbe  a "
	  
	 
  ElseIf  VSERION ="WEB"  Then
      selectSQL = "select 'WEB' " & commSQL
      FromSQL = " from b_web  a "
	   
	 
  ElseIf  VSERION ="ASV"  Then
      selectSQL = "select 'ASV' " & commSQL
      FromSQL = " from b_asv1901  a "
	  
	  
  ElseIf  VSERION ="YLT"  Then
      selectSQL = "select 'YLT' " & commSQL
      FromSQL = " from b_ylt  a "
	  
	  
  
  End If

 orderbySQL = "   order by a.id,a.chapter,a.section  "
	

<!-- 模糊代码开始-->
sql1="" 
key=Rtrim(LTrim(key))'去掉获得的字符串最左边空格和最右边空格
keytmp=split(key," ") '将输入的字符串根据空格分开，获得一个数组
max=ubound(keytmp) '得出这个数组的维数，即输入的关键字个数
if max=0 then '如果max等于0说明只输入了一个关键字，那么就不需要循环处理
'sql1=sql1&" content like '%" & keytmp(i) & "%' order by id,chapter,section" '网站关键字模糊搜索

  whereSQL = " where a.content like '%" & keytmp(i) & "%' "
 


showkey=showkey&keytmp(i)
else '如果含有多个关键字，采用循环处理sql语句
for i=0 to max '如果关键字很多，我们要求每一个搜索都要匹配每一个关键字，通过循环来实现
if i=0 then '写入下面sql语句作为开头，仔细研究一下下面的代码
'sql1=sql1&" (content like '%" & keytmp(i) & "%' and "
whereSQL = " where (a.content like '%" & keytmp(i) & "%' and "
showkey=showkey&keytmp(i)&" * "
else
if i=max then '如果循环到最后一个关键字，写入下面sql语句作为结尾
'sql1=sql1&" content like '%" & keytmp(i) & "%') order by id,chapter,section"
whereSQL = whereSQL & "  a.content like '%" & keytmp(i) & "%') "
showkey=showkey&keytmp(i)
else '如果关键自己不是开头的也不是结尾的，那么循坏写入下面的sql语句
'sql1=sql1&" content like '%" & keytmp(i) & "%' and "
whereSQL =whereSQL & "  a.content like '%" & keytmp(i) & "%' and "
showkey=showkey&keytmp(i)&" * "
end if
end if
next '循环结束
end if
<!-- 模糊代码结束-->

  StrSQL=""
	if chapter_id="ALL" then
	 
		'StrSQL="select id, book,name, chapter, section, content " & FromSQL & "  WHERE book>=1 and book <= 66 and " &sql1
		whereSQL = whereSQL & "and  a.book>=1 and a.book <= 66 "
	else if chapter_id="01" then 
	 
		'StrSQL="select id, book,name, chapter, section, content " & FromSQL & "   WHERE book>=1 and book <= 39 and " &sql1
		whereSQL = whereSQL & "and  a.book>=1 and a.book <= 39 "
	else if chapter_id="02" then
	  
		'StrSQL="select id, book,name, chapter, section, content " & FromSQL & "   WHERE book>=40 and book <= 66 and " &sql1
	else
		chapter_id = Cint(chapter_id)
		'StrSQL="select id, book,name, chapter, section, content  " & FromSQL & "   WHERE chapter= " & chapter_id & " and " &sql1
		whereSQL = whereSQL & "and  a.chapter= " & chapter_id 
	end If
	
	end if
	end if
  ' Response.Write(StrSQL)

  
   If GB="GB" AND  VSERION <>"GB"  Then
	selectSQL = selectSQL & " ,'和合本',    b_gb.name,  b_gb.book, b_gb.chapter, b_gb.section, b_gb.content "
	fromSQL = fromSQL & " ,b_gb   "
	whereSQL = whereSQL & "  and  b_gb.id=a.id  "
	End If

	If KJV="KJV" AND  VSERION <>"KJV"   Then
	selectSQL = selectSQL & " ,'KJV', b_KJV.name, b_KJV.book, b_KJV.chapter, b_KJV.section, b_KJV.content "
	fromSQL = fromSQL & " ,b_KJV   "
	whereSQL = whereSQL & "  and  a.id=b_KJV.id  "
	End If

	If BBE="BBE"  AND  VSERION <>"BBE"  Then
	selectSQL = selectSQL &  " ,'BBE',   b_bbe.name,b_bbe.book,b_bbe.chapter, b_bbe.section, b_bbe.content "
	fromSQL = fromSQL &  " ,b_bbe   "
	whereSQL =  whereSQL &  "  and  a.id=b_bbe.id  "
	End If

	If WEB="WEB"  AND  VSERION <>"WEB"  Then
	selectSQL = selectSQL &  " ,'WEB',   b_web.name,b_web.book,b_web.chapter, b_web.section, b_web.content "
	fromSQL = fromSQL &  " ,b_web   "
	whereSQL =  whereSQL &  "  and  a.id=b_web.id  "
	End If

	If YLT="YLT"  AND  VSERION <>"YLT"  Then
	selectSQL = selectSQL &  " ,'YLT',  b_ylt.name,b_ylt.book,b_ylt.chapter, b_ylt.section, b_ylt.content "
	fromSQL = fromSQL &  " ,b_ylt   "
	whereSQL =  whereSQL &  "  and  a.id=b_ylt.id  "
	End If

	If ASV="ASV"  AND  VSERION <>"ASV"  Then
	selectSQL = selectSQL &  " ,'ASV',  b_asv1901.name, b_asv1901.book,b_asv1901.chapter, b_asv1901.section, b_asv1901.content "
	fromSQL = fromSQL &  " ,b_asv1901   "
	whereSQL =  whereSQL &  "  and  a.id=b_asv1901.id  "
	End If


	SQLstr= selectSQL & fromSQL & whereSQL  & orderbySQL
 'Response.write(SQLstr)
  rs.Open SQLstr,conn,1,1

  %>
  <HTML> 
  <HEAD> 
  <meta http-equiv="content-type" content="text/html;charset=utf-8">
  <title>查询结果</title> 
  <script language=JavaScript> 
  //点击"[第一页]"时响应： 
  function PageFirst() 
  { 
  document.MyForm.CurrentPage.selectedIndex=0; 
  document.MyForm.CurrentPage.onchange(); 
  } 
  //点击"[上一页]"时响应： 
  function PagePrior() 
  { 
  document.MyForm.CurrentPage.selectedIndex--; 
  document.MyForm.CurrentPage.onchange(); 
  } 
  //点击"[下一页]"时响应： 
  function PageNext() 
  { 
  document.MyForm.CurrentPage.selectedIndex++; 
  document.MyForm.CurrentPage.onchange(); 
  } 
  //点击"[最后一页]"时响应： 
  function PageLast() 
  { 
  document.MyForm.CurrentPage.selectedIndex=document.MyForm.CurrentPage.length-1; 
  document.MyForm.CurrentPage.onchange(); 
  } 
  //选择"第？页"时响应： 
  function PageCurrent() 
  { //Pages.asp是本程序的文件名 
  url1='Pages2.asp?CurrentPage1='+(document.MyForm.CurrentPage.selectedIndex+1);
  url2=url1+'&VN=<%= request("VN")%>&QR=<%=request("QR")%>';
  //alert(url2);
  document.MyForm.action=url2;
  //  alert(document.MyForm.action);
  document.MyForm.submit(); 
  //alert(1);
  } 
  
function Reading(bookid,chapterid){
	var url = "reading.asp?ch="+chapterid+"&VL="+bookid;
	url = url + "&KJV="+document.getElementById("sKJV").value; 
	url = url + "&BBE="+document.getElementById("sBBE").value; 
	url = url + "&ASV="+document.getElementById("sASV").value; 
	url = url + "&WEB="+document.getElementById("sWEB").value; 
	url = url + "&YLT="+document.getElementById("sYLT").value; 
	url = url + "&GB=true";
	
	return window.open(url);
}
  </Script> 
  </HEAD> 
  <BODY bgcolor="#ffffcc" link="#008000" vlink="#008000" alink="#FF0000""> 
   
  <%
IF rs.Eof THEN 
  Response.Write("<div align=center><font size=3 color=#000080>[数据库中没有记录！]</font></div>") %> 
<br><div align=center><a href="searcher.asp"><font size=3 color=#000000>返回查询页面</font></a></div>
  <% 
ELSE 
  ''指定当前页码 
  If request("CurrentPage")="" Then 
  rs.AbsolutePage=1 
  Else 
  rs.AbsolutePage=CLng(request("CurrentPage")) 
  End If 
     


  ''创建表单MyForm,方法为Get 
  Response.Write("<form method=GET name=MyForm>  <INPUT NAME=VSERION  value='"& request("VSERION")&"' hidden>  <INPUT NAME=QR  value='"& request("QR")&"' hidden>  <INPUT NAME=VN  value='" & request("VN")& "' hidden>") 
  
  Response.Write(" <INPUT  NAME=sGB  id=sGB  value='"& request("sGB")&"' hidden> ") 
   Response.Write(" <INPUT NAME=sKJV id=sKJV  value='"& request("sKJV")&"' hidden> ")
    Response.Write(" <INPUT NAME=sBBE id=sBBE  value='"& request("sBBE")&"' hidden> ")
	 Response.Write(" <INPUT NAME=sASV id=sASV  value='"& request("sASV")&"' hidden> ")
	  Response.Write(" <INPUT NAME=sWEB id=sWEB  value='"& request("sWEB")&"' hidden> ")
	   Response.Write(" <INPUT NAME=sYLT  id=sYLT value='"& request("sYLT")&"' hidden> ")
  Response.Write("<p align=center><font size=2 color=#008000>") 
  ''设置翻页超链接 
  if rs.PageCount=1 then 
  Response.Write("[第一页] [上一页] [下一页] [最后一页] ") 
  else 
  if rs.AbsolutePage=1 then 
  Response.Write("[第一页] [上一页] ") 
  Response.Write("[<a href=Javascript:PageNext()>下一页</a>] ") 
  Response.Write("[<a href=javascript:PageLast()>最后一页</a>] ") 
  else 
  if rs.AbsolutePage=rs.PageCount then 
  Response.Write("[<a href=javascript:PageFirst()>第一页</a>] ") 
  Response.Write("[<a href=javascript:PagePrior()>上一页</a>] ") 
  Response.Write("[下一页] [最后一页] ") 
  else 
  Response.Write("[<a href=javascript:PageFirst()>第一页</a>] ") 
  Response.Write("[<a href=javascript:PagePrior()>上一页</a>] ") 
  Response.Write("[<a href=javascript:PageNext()>下一页</a>] ") 
  Response.Write("[<a href=javascript:PageLast()>最后一页</a>] ") 
  end if 
  end if 
  end if 
  ''创建下拉列表框，用于选择浏览页码 
  Response.Write("第<select size=1 name=CurrentPage onchange=PageCurrent()>") 
  For i=1 to rs.PageCount 
  if rs.AbsolutePage=i then 
  Response.Write("<option selected>"&i&"</option>") ''当前页码 
  else 
  Response.Write("<option>"&i&"</option>") 
  end if 
  Next 
  Response.Write("</select>页/共"&rs.PageCount&"页 共"&rs.RecordCount&"条记录") 
  Response.Write(" 本页")
  count=0
  if rs.AbsolutePage<>rs.PageCount then
	count=30
  else
	count=rs.RecordCount-(rs.PageCount-1)*30
  end if
  Response.Write(""&count&"")
  Response.Write("条记录</font><p>")
  Response.Write("</form>") %>
  <div align=right><a href="searcher.asp"><font size=2 color="blue">返回查询页面</font></a></div>
  <div align=center><b><font size=2 color="black">查询关键字：<%=showkey%></font></b></div>
<%   

   ''创建表单MyForm  结束
  
   ''创建表格，用于显示 
  Response.Write("<table align=center cellspacing=1 cellpadding=2 border=0") 
  Response.Write(" bordercolor=#99CCFF bordercolordark=#b0e0e6 bordercolorlight=#000066>") 
   
  Response.Write("<tr bgcolor=#ccccff bordercolor=#000066>") 
   
  Set Columns=rs.Fields 
   
  ''显示表头 
  'For i=0 to Columns.Count-1 
  'Response.Write("<td align=center >") 
  'Response.Write("<font size=2><b>"&Columns(i).name&"</b></font></td>") 
  'Next 
  'Response.Write("</tr>") %>
  <td align=center> 
  <font size=2><b>版本</b></font></td>
   <td align=center> 
  <font size=2><b>卷   名</b></font></td>
  <td align=center> 
  <font size=2><b>  章 </b></font></td>
  <td align=center> 
  <font size=2><b>  节 </b></font></td>
  <td align=center> 
  <font size=2><b>经   文</b></font></td>
  </tr> 
<%
  ''显示内容 
  For i=1 to rs.PageSize 
  'Response.Write("<tr bgcolor=#99ccff bordercolor=#000066>") 
  ''For j=0 to Columns.Count-1 
  'Response.Write("<td><font size=2>和合本</font></td>") 
  'Response.Write("<td><font size=2>"&rs("name")&"</font></td>") 
  'Response.Write("<td><font size=2>"&rs("chapter")&":</font></td>") 
  'Response.Write("<td><font size=2>"&rs("section")&"</font></td>") 
 ' Response.Write("<td><font size=2>"&rs("content")&"</font></td>") 
  ''Next 
  Response.Write("</tr>") 
   Response.Write("<tr bgcolor=#99ddff bordercolor=#000066>") 
       For j=0 to 5
            if j=2 then
						Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
			           j=j+1
						Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
            else
  			   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
				end if
  			      Next 
  			   Response.Write("</tr>")
               'KJV
                If  Columns.Count>11 then
					Response.Write("<tr bgcolor=#99ccff bordercolor=#cc00CC>") 
					For j=6 to 11 
							   if j=8 then
					Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
				j=j+1
				Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
				else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			   End if
                'BBE
               If  Columns.Count>17 then
				   Response.Write("<tr bgcolor=#99ccdd bordercolor=#0000EE>") 
					For j=12 to 17 
							   if j=14 then
					Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
				j=j+1
				Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
				else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
               End If
               
			   'WEB
               If  Columns.Count>23 then 
				   Response.Write("<tr bgcolor=#99cccc bordercolor=#cc00DD>") 
				   For j=18 to 23 
							   if j=20 then
					Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
				j=j+1
				Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
				else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If
			    
                'YLT
               If  Columns.Count>29 then 
				   Response.Write("<tr bgcolor=#99ccbb bordercolor=#000055>") 
				   For j=24 to 29 
							   if j=26 then
					Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
				j=j+1
				Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
				else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If
			    
				'ASV
               If  Columns.Count>35 then 
				   Response.Write("<tr bgcolor=#99ccaa bordercolor=#cc0044>") 
				   For j=30 to 35 
							   if j=32 then
					Response.Write("<td><font size=2><A href='javascript:Reading("&Columns(j)&",")
				j=j+1
				Response.Write(Columns(j)&");'>"&Columns(j)&"</A>:</font></td>") 
				else
				   Response.Write("<td><font size=2>"&Columns(j)&"</font></td>") 
					end if
					  Next 
				   Response.Write("</tr>")
			    End If

  rs.movenext 
  if rs.EOF then exit for 
  Next 
   
  Response.Write("</table>") 
''创建表格，用于显示  结束
  response.end
 
  rs.close
  Set rs = Nothing 
  Conn.close 
  Set conn = Nothing 
END IF
  %> 
  </BODY> 
  </HTML> 
