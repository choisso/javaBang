<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>
<html>
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${ctRoot}/resources/loginPage/css/main.css">
<!--===============================================================================================-->


<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script
	src="${ctRoot}/resources/loginPage/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script
	src="${ctRoot}/resources/loginPage/vendor/bootstrap/js/popper.js"></script>
<script
	src="${ctRoot}/resources/loginPage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script
	src="${ctRoot}/resources/loginPage/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script
	src="${ctRoot}/resources/loginPage/vendor/daterangepicker/moment.min.js"></script>
<script
	src="${ctRoot}/resources/loginPage/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script
	src="${ctRoot}/resources/loginPage/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="${ctRoot}/resources/loginPage/js/main.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
</head>

<script type="text/javascript">
	$(document).ready(function() {
		// name=loginFrom ?????? ????????? ?????? 
		// class=login ?????? ????????? ?????? ????????? ?????? ??? ????????? ??????
		$("[name=login]").click(function() {

			checkLoginForm();
		});
	});

	function checkLoginForm() {

		if (is_empty("[name=b_id]")) {
			alert("????????? ?????? ??????");
			$('[name=b_id]').val("");
			return;
		}

		if (is_empty("[name=b_pwd]")) {
			alert("?????? ?????? ??????");
			$('[name=b_pwd]').val("");
			return;
		}

		//alert($("[name=loginForm]").serialize())
		$.ajax({
			// ?????? ??? ?????? URL ?????? ??????
			url : "${ctBuyerRoot}/loginProc.do"

			// form ?????? ?????? ????????? ???, ?????????????????? ????????? ?????? ??????
			,
			type : "post"

			//????????? ?????? ??? ??????
			,
			data : $("[name=loginForm]").serialize() + "&master=true"  

			,
			success : function(data) {
				if (data.buyerCnt == "1") {
					//alert("????????????");
					location.replace("/javaBang/master/homeForm.do");
				} else if (data.buyerCnt == "0") {
					alert("?????????, ?????? ???????????? ??????. ???????????????");
				} else {
					alert("?????? ?????? ??????, ??????????????? ?????? ??????");
				}
			}
			// ????????? ????????? ????????? ??????
			,
			error : function() {
				alert("?????? ?????? ??????");
			}

		})

	}
</script>

<body >

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w"
					name="loginForm" method="post">
					<span class="login100-form-title p-b-51"> JAVABANG MASTER Login </span>

					<%-- <form name="loginForm" method="post" action="${ctBuyerRoot}/homeForm.do"> --%>
					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Username is required">
						<input class="input100" type="text" name="b_id"
							placeholder="E-mail"> <span class="focus-input100"></span>
					</div>


					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Password is required">
						<input class="input100" type="password" name="b_pwd"
							placeholder="Password"> <span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<!-- <div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1"> ????????? ?????? ???????????? </label>
						</div> -->

						<!-- <div>
							<a href="#" class="txt1"> ?????????????????????? </a>
						</div> -->
					</div>


					<!-- </form> -->
				</form>
				<div class="container-login100-form-btn m-t-17">
					<button class="login100-form-btn" name="login">ENTER</button>
				</div>
				<div class="container-form-btn m-t-2">
					<button class="btn btn-danger" name="signup"
						onclick="location.replace('${ctBuyerRoot}/signupForm.do')"
						style="width: 150px; height: 60px;">????????????</button>
					<button class="btn btn-outline-info btn-sm" name="signup"
					onclick="location.replace('${ctRoot}/Main_javaBang.do')" style="height: 60px;"
					>????????????</button>
				</div>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>



</body>
</html>