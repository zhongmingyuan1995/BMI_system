<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang="en">
        <meta charset="UTF-8">
        <title>登录</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
		<link type="text/css" rel="stylesheet" href="css/bootstrap-dialog.min.css">
        <link type="text/css" rel="stylesheet" href="css/commone.css" />
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-dialog.min.js"></script>
        <script type="text/javascript" src="js/login.js"></script>                
    </head>   
    <body>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document" style="width:420px;">
                <div class="modal-content" style="width:420px;">
                    <div class="modal-header" style="background:#428bca; color:#fff;">
                        <h4 class="modal-title" id="myModalLabel">BMI结果</h4>
                    </div>
                    <form action="result.jsp" onsubmit="return Check()" method="post">
                    <div class="modal-body">
                        <table>                                                         
                            <tr class="login-tr">
                                <td class="" ><span class="glyphicon glyphicon-grain" style="color:#428bca"></span>&nbsp;&nbsp;标准体重: </td>
                                <td class="login-val"><%=request.getAttribute("bzweight") %></td>
                            </tr>                       
                            <tr class="login-tr">
                          
                                <td style="text-align:left"><span class="glyphicon glyphicon-grain" style="color:#428bca"></span>&nbsp;&nbsp;BMI: </td>
                                <td class=""><%=request.getAttribute("bmi") %>(22-23最佳)</td>   
                            </tr>
                            <tr class="login-tr">                           	
                                <td style="text-align:left"><span class="glyphicon glyphicon-grain" style="color:#428bca"></span>&nbsp;&nbsp;状况: </td>
                                <td class=""><%=request.getAttribute("state") %></td>   
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="login.jsp" class="btn btn-primary" ><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a>                       
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
	<div class="modal fade" id="exitModal" tabindex="-1" role="dialog"
		aria-labelledby="exitModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提醒</h4>
				</div>
				<div class="modal-body">你确认要退出吗？</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消
					</button>
					<a href="login.jsp" class="btn btn-primary">确定</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
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
					 $(".msg").text("体重不能为空！");
					 $("#mymodal").modal();
				 });
				 return false;
			 }else
				 return true;			 
		 }
</script>
</html>