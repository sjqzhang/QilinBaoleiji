<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>{{$language.SessionsList}}</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="{{$template_root}}/all_purpose_style.css" rel="stylesheet" type="text/css" />

<script src="./template/admin/cssjs/jscal2.js"></script>
<script src="./template/admin/cssjs/cn.js"></script>
<link type="text/css" rel="stylesheet" href="./template/admin/cssjs/jscal2.css" />
<link type="text/css" rel="stylesheet" href="./template/admin/cssjs/border-radius.css" />
<SCRIPT>
	function my_confirm(str){
		if(!confirm("确认要" + str + "？"))
		{
			window.event.returnValue = false;
		}
	}
	function chk_form(){
		for(var i = 0; i < document.list.elements.length;i++){
			var e = document.list.elements[i];
			if(e.name == 'chk_member[]' && e.checked == true)
				return true;
		}
		alert("您没有选任何记录！");
		return false;
	}
</SCRIPT>
</head>
<body>
<style type="text/css">
a {
    color: #003499;
    text-decoration: none;
} 
a:hover {
    color: #000000;
    text-decoration: underline;
}
</style>
<td width="84%" align="left" valign="top">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F1F1F1">
  <tr>
    <td >

	  </td>
  </tr>
  <tr><td>
  <table bordercolor="white" cellspacing="0" cellpadding="5" border="0" width="100%" class="BBtable1">
	 <FORM method=post name=list     action=admin.php?controller=admin_authpriv&amp;a=delete_all&amp;t=linux_authpriv>
					
				<tr>
		        <TH width="2%" class="list_bg1">选</TH>
		          <TH width="5%" class="list_bg1">时间</TH>
				  <TH width="8%" class="list_bg1">操作</TH>
		          <TH width="4%" class="list_bg1">用户名</TH>
				
				  <TH width="5%" class="list_bg1">组名</TH>
				   <TH width="37%" class="list_bg1">日志信息</TH>		 
 					</tr>
					 {{section name=t loop=$all}}
   <TR class="list_tr_bg{{if $smarty.section.t.index % 2 ne 0}}1{{/if}}">
 					<TD>{{if $smarty.session.ADMIN_LEVEL }}<INPUT value={{$all[t].id}} type=checkbox name=chk_member[]>{{/if}}</TD>
		          <TD>{{$all[t].datetime}}</TD>
				  <TD>{{$all[t].event}}</TD>
				  <TD>{{$all[t].username}}</TD>
		        <TD>{{$all[t].groupname}}</TD>
 				  <TD>{{$all[t].loginfo}}</TD>
				<!--
				  <TD>
				  	<input name="detail" type="button" value="详细"  onclick="javascript:window.open('admin.php?controller=admin_authpriv&action=detail&t=linux_authpriv&id={{$all[t].id}}','newwin')" class="bnnew2"  />
				  	
				  </TD>
				  -->  
					</tr>
					{{/section}}
		<TR>
          <TD colSpan=8 align=left>{{if $smarty.session.ADMIN_LEVEL }}
          <INPUT  onclick="javascript:for(var i=0;i<this.form.elements.length;i++){var e=this.form.elements[i];if(e.name=='chk_member[]')e.checked=this.form.select_all.checked;}" 
            value=checkbox type=checkbox name=select_all>选本页显示的所有记录&nbsp;&nbsp;<INPUT class=an_06 onClick="my_confirm('删除所选记录');if(!chk_form())  return false;" value=批量删除所选记录 type=submit>      {{/if}}
            </TD>
         </TR>
				</FORM>	
					<tr>
						<td height="45" colspan="8" align="right" bgcolor="#FFFFFF">
							{{$language.all}}{{$session_num}}{{$language.Session}}  {{$page_list}}  {{$language.Page}}：{{$curr_page}}/{{$total_page}}{{$language.page}}  {{$items_per_page}}条/每页 
							  转到第<input name="pagenum" type="text" size="2" onKeyPress="if(event.keyCode==13) window.location='{{$curr_url}}&page='+this.value;" class="wbk">
							  页&nbsp;  
						</td>
					</tr>
				</table>
	</td>
  </tr>
</table></td>


</body>
</html>


