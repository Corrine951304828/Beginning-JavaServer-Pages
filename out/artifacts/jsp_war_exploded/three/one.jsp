<%--
  Created by IntelliJ IDEA.
  User: corrine
  Date: 2019/3/26
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tra" %>
<%@page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<p>请输入三角形三边长：
<form action="" method="post" name=form>
    <input type="text" name="a" id="length1">
    <BR><input type="text" name="b" id="length2">
    <BR><input type="text" name="c" id="length3">
    <BR><Input type="submit"value="送出" name=submit1>
</form>
<%String a=request.getParameter("a");//取值并转化为字符串
    String b=request.getParameter("b");
    String c=request.getParameter("c");
%>
<tra:GetArea7 a="<%=a %>" b="<%=b %>" c="<%=c %>"/>//通过attribute传参
<% NumberFormat f=NumberFormat.getInstance();
    f.setMaximumFractionDigits(3);//设置保留三位小数
    if(area!=null)
    {double d=area.doubleValue();
        String str=f.format(d);
        out.println(str);}
%>
</body>
</html>