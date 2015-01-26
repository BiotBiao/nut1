
<%@ page import="java.util.List" %>
<%@ page import="com.shinowit.model.TbaMemberinfo" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/12/25
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script>


        function Check_UserName(){
            var name=document.getElementById("UserName").value;
            var aaaa = document.getElementById("sty01");
            var matchResult = true;
            $.ajax({
                type:"get",
                url:"/reg/checkusername",
                data:"username=" + name,
                contentType:"application/json",
                success:function(date) {

                    if(date==true){
                        matchResult = false;
//                    alert("已经存在");
                        aaaa.innerHTML="<img src='/images/duigou.png'/>可用";

                    }else{

                        aaaa.innerHTML = "<img src='/images/error.png'/>已经存在";
                    }
                }
//                document.getElementById('sty01').innerHTML=;
            })

            return matchResult;
        }
        function Check_Email() {
            var Email = document.getElementById("Email").value;
            var aaaa = document.getElementById("sty02");
            var matchResult = true;

            var mailreg = /^\w+@\w+(\.\w+)+$/;
            if (Email.match(mailreg)) {
                aaaa.innerHTML="<img src='/images/duigou.png'/>";
                matchResult = true;

            }else{
                aaaa.innerHTML="<img src='/images/error.png'/>请填写有效的 Email地址";
                matchResult = false;
            }
            return matchResult;
        }

        function ChangePassword() {
            var Password = document.getElementById("PassWord").value;
            var matchResult = true;
            if (Password===null||Password.length < 6 || Password.length > 20) {
                alert("密码或重复密码长度应在6到20个字符之间！");
                matchResult = false;
            }
            return matchResult;
        }
        function Check_RePassWord() {
            var Password = document.getElementById("PassWord").value;
            var RexPassWord = document.getElementById("RexPassWord").value;
            var matchResult = true;
            if (RexPassWord===null||RexPassWord.length < 6 || RexPassWord.length > 20) {
                alert("密码或重复密码长度应在6到20个字符之间！");
                matchResult = false;
            } else if (Password != RexPassWord) {
                alert("密码和重复密码不同，请重新输入！");
                matchResult = false;
            }
            return matchResult;
        }
        function CheckNewUserName() {
            var NewUserName = document.getElementById("NewUserName").value;
            var matchResult = true;
//            var zz= /^[0-9A-Za-z_]{4,20}$/;
            var zz=/^\s*[.A-Za-z0-9_-]{2,16}\s*$/;
            if(!NewUserName.match(zz)||NewUserName===null){
//            if (!(NewUserName <= 9 && NewUserName >= 0) && !(NewUserName >= 'a' && NewUserName <= 'z') && !(NewUserName >= 'A' && NewUserName <= 'Z') && NewUserName != "_") {
                alert("昵称只能是英文、数字、下划线或它们的组合");
                matchResult = false;
            }
            return matchResult;
        }
        function CheckValidateCode(){
            var ValidateCode=document.getElementById("Validate_Code").value;
            var aaaa = document.getElementById("styimg");
            var matchResult = true;
            $.ajax({
                type:"get",
                url:"/reg/checkvalid",
                data:"username=" + name,
                contentType:"application/json",
                success:function(date) {

                    if(date==true){
                        matchResult = false;
//                    alert("已经存在");
                        aaaa.innerHTML="<img src='/images/duigou.png'/>";

                    }else{

                        aaaa.innerHTML = "<img src='/images/error.png'/>验证码错误";
                    }
                }
//                document.getElementById('sty01').innerHTML=;
            })

            if(ValidateCode.length>4){
                alert("长度不得大于4");
                matchResult =false;
            }
            return matchResult;
        }

    </script>
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../css/LoginAndReg.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div id="box">
    <!--top start -->
    <div id="top">
        <a href="index1.jsp"><img src="../images/logo.gif" alt="Estimation" width="255" height="58" border="0"
                                  class="logo"/></a>

        <p class="topDiv"></p>

        <p class="navLeft"></p>
        <ul>
            <li><a href="index1.jsp" class="hover">首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">在线客服</a></li>
            <li class="chart"><a href="chart.html">购物车</a></li>
        </ul>
        <p class="navRight"></p>

        <p class="topDiv"></p>

        <form name="serch" action="#" method="post">
            <input type="text" name="txtbox" value="购物搜索" class="txtBox"/>
            <input type="submit" name="go" value="搜" class="go"/>
        </form>
    </div>
    <!--top end -->
    <div class="nav">
        <ul>
            <li class="first"><a href="#">新品上架</a></li>
            <li><a href="#">坚果炒货</a></li>
            <li><a href="#">补血大枣</a></li>
            <li><a href="#">经典肉类</a></li>
            <li><a href="#">进口零食</a></li>
            <li><a href="#">美味糖果</a></li>
            <li><a href="#">天然干果</a></li>
            <li><a href="#">蒙古奶酪</a></li>
            <li><a href="#">台湾牛轧糖</a></li>
            <li><a href="#">蜜饯果脯</a></li>
            <li class="last">
                <div id="welcome" class="welmsgdiv2"><span>您好，欢迎光临果果香。</span><a href="login.html">登录</a><span
                        class="Lloginfg">&nbsp;</span><a href="reg.html">注册</a></div>
            </li>
        </ul>
    </div>
    <!--header end -->
    <!--guide01 start -->
    <div class="guide01">
        <img src="../images/guide_01.jpg" width="973" height="62" border="0" usemap="#Map"/>
        <map name="Map" id="Map">
            <area shape="rect" coords="398,11,493,51" href="#"/>
            <area shape="rect" coords="540,12,633,51" href="#"/>
            <area shape="rect" coords="684,12,790,53" href="#"/>
            <area shape="rect" coords="830,10,953,54" href="#"/>
        </map>
    </div>
    <!--guide01 end -->
    <!--body start -->
    <div id="body">
        <div id="Login">
            <form name="PartnerForm" action="/reg/reg" method="post" style="margin: 0px;">
                <h1 align="left"><img src="../images/pic_title.gif"></h1>
                <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="lineJL">
                    <tbody>
                    <tr>
                        <td class="sty03" valign="top" width="236" align="right">请填写你的登录用户名</td>
                        <td class="sty01" valign="top" width="219"><input name="UserName" id="UserName" onblur="Check_UserName()"
                                                                          type="text"><span class="Reginput"
                                                                                            id="CheckUsername"></span>
                        </td>
                        <td class="sty04" id="sty01" valign="top" width="425" align="left">请填写你的登录用户名
                        </td>
                    </tr>
                    <tr>
                        <td class="sty03" valign="top" width="236" align="right">请填写您的Email地址：</td>
                        <td class="sty01" valign="top" width="219"><input name="Email" id="Email" onblur="Check_Email()"
                                                                          type="text"><span class="Reginput"
                                                                                            id="span_CheckUsername"></span>
                        </td>
                        <td class="sty04" id="sty02" valign="top" width="425" align="left">　请填写有效的 Email地址作为下次登录的用户名，<br>　同时我们也会给这个地址发送您的帐户信息、订单通知等。
                        </td>
                    </tr>
                    <tr>
                        <td class="sty03" valign="top" align="right">请设定密码：</td>
                        <td class="sty01" valign="top"><input id="PassWord" name="PassWord" maxlength="16"
                                                              onchange="ChangePassword();" value=""
                                                              type="password"><span id="CheckRePassWord"
                                                                                    class="Reginput"></span></td>
                        <td class="sty03 sty04" valign="top" align="left">　密码请设为6-16位字母或数字</td>
                    </tr>
                    <tr>
                        <td class="sty03" valign="top" align="right">请再次输入设定密码：</td>
                        <td class="sty01" valign="top"><input id="RexPassWord" name="RexPassWord" maxlength="16"
                                                              onchange="Check_RePassWord()" value=""
                                                              type="password"><span id="ReCheckRePassWord"
                                                                                    class="Reginput"></span></td>
                        <td align="left">　</td>
                    </tr>
                    <tr>
                        <td class="sty03" valign="top" align="right">昵称：</td>
                        <td class="sty01" valign="top"><input id="NewUserName" name="NewUserName" maxlength="16"
                                                              onchange="CheckNewUserName()" type="text"><span
                                id="CheckNewUserName" class="Reginput"></span></td>
                        <td class="sty03 sty04" valign="top" align="left">　请输入中英文、数字、下划线或它们的组合</td>
                    </tr>
                    <tr>
                        <td class="sty03" valign="top" align="right">请输入验证码：</td>
                        <td class="sty02" colspan="2" valign="top"><input name="Validate_Code" id="Validate_Code"
                                                                          class="inputSty01"
                                                                          onchange="CheckValidateCode()"
                                                                          style="width:100px;" type="text">
                            <img  id="Img1" style="vertical-align: top; padding: 0pt 0pt 0pt 8px;" src="../jsp/image.jsp" onclick="this.src='../jsp/image.jsp?sRand='+Math.random();"  border="0">
                            <span class="sty03 sty04" id="styimg" valign="top" align="left"></span>
                            <span class="sty03 sty04"><a
                                    <%--href="javascript:this.src='../jsp/image.jsp?sRand='+Math.random();"--%>onclick=""
                                    >看不清，换一张</a></span>
                            <span class="Reginput" id="CheckValidateCode" style="width: 220px;"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>　</td>
                        <td align="right"><input src="../images/submit.gif" style="width:91px; height:25px; border:0;"
                                                 alt="完成注册" type="submit"></td>
                        <td>　</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <br class="spacer"/>
    </div>
    <!--footer start -->
    <div id="footer">
        <ul>
            <li><a href="#">首页</a>|</li>
            <li><a href="#">关于我们</a>|</li>
            <li><a href="#">新闻资讯</a>|</li>
            <li><a href="#">价单下载</a>|</li>
            <li><a href="#">联系我们</a>|</li>
        </ul>
        <p class="copyright">Copyright 2010 vancl.com All Rights Reserved 冀ICP证xxxxxx号

        </p>

        <p class="design"><a href="http://www.CSSK8.com/" target="_blank" class="link">启奥科技</a></p>
    </div>
    <!--footer end -->
    <!--body end -->
</div>
<!--box-->
</body>
</html>
