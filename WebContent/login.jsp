<%@ page language="java" pageEncoding="GBK"
	import="com.javatrain.bbs.entity.*"%>
<%
request.setCharacterEncoding("GBK");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<TITLE>����ѧԱ��̳--��¼</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<Link rel="stylesheet" type="text/css" href="style/style.css"/>
<script language="javascript">
function check() {
 if(document.loginForm.uName.value==""){
    alert("�û�������Ϊ��");
    return false;
 }
 if(document.loginForm.uPass.value==""){
    alert("���벻��Ϊ��");
    return false;
 }
}
</script>
</HEAD>

<BODY>
<DIV>
	<IMG src="image/logo.gif">
</DIV>
<!--      �û���Ϣ����¼��ע��        -->
<%
if(session.getAttribute("user") == null){
%>
	<DIV class="h">
		����δ��<a href="login.jsp">��¼</a>
		&nbsp;| &nbsp; <A href="reg.jsp">ע��</A> |
	</DIV>
<%
} else {
	User loginUser = (User)session.getAttribute("user");
%>
	<DIV class="h">
		���ã���<%=loginUser.getUName() %>
		&nbsp;| &nbsp; <A href="manage/doLogout.jsp">�ǳ�</A> |
	</DIV>

<%
}
%>

<BR/>
<!--      ����        -->
<DIV>
	&gt;&gt;<B><a href="index.jsp">��̳��ҳ</a></B>
</DIV>
<!--      �û���¼����        -->
<DIV class="t" style="MARGIN-TOP: 15px" align="center">
	<FORM name="loginForm" onSubmit="return check()" action="manage/doLogin.jsp" method="post">
		<br/>�û��� &nbsp;<INPUT class="input" tabIndex="1"  type="text"      maxLength="20" size="35" name="uName">
		<br/>�ܡ��� &nbsp;<INPUT class="input" tabIndex="2"  type="password"  maxLength="20" size="40" name="uPass">
		<br/>��֤�� &nbsp;<INPUT class="input" tabIndex="3"  type="text"  maxLength="10" size="10" name="authimg"><img alt="��֤��ͼƬ" src="authimg" align="absmiddle" />
		<br/><INPUT class="btn"  tabIndex="6"  type="submit" value="�� ¼">
	</FORM>
</DIV>
<!--      ����        -->
<BR/>
<CENTER class="gray">2007 Beijing Aptech Beida Jade Bird
Information Technology Co.,Ltd ��Ȩ����</CENTER>
</BODY>
</HTML>