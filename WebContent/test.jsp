<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
<%@include file="/WEB-INF/views/buyer/incloudfile/topBar.jsp" %>

<html>
<head>
	<title>JAVABANG</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/css/util.css">
<%-- 	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/rentList/css/main.css">
 --%><!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ctRoot}/resources/checkbox/check.css">

 </head>
<body>

	<div style="padding:40px;"> </div>
<div class="limiter">
<div class="container">
	<div class="panel-heading"><b>??????????????? ??????????????? ??????????????? ?????? ????????????.</b></div>
	<div class="panel-heading">     * ????????? ????????? ??????????????? ???????????????.</div>
	<div style="padding:30px;"> </div>
	<div class="row">
		<div class="col-lg-12 ">
			<div class="form-group" style="padding:20px 20px 20px 250px;">
                    <div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-warning active">
                                          <input type="checkbox" > ??????
                    </label>
                    <div style="padding:10px;"> </div>
                    <label class="btn btn-warning">
                                          <input type="checkbox"> ??????
                    </label>
                    <div style="padding:10px;"> </div>
                    <label class="btn btn-warning btn-lg.round">
                                          <input type="checkbox"> ??????
                    </label>
                  </div>
                   
                  </div>
            </div>
        </div>
        <div style="padding:40px;"> </div>
        <div class="panel-heading"><b>??????????????? ?????? ????????????.</b></div>
	<div style="padding:30px;"> </div>
	<div class="row">
			<div class="dropdown">
		        <div class="select" >??????????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			     <input type="hidden" name="pet_available_code">
			        <ul class="dropdown-menu">
			          <li value="1">??????</li>
			          <li value="0">?????????</li>
			        </ul>
      		</div>
      		<div style="padding:10px;"> </div>
      		<div class="dropdown">
		        <div class="select">??????????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			        <input type="hidden" name="parking_available_code">
			        <ul class="dropdown-menu">
			          <li value="1">??????</li>
			          <li value="0">?????????</li>
			        </ul>
      		</div>
      		<div style="padding:10px;"> </div>
      		
      		<div class="dropdown">
		        <div class="select">??????????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			        <input type="hidden" name="hc_type_code">
			        <ul class="dropdown-menu">
			          <li value="1">????????????</li>
			          <li value="0">????????????</li>
			        </ul>
      		</div>
      		<div style="padding:10px;"> </div>
      		<br>
      		<div class="dropdown">
		        <div class="select">???????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			        <input type="hidden" name="manage_fee_available_code">
			        <ul class="dropdown-menu">
			          <li value="1">??????</li>
			          <li value="0">??????</li>
			        </ul>
      		</div>
      		<div style="padding:10px;"> </div>
      		<div class="dropdown">
		        <div class="select">?????????????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			        <input type="hidden" name="elv_available_code">
			        <ul class="dropdown-menu">
			          <li value="1">??????</li>
			          <li value="0">??????</li>
			        </ul>
      		</div>
      		<div style="padding:10px;"> </div>
      		<div class="dropdown">
		        <div class="select">??????????????????
		          <span></span>
		          <i class="fa fa-chevron-left"></i>
		        </div>
		        
			        <input type="hidden" name="live_in_type_code">
			        <ul class="dropdown-menu">
			          <li value="1">????????????</li>
			          <li value="0">??????</li>
			        </ul>
      		</div>
      		

                  </div>
                  
        <div style="padding:40px;"> </div>
          <div class="panel-heading"><b>??????????????????</b>??? ?????? ????????????.</div>
			<div style="padding:30px;"> </div>
			<div class="row">
				<div class="col-lg-12 ">
			<div class="form-group" style="padding:20px 20px 20px 40px;">
                    <div class="btn-group" data-toggle="buttons">
                    <label class="btn_option btn-warning active ">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="1">?????????
                    </label>
                    
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="2">?????????
                    </label>
                    
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="3">wifi(?????????)
                    </label>
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning active">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="4">TV
                    </label>
                    
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="5">???????????????
                    </label>
                   
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="6">?????????
                    </label>
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning active">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="7">??????
                    </label>
                    
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="8">?????????
                    </label>
                    
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="9">??????
                    </label>
                    <div style="padding:10px;"> </div>
                    <label class="btn_option btn-warning active">
  						<input type="checkbox" class="option_select_code" name="option_select_code" value="10">?????????
                    </label>
                    
                  </div>
                   
                  </div>
            </div>
        </div>
                  
                  
                  
                  
            </div>
        </div>
         
         <div style="padding:30px;"> </div>

		<div style="padding:130px;"> </div>
<footer class="footer text-center" style="bottom:0; width:100%; height:70px;background:light;">
    <div class="container">
      <!-- <ul class="list-inline mb-5">
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="#">
            <i class="icon-social-facebook"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="#">
            <i class="icon-social-twitter"></i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white" href="#">
            <i class="icon-social-github"></i>
          </a>
        </li>
      </ul> -->
      <div class="border-top pt-5">
	      <p class="text-muted small mb-0">Copyright &copy; JAVABANG IN KOSMO 2019</p>
	      <p>?????? : ?????????, ?????????, ?????????, ?????????, ?????????, ?????????, ?????????  </p>
    </div>
	    <div class="border-top pt-10">
	    </div>
    </div>
  </footer>

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
<!--===============================================================================================-->	
	<script src="${ctRoot}/resources/rentList/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${ctRoot}/resources/rentList/vendor/bootstrap/js/popper.js"></script>
	<script src="${ctRoot}/resources/rentList/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${ctRoot}/resources/rentList/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${ctRoot}/resources/rentList/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="${ctRoot}/resources/rentList/js/main.js"></script>
<!--===============================================================================================-->
	<script src="${ctRoot}/resources/checkRoom/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="${ctRoot}/resources/checkRoom/js/jqBootstrapValidation.js"></script> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
	<script src="${ctRoot}/resources/selectbox/select.js"></script> 
	
	
	
	
	
</body>
</html>