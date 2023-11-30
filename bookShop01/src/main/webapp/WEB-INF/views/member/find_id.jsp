<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

 
<script>
 
$(document).ready(function() {
var msg = "${msg}";
if(msg != ""){
alert(msg);    
}
});
 
 
function fnSubmit() {
 
var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var tel_rule = /^\d{2,3}-\d{3,4}-\d{4}$/;
 
if ($("#me_name").val() == null || $("#me_name").val() == "") {
alert("이름을 입력해주세요.");
$("#me_name").focus();
 
return false;
}
 
if ($("#me_tel").val() == null || $("#me_tel").val() == "") {
alert("전화번호를 입력해주세요.");
$("#me_tel").focus();
 
return false;
}
 
if(!tel_rule.test($("#me_tel").val())){
alert("전화번호 형식에 맞게 입력해주세요.");
return false;
}
 
 
if (confirm("아이디를 찾으시겠습니까?")) {
 
$("#createForm").submit();
 
return false;
}
}
 
</script>
 
<head>
 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
 
<title>아이디 찾기</title>
 
<!-- Custom fonts for this template-->
<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
rel="stylesheet">
 
<!-- Custom styles for this template-->
<link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
 
</head>
 
<form commandName="searchVO" id="createForm" action="${contextPath}/member/find_id_result" method="post">
 
<body class="bg-gradient-primary">

<div class="card-body p-0">
<!-- Nested Row within Card Body -->
  <div class="text-center">
      <h1 class="h4 text-gray-900 mb-2">아이디를 잊으셨나요?</h1>
      <p class="mb-4">이름과 전화번호를 입력해 아이디를 조회하실 수 있습니다.</p>
  </div>
      <div class="form-group">
          <input type="text" class="form-control form-control-user"
              id="me_name" name="me_name"
              placeholder="이름을 입력해주세요.">
      </div>
      <div class="form-group">
          <input type="email" class="form-control form-control-user"
              id="me_tel" name="me_tel"
              placeholder="전화번호를 입력해주세요.">
      </div>
      <a href="javascript:void(0)" onclick="fnSubmit(); return false;" class="btn btn-primary btn-user btn-block">
          	아이디찾기
      </a>
  <hr>
</div>
</div>
</div>
</div>
</div>
 
</div>
 
</div>
 
</div>
 
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
 
<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
 
</body>
 
 
</form>
</html>
