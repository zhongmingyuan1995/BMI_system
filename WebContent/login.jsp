<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang="en">
        <meta charset="UTF-8">
        <title>登录</title>
        <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css" />
		<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap-dialog.min.css">
        <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/commone.css" />
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap-dialog.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>                
    </head>   
    <body>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document" style="width:420px;">
                <div class="modal-content" style="width:420px;">
                    <div class="modal-header" style="background:#428bca; color:#fff;">
                        <h4 class="modal-title" id="myModalLabel">BMI自测</h4>
                    </div>
                    <form action="TestBmi.action" onsubmit="return Check()" method="post">
                    <div class="modal-body">
                        <table>                                                   
                            <tr class="login-tr">
                                <td class="login-key"><font style="color:red">*</font>身高: </td>
                                <td class="login-val"><input type="text"  name="height" id="height"class="form-control login-input"  placeholder="厘米" style="float:left"/></td>
                            </tr>
                            <tr class="login-tr">
                                <td class="login-key"><font style="color:red">*</font>体重: </td>
                                <td class="login-val"><input type="text"  name="weight" id="weight"class="form-control login-input" placeholder="公斤"  style="float:left"/></td>
                            </tr> 
                            <tr class="login-tr">
                                <td class="login-key">性别: </td>
                                <td class="login-val">
                                <select class="form-control" name="gender">
                                   <option value="男">男</option>
                                   <option value="女">女</option>
                                </select>
                                </td>
                            </tr>                       
                            <tr>
                            	<td class="login-key"></td>
                            	<td class="hint-msg"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" >提交</button>                       
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    
    
    <div class="modal fade" id="mymodal" tabindex="-1" role="dialog"
		aria-labelledby="exitModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提醒</h4>
				</div>
				<div class="modal-body">
					 <span class="msg"></span>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
				</div>
			</div>			
		</div>		
	</div>
	<script type="text/javascript">  		
		 function Check(){
			 var height=document.getElementById("height").value;  
			 var weight=document.getElementById("weight").value;
			 if(height==""){
					 $(".msg").text("身高不能为空！");
					 $("#mymodal").modal();				
				 return false;
			 }else if(weight==""){
				 $(function(){
					 $(".msg").text("体重不能为空！！");
					 $("#mymodal").modal();
				 });
				 return false;
			 }else
				 return true;			 
		 }
</script>
</html>