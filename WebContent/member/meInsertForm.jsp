<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>
<%
	/* position for grid system */	
	int offset = 2 ;
	int mywidth = twelve - 2 * offset ;
	int formleft = 3 ;
	int formright = twelve - formleft ;
	int rightButton = 2 ;
%> 
<!DOCTYPE html><html>
<head>
	<script>
		function idCheck(){
			alert('아이디 중복 체크') ;
		}
		function zipfind(){
			alert('우편 번호 찾기') ;
		}
	
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();	
		});
	</script>
</head>
<body>
	<div class="container col-sm-offset-<%=offset%> col-sm-<%=mywidth%>">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h4>회원 가입</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="" method="post">
				    <div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="id">아이디</label>
				      	<div class="col-sm-<%=formright-rightButton%>">
				        	<input type="text" class="form-control" id="id" placeholder="아이디를 넣어 주세요." 
				        		name="id" data-toggle="tooltip" title="아이디는 4글자 이상 10글자 이하로 입력해주세요.">
				      	</div>
				      	<div class="col-sm-<%=rightButton%>">
				        	<input type="button" value="중복 체크" 
				        		class="btn btn-info" onclick="idCheck();"> 
				      	</div>
				    </div>
					<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="name">이름</label>
				      	<div class="col-sm-<%=formright%>">
				        	<input type="text" class="form-control" id="name" name="name">
				      	</div>
				    </div>				    
				    <div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="password">비밀 번호</label>
				      	<div class="col-sm-<%=formright%>">          
				        	<input type="password" class="form-control" id="password" placeholder="비밀 번호를 넣어 주세요." name="password">
				      	</div>
				    </div>	
	    			<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="gender">성별</label>
				      	<div class="col-sm-<%=formright%>">				        	
				        	<label class="radio-inline">
				        		<input type="radio" name="gender">남자
				        	</label>
							<label class="radio-inline">
								<input type="radio" name="gender">여자
							</label>
				      	</div>
				    </div>
					<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="birth">생일</label>
				      	<div class="col-sm-<%=formright%>">
				        	<input type="text" class="form-control" id="birth" name="birth">
				      	</div>
				    </div>				    
				    <div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="marriage">결혼 여부</label>
				      	<div class="col-sm-<%=formright%>">
				        	<select class="form-control" id="marriage" name="marriage">
				        		<option value="-">--- 결혼 여부를 선택하세요.</option>
							    <option value="결혼">결혼</option>
							    <option value="이혼">이혼</option>
							    <option value="미혼">미혼</option>
						  	</select>
				      	</div>
				    </div>	
	    			<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="salary">급여</label>
				      	<div class="col-sm-<%=formright%>">
				        	<input type="number" class="form-control" id="salary" name="salary">
				      	</div>
				    </div>
					<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="zipcode">우편 번호</label>
				      	<div class="col-sm-<%=formright-rightButton%>">
				        	<input type="text" class="form-control" disabled="disabled" 
				        		id="fakezipcode" name="fakezipcode">
				        	<input type="text" name="zipcode">
				      	</div>
				      	<div class="col-sm-<%=rightButton%>">
				        	<input type="button" value="우편 번호 찾기" class="btn btn-info"
				        		onclick="zipfind();">
				      	</div>
				    </div>				    
					<div class="form-group">
				      	<label class="control-label col-sm-<%=formleft%>" for="address">주소</label>
				      	<div class="col-sm-<%=formright%>">
				        	<input type="text" class="form-control" disabled="disabled" 
				        		id="fakeaddress" name="fakeaddress">
				        	<input type="text" name="address">
				      	</div>
				    </div>				    
				    <div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="manager">매니저</label>
				      	<div class="col-sm-<%=formright%>">          
				        	<select class="form-control" id="manager" name="manager">
				        		<option value="-">--- 매니저를 선택하세요.</option>
							    <option value="kim09">김구</option>
							    <option value="soon">유관순</option>
						  	</select>				        	
				      	</div>
				    </div>					    
				    <div class="form-group">        
				      	<div class="col-sm-offset-<%=offset%> col-sm-<%=mywidth%>">
				        	<button type="submit" class="btn btn-default">회원 가입</button>
				        	&nbsp;&nbsp;&nbsp;
				        	<button type="reset" class="btn btn-default">초기화</button>				        	
				      	</div>
				    </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>