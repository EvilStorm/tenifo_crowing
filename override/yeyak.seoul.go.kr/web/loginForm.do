





































































<!DOCTYPE html>
<html lang="ko">
	<head>
		
<!--  --><!-- @!@ 20241219 mbuster 적용 -->




































































<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

<meta property="og:type" content="website">
<meta property="Keywords" content="yeyak, seoul yeyak, 서울공공서비스예약, 서울시공공서비스예약, 서울 공공서비스예약, 서울시 공공서비스예약, 공공서비스예약, 서울시 공공서비스예약 시스템, 서울시 서비스 예약, 서울 예약">
<meta property="og:description" content="한번에 쉽게 간편하게 서울특별시 공공서비스예약">
<meta name="description" content="한번에 쉽게 간편하게 서울특별시 공공서비스예약">
<meta property="og:title" content="서울특별시 공공서비스예약">
<meta property="og:url" content="https://yeyak.seoul.go.kr/web/main.do">

<!--
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
-->
<!--
<link rel="shortcut icon" type="image/x-icon" href="/common/images/seoul_favicon-16.ico">
<link rel="shortcut icon" type="image/x-icon" href="/common/images/seoul_favicon-32.ico">
 -->
<link rel="stylesheet" href="/common/css/slick.css">
<link rel="stylesheet" href="/common/css/default.css">



<!-- 서울시 해더 -->
<script type="text/javascript" src="https://www.seoul.go.kr/seoulgnb/gnb.js"></script>

<link rel="stylesheet" href="/webjars/jquery-ui/1.12.1/jquery-ui.css" />
<script type="text/javascript" src="/webjars/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/jquery-ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/webjars/momentjs/2.10.3/min/moment-with-locales.min.js"></script>
<script src="/common/js/slick.js"></script>
<script src="/common/js/publish.js"></script>
<script src="/common/js/common.js"></script>
<!-- @!@ 20241219 mbuster 적용
<script src="/common/js/mbuster/resource/js/mbuster_api.js"></script>
<script src="/common/js/mbuster/resource/js/mbuster_meta.js"></script>
 -->
<!-- @!@ 20241219 mbuster 적용 -->

<!-- @!@ 20250320 dynapath 적용 -->
<script>
	var dpCnf = {
		d: function() { return "/management/ipRedirect.do?threatGb=DNP_D&threatTt=비정상 접근으로 인한 차단 알림&threatCn=비정상 접근으로 파악되어 서비스가 제한되었습니다. 현재 탭을 닫고 다시 접속 바랍니다."; },
		x: [
			{ u: "/web/reservation/selectListReservCalAjax.do" },
			{ u: "/web/reservation/selectAllTimeCheckAjax.do" },
			{ u: "/web/reservation/selectListReservCalUnitAjax.do" }
			
		]
	};
</script>
<!-- @!@ 20250320 dynapath 적용 -->

<title>서울특별시 공공서비스예약</title>

<script type="text/javascript">
	try {
		var userAgent = navigator.userAgent.toLowerCase();

		if(userAgent.match('iphone')) {
		    document.write('<link rel="apple-touch-icon" href="/common/images/seoul_favicon-114.png" />')
		} else if(userAgent.match('ipad')) {
		    document.write('<link rel="apple-touch-icon" sizes="72*72" href="/common/images/seoul_favicon-114.png" />')
		} else if(userAgent.match('ipod')) {
		    document.write('<link rel="apple-touch-icon" href="/common/images/seoul_favicon-114.png" />')
		} else if (userAgent.match('android')) {
			document.write('<link rel="shortcut icon" href="/common/images/seoul_favicon-32.png">');
		} else {
			document.write('<link rel="shortcut icon" href="/common/images/seoul_favicon-32.png">');
			//document.write('<link rel="shortcut icon" href="/common/images/seoul_favicon-114.png">');
		}
	} catch(e) {

	}
//<![CDATA[
	$(function(){

	
	
		var myCss = {
			root: {
			},
			holder: {
				maxWidth: '1180px'
			},
			menu: {
			}
		};

		Yjs.Gnb.init('G108', 'seoul', myCss);
		$('#seoul').show();
	

		// title 설정
		var title = $('title').text();

		// 1depth 메뉴 존재시
		var $1dm = $('.lnb .container ul').children('li').eq(0);
		if($1dm.length == 1){
			// 메뉴존재시
			if($1dm.children('a').length == 1){
				title = $1dm.children('a').text() + ' | ' + title;
			}
			// 단순 콘텐츠시
			else {
				title = $1dm.children('span').text() + ' | ' + title;
			}
		}

		// 2depth 메뉴 존재시
		var $2dm = $('.lnb .container ul').children('li').eq(1);
		if($2dm.length == 1){
			title = $2dm.children('a').text() + ' | ' + title;
		}

		$('title').text(title);
		// meta 태그 셋팅
		// 서비스 상세 화면인경우(.dt_top_box .tit 값 존재)
		if($('.dt_top_box .tit').length > 0){
			// 서비스명 셋팅
			$('meta[property=og\\:title]').attr('content', $('.dt_top_box .tit').text().replace(/"/gi, ''));
			// 서비스 URL 셋팅
			var url = location.href.split('?')[0] + '?rsv_svc_id=' + $('[name=rsv_svc_id]').val();
			$('meta[property=og\\:url]').attr('content', url);
		}

		/* @!@ 20241219 mbuster 적용 */
		//MBUSTER_API({
		//	clientIp: '1.230.52.95', // [필수] 항목
		//	user_login_id: ''// 사용자 계정
		//});
	});
//]]>
</script>

	</head>
	<body class="ko">
		<div id="wrapper">
			




































































<script type="text/javascript">

//<![CDATA[
	$(function(){

		// 언어 변경
		$('.language a').click(function(e){
			location.href = '/web/chagneLang.do?locale=' + $(this).data('lang');
		});

		$('.t_close, #btn_sibanner_close').click(function(e){
			e.stopPropagation();
		});

		$('.top_banner').click(function(e){
			location.href = '';
		});

		// 검색어 없는 경우 enter 막음
		$('[name=h_search1]').on({
			'keyup' : function(e){
				if(e.which == 13){
					fnTotSearch();
				}
			},
			'keydown' : function(e){
				if(e.which == 13){
					e.preventDefault();
				}
			},
		});
	});

	//탑배너 - 오늘 하루 보지 않기
	function fnHide(){
		if($("#notoday1").is(":checked") === true){
			fnSetCookie("todayCookie","done");
			$(".top_banner").hide();
		}else{
			$(".top_banner").hide();
		}
	}

	function fnSetCookie(nm,val){
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate()+1);
		document.cookie = nm + "=" +escape(val)+"; path=/; expires="+todayDate.toGMTString() + ";";
	}


	//헤더 통합검색
	function fnTotSearch(){
		if($('[name=h_search1]').val().trim() != ""){
				fnSaveSchList($('[name=h_search1]').val());		//내가 찾은 검색어 저장
				$("#search").attr({action:"/web/search/selectPageListTotalSearch.do", method:'post'}).submit();
		}else{
			alert("검색어를 입력해주세요.");
			return;
		}
	}

	function fnSaveSchList(val){
		//내가 찾은 검색어가 10개 이상일 경우 가장 오래된 검색어를 지운다.
		var valData = localStorage.getItem("s_txt");
		var valDataArray;
		var addStr = "";

		if(valData != null && valData !="null"){
			valDataArray = valData.split("^");
			if(valDataArray.indexOf(val)>=0){
				var strArr = valData.split('^').reverse();
				var index = strArr.indexOf(val);

				strArr.splice(index,1);
				strArr = strArr.reverse();
				strArr = strArr.join("^");
				localStorage.setItem("s_txt", strArr);

				valDataArray = strArr.split("^");
				valData = localStorage.getItem("s_txt");
			}

			addStr = "";
			if(valDataArray.length < 10){
				for(i = 0; i < valDataArray.length; i++){
					if(i > 0){
						addStr += "^";
					}
					addStr += valDataArray[i];
				}
				addStr += "^"+val;
			}
			else{
				for(i = 1; i < 10; i++){
					if(i > 1){
						addStr += "^";
					}
					addStr += valDataArray[i];
				}
				addStr += "^"+val;
			}
			localStorage.setItem("s_txt", addStr);
		}
		else{
			valData = val;
			localStorage.setItem("s_txt", val);
		}
	}

	function fnLogout(){
		$('#search').attr({action:"/web/logout.do", method:'post'}).submit();
	}
//]]>
</script>

<div class="page_load" style="display:none;">
	<div class="img"><img src="/common/img/loading.gif" alt="페이지 로딩중"></div>
</div>

<dl class="skip_navi">
	<dt class="hide"><strong>바로가기 메뉴</strong></dt>
	<dd><a href="#contents">본문 바로가기</a></dd>
	<dd><a href="#gnb">주메뉴 바로가기</a></dd>
</dl>




<div id="seoul">&nbsp;</div>

<header id="header">
	<div class="container">
	<span class="i-seoul-u">
	<!-- 	<a href="//www.seoul.go.kr" target="_blank"> -->
	<img src="/common/img/ko/iseoulu.png" alt="동행 매력 특별시 서울"></span>
		<a href="#" class="m_menu"><span class="hide">전체메뉴열기</span></a>
		<h1 class="logo"><a href="/web/main.do"><span class="hide">서울특별시 공공서비스예약</span></a></h1>
		<!--<a href="#" class="m_search"><span class="hide">검색창열기</span></a>--><!--클릭시 active cnrk-->
		<div class="m_search_open">
		 <!-- 201118 검색창 제거 -->
			<div class="state">
				
				
				<a href="/web/loginForm.do">로그인</a>
				
				<div class="language">
					<h3 class="lang_tit" tabindex="0">KOR</h3>
					<ul>
						<li class="kor  active "><a href="#" class="" data-lang="ko">KOR</a></li>
						<li class="eng "><a href="#" class="" data-lang="en">ENG</a></li>
					</ul>
				</div>
			</div>
			<div class="search_top">
				<a href="#" class="m_search"><span class="hide search_top_txt">검색창 열기</span></a>
				<form name="search" id="search" method="post" action="/web/search/selectPageListTotalSearch.do">
					<fieldset>
						<legend class="hide">통합검색</legend>
						<div class="form_inp">
							<input type="text" name="h_search1" maxlength="50" value="" title="통합 검색어 입력" placeholder="어떤 서비스를 찾고 계신가요?" style="ime-mode:active;">
							<button type="button" onclick="fnTotSearch(); return false;"><span class="hide">검색</span></button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
<div class="m_menu_open">
	<h2 class="m_logo"><span class="hide">서울특별시 공공서비스예약</span></h2>
	<div class="state">
		
		
		<a href="/web/loginForm.do">로그인</a>
		
		<div class="language">
			<h3 class="lang_tit">KOR</h3>
			<ul>
				<li class="kor  active "><a href="#" class="" data-lang="ko">KOR</a></li>
				<li class="eng "><a href="#" class="" data-lang="en">ENG</a></li>
			</ul>
		</div>
	</div>
	<h4>
		
		
			로그인해주세요.
		
	</h4>
	<ul class="m_quick ko">
	
		<li class="btn_seoul_map" title="새 창으로 열기"><a href="#"><img src="/common/img/ko/quick_01.png" alt="시설 한눈에보기">시설 한 눈에<br/>보기</a></li>
	
		<li><a href="http://pf.kakao.com/_xemMXj/chat" target="_blank"><img src="/common/img/ko/quick_02.png" alt="챗봇<br/>서울톡">챗봇<br/>서울톡</a></li>
		<li><a href="/web/reservation/selectPageListReserveStatus.do"><img src="/common/img/ko/quick_03.png" alt="나의<br/>예약내역">나의<br/>예약내역</a></li>
	
		<li><a href="/web/cntnts/selectContents.do?cntnts_id=A1000004"><img src="/common/img/ko/quick_04.png" alt="이용<br/>안내">이용<br/>안내</a></li>
	
	
		<li><a href="https://www.120dasan.or.kr/dsnc/main/contents.do?menuNo=200018" target="_blank" title="새창열기"><img src="/common/img/ko/mobile_logo_center_sign.png" style="width:50px;" alt="120수어상담">120<br/>수어상담</a></li>
	</ul>
	<div  id="gnb" style="width:100%;">
	<nav class="gnb">
		<div class="ul-wrap">
		  <ul>
			
			</ul>
		</div>
	</nav>
	</div>
	<a href="#" class="m_btn_close"><span class="hide">전체메뉴닫기</span></a>
</div>
</header>

			<div id="sub_contents">
				<div class="lnb">
					<div class="container">
						<a href="/web/main.do" class="home"><span class="hide">홈으로 이동</span></a>
						<ul>
							<li class="">
								<span>로그인</span>
							</li>
						</ul>
					</div>
				</div><!-- //lnb -->
				<div class="container">
					<div id="contents">
						









































































<script type="text/javascript">
$(function() {
$('[name=userid]').on({
	'keyup' : function(e){
		if(e.which == 13){
			$('.btn_login').trigger('click', 1);
		}
	},
	'keydown' : function(e){
		if(e.which == 13){
			e.preventDefault();
		}
	},
});

$('[name=userpwd]').on({
	'keyup' : function(e){
		if(e.which == 13){
			$('.btn_login').trigger('click', 1);
		}
	},
	'keydown' : function(e){
		if(e.which == 13){
			e.preventDefault();
		}
	},
});
});

function fnLogin(){

	if ($("[name=userid]").val() == "") {
		alert("아이디(5~15자의 영문, 숫자만 가능)");
		$("[name=userid]").focus();
		return;
	}

	if ($("[name=userpwd]").val() == "") {
		alert("비밀번호(입력 실패 5회 시 잠금 처리)");
		$("[name=userpwd]").focus();
		return;
	}

	$('#addUserForm').submit();

// 	$.ajax({
// 	url : '/web/loginAjax.do',
// 		type : 'post',
// 		dataType : 'json',
// 	data : $("#addUserForm").serialize(),
// 		async : false,
// 		success : function(response){
// 			if(response.resultStats.resultCode == "error"){
// 				alert(response.resultStats.resultMsg);
// 				return false;
// 			}
// 		$("#addUserForm").attr({action : "https://www.seoul.go.kr/member/userlogin/login.do", method : 'post'}).submit();

// 		},
// 	error : function(jqXHR, textStatus, thrownError){
// 			alert("에러");
// 		}
// 	});
}

//회원가입
function memberJoin(){
	var wmap = window.open("https://www.seoul.go.kr/member/join/regist01.do?SITE_GB=GB009");
	wmap.focus();
}

//ID찾기
function findID(){
	var wmap = window.open("https://www.seoul.go.kr/member/findId/findId.do");
	wmap.focus();
}

//패스워드찾기
function findPWD(){
	var winPOPUP = window.open("https://www.seoul.go.kr/member/findPwd/findPwd.do");
	winPOPUP.focus();
}
function iPinPopupKo(){

	var url = "";
	//Fixed #507
	var protocal = "http";
	if(location.href.indexOf("https://") > -1){
		protocal = "https"
	}

	document.domain = "seoul.go.kr";
	url = protocal + '://www.seoul.go.kr/nomember/login/popup/noMemberAuthApp.do?CHECK_FLAG=IPIN&SITE_SB=SB00001&NEXT_URL=';
	window.open(url, 'realName', 'width=490,height=510,top=100,left=100');
	var refresh_url = 'https://yeyak.seoul.go.kr/web/loginEnd.do?ru='+encodeURIComponent('aHR0cHM6Ly95ZXlhay5zZW91bC5nby5rci93ZWIvbWFpbi5kbw==');
	window.open(url+refresh_url, 'realName', 'width=490,height=275,top=100,left=100');
}
function iPinPopupEn(){
	var url = "";
	//Fixed #507
	var protocal = "http";
	if(location.href.indexOf("https://") > -1){
		protocal = "https"
	}

	url = protocal + '://www.seoul.go.kr/nomember/login/popup/noMemberAuthApp.do?CHECK_FLAG=ENG&SITE_SB=SB00001&NEXT_URL=';
	window.open(url, 'realName', 'width=490,height=510,top=100,left=100');
	var refresh_url = 'https://yeyak.seoul.go.kr/web/loginEnd.do?ru='+encodeURIComponent('aHR0cHM6Ly95ZXlhay5zZW91bC5nby5rci93ZWIvbWFpbi5kbw==');
	window.open(url+refresh_url, 'realName', 'width=490,height=275,top=100,left=100');

	/* var url = 'http://www.seoul.go.kr/nomember/login/popup/noMemberAuthApp.do?CHECK_FLAG=ENG&SITE_SB=SB00001&NEXT_URL=';
	var refresh_url = 'https://yeyak.seoul.go.kr/web/loginEnd.do?ru='+encodeURIComponent('aHR0cHM6Ly95ZXlhay5zZW91bC5nby5rci93ZWIvbWFpbi5kbw==');
	window.open(url+refresh_url, 'realName', 'width=490,height=275,top=100,left=100'); */

// 	window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
// 	document.form_chk.action = "https://www.seoul.go.kr/nomember/login/popup/noMemberAuthApp.do?CHECK_FLAG=ENG&SITE_SB=SB00001&NEXT_URL=https://yeyak.seoul.go.kr/web/loginEnd.do?refresh_url=";
// 	document.form_chk.target = "popupChk";
// 	document.form_chk.submit();
// 	self.close();
}
function phonePopup(){
		window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
		document.form_chk.target = "popupChk";
		document.form_chk.submit();
}

</script>



<div class="login_wrap">
	<form name="form_chk" method="post">
		<input type="hidden" name="m" value="checkplusService">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
		<input type="hidden" name="EncodeData" value="AgAFQlQxOTP9Z5SPF88dzzAkRYptrQEw7tHUz9SdaSwOQvNVP8Oh19mIsDkEjeONqSQL/djZNQpur70RJj+VFtDnFjtm9cH2g5dlNxCl3MnF+wVroOBEjZhp1IL8v1Wtag5dnwKyDJcUoMBJfwHP6JwoN46uULYyFvCJ6nOysM+/F1QNdTSv7+IrPUA2+iVI0+B3x2dNLDFFK8vhBlydJiTUtC2zqzvDONEihFr1X5b7LZ8sCvR9JyBPr26F7BwjNaSAil/CNO7g13OJHIW2TqaPS+/bKq13fy8GhDtpXUCrT+zBXRP2eW8QhKqbHckTPvPTxNDp1ND29M5AU41+4ZREyWRQSH4Kimtm5puDOPSezzj2ZprEewLSL3bU0ff66Qnx61dia5c8rcGUdDu+akdwFtKo6QhN00rdQ4osG/TRTHsOabfbPF/lWka6GoSoSZuttQKLwmEqdfFus42m7dvHrUlQS3bMI0/1RwIaIiZcif4k+y0ExzLkGX/vuOHjavKv3ru87iOXThWH9uzv7HAGdVAtztRj">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
	</form>
	<ul class="tab_listA">
		<li class="active"><a href="#" title="선택됨">회원 로그인</a></li>
		<li><a href="#" title="선택안됨">비회원 로그인</a></li>
	</ul>
	<div class="tab_con_box">
		<div class="tab_con active">
			<form id="addUserForm" name="addUserForm" action="https://www.seoul.go.kr/member/userlogin/login.do" method="post">
				<input title="input" type="hidden" name="div" value="mem"/>
				<input title="input" type="hidden" name="SITE_GB" value="GB009"/> <!-- 해당 사이트 코드 -->
				<input title="input" type="hidden" name="refresh_url" value="https://yeyak.seoul.go.kr/web/loginEnd.do?ru=aHR0cHM6Ly95ZXlhay5zZW91bC5nby5rci93ZWIvbWFpbi5kbw=="/>
				<input type="hidden" name="isExternal" value="Y">

				<h4 class="login_tit1">서울시 통합회원 아이디/비밀번호로 로그인 해주세요.</h4>
				<br>
				
				<div class="login_inp_box">
					<input type="text" name="userid" id="userid" title="아이디(5~15자의 영문, 숫자만 가능)" placeholder="아이디(5~15자의 영문, 숫자만 가능)">
					<input type="password" id="userpwd" name="userpwd" title="비밀번호(입력 실패 5회 시 잠금 처리)" placeholder="비밀번호(입력 실패 5회 시 잠금 처리)">
					<button type="button" class="btn_login" onclick="fnLogin(); return false;">로그인</button>
				</div><!-- //login_inp_box -->
				<ul class="login_attr">
					<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
					
					<li><a href="#" onclick="findID(); return false;" title="새 창으로 열기">아이디 찾기/비밀번호 찾기</a></li>
					<li><a href="#" onclick="memberJoin(); return false;" class="fc_blue" title="새 창으로 열기">서울시 통합 회원가입</a></li>
					<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
				</ul>
				<ul class="login_type">
					<li class="naver">
					
						<!-- @!@ 20240523 타이틀 변경 -->
						
						<a title="네이버 아이디로 로그인" href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=FfQPBMu7YK2QVdrTkPk1&redirect_uri=https://yeyak.seoul.go.kr/web/naverLogin.do&state=1"><span class="ico">네이버 아이디로 로그인</span></a>
					
					
					</li>
					<li class="kakao">
					
					<!-- @!@ 20240523 타이틀 변경 common.text.openWindow > sns.kakaologin -->
					<a title="카카오 아이디로 로그인" href="https://kauth.kakao.com/oauth/authorize
					?client_id=1b78b76d69fbf854ae4017ba98d18122
					&redirect_uri=https://yeyak.seoul.go.kr/web/kakaoLogin.do
					&response_type=code&state=1"><span class="ico">카카오 아이디로 로그인</span></a>
					
					
				</li>
				<br>

			</ul>
			<br>
			<div class='login_txt2'>
				<span>○ 최초 이용자는 서울시 통합회원에 가입해야 하며, 가입 시 ‘휴대폰 본인확인 서비스’로</span>
				<br>
				<span style="display: block; position: absolute;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;
				본인인증을 해야합니다.
				</span>
				<br>
				<span>○ 간편로그인(네이버/카카오)으로 ‘예약’ 하기 위해서는 반드시 한번은 통합회원 으로  &nbsp; &nbsp; </span>
				<br>
				<span style="display: block; position: absolute;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp; 로그인해야 합니다.</span>
 				<!-- <span style="color: #e74c3c; font-weight: bold;">최초 방문자</span>는  <span style="color: #2980b9; font-weight: bold;">서울시 통합회원 가입시 핸드폰 인증</span>(핸드폰 번호입력)으로
				<br>
				회원가입을 한 후 서울시 공공서비스예약 홈페이지로 한번 로그인 하셔야지
				<br>
				향후 <span style="color: #2980b9; font-weight: bold;">네이버/카카오 간편로그인을 통한 예약신청</span>이 가능합니다.
				<br>
				<span>- 네이버/카카오 로그인을 하여도 서울시 통합회원으로 가입되어 있지 않으면</span>
				<br>
				<span>예약이 불가하오니 서울시 통합회원 가입을 먼저 진행 후</span>
				<br>
				<span>네이버/카카오 로그인을 하여 SNS로그인 연동을 해주시기 바랍니다.</span>
				<br>
				-<span style="color: #e74c3c; font-weight: bold;">비회원으로 로그인 하신 분들은 서비스 예약이 불가</span>하오니,
				<br>
				<span>※ 문의전화 : 공공서비스 예약시스템 운영센터(T:02-2126-4647)</span>
				<br/>
				<br/> -->
				<br/>
				<br/>
				로그인 관련 문의<br>
				- 네이버/카카오 아이디로 로그인 : 02-2126-4647<br>
				- 서울시 통합회원 및 비회원 로그인(아이핀본인인증) : 02-2126-4519
				</div>
			</form>
		</div><!-- //tab_con -->

		<div class="tab_con">
			<h4 class="login_tit1">본인 인증을 통해 서비스를 이용하시기 바랍니다.</h4>
			<p class="login_txt1">아래 인증방법중 한가지를 선택하여 본인 인증을 진행해주세요.</p>
			<ul class="login_non">
				<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
				
				<li><a href="#" onclick="phonePopup(); return false;" title="새 창으로 열기">
				<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
					<span class="c_box">
						<img src="/common/img/ko/icon_phone.png" alt="">
						<span class="tit">휴대폰 본인인증</span>
						<span class="txt">본인인증</span>
					</span>
				</a></li>
				
				<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
				
				<li><a href="#" onclick="iPinPopupKo(); return false;" title="새 창으로 열기">
				<!-- @!@ 20250317 다음 앱에서 다른 브라우저앱을 호출하는 문제가 있어서 수정 -->
					<span class="c_box">
						<img src="/common/img/ko/icon_ipin.png" alt="">
						<span class="tit">아이핀 본인인증</span>
						<span class="txt">본인인증</span>
					</span>
				</a></li>
				
				
			</ul>
			<ul class="dot_list">
				<li>본인인증 비회원 로그인 시 일부 서비스 이용에 제약이 있습니다.</li>
				<li><span>2024년 4월23일부로 비회원으로 로그인 하신 분들은  서비스 예약이 불가하오니,
				<br>
				 통합로그인 후 서비스 예약을 해주시기 바랍니다.</span></li>
				<span>※ 문의전화 : 공공서비스 예약시스템 운영센터(02-2126-4647)</span>
			</ul>
		</div><!-- //tab_con -->
	</div><!-- //tab_con_box -->
</div><!-- //login_wrap -->

					</div>
				</div>
			</div>
			





































































<script type="text/javascript">
//<![CDATA[
	$(function(){
		//  시설 한눈에 보기
		$('.btn_seoul_map').click(function(e){
			e.preventDefault();

			window.open('https://map.seoul.go.kr/smgis2/yeyakMap/', 'seoulMap');
		});

		// top 버튼 최상단에 위치할시에 숨김
		$(window).scroll(function(){
			if($(this).scrollTop() == 0){
				$('#w_top').addClass('a_hide');
			} else {
				$('#w_top').removeClass('a_hide');
			}
		});

		// 챗봇 서울톡 클릭시
		$('#chatbot-m button').click(function(e){
			// 숨겨져 있을경우
			if($('#chatbot-m a').hasClass('a_hide')){
				$('#chatbot-m a').removeClass('a_hide');
			} else {
				$('#chatbot-m a').addClass('a_hide');
			}
		});

		function popFocus() {
			$(document).on('keydown', '[data-focus-prev], [data-focus-next]', function(e){
				var next = $(e.target).attr('data-focus-next'),
				prev = $(e.target).attr('data-focus-prev'),
					target = next || prev || false;

				if(!target || e.keyCode != 9) {
					return;
				}

				if( (!e.shiftKey && !!next) || (e.shiftKey && !!prev) ) {
					setTimeout(function(){
						$('[data-focus="' + target + '"]').focus();
					}, 1);
				}
			});
		}

		$(window).trigger('scroll');
		});

	$(document).ready(function () {

	    // 팝업 하루동안 보지 않기 수정 20240823
	    function setCookie(name, value, exDay ) {
	     	 var todayDate = new Date();
	     	 todayDate.setDate( todayDate.getDate() + exDay);
	     	 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	     	}
		var cookiedata = document.cookie;

		if(cookiedata.indexOf("main_popup=done") < 0 ){ 
			$("#pop_x2").parents(".pop_wrap").css("display","block");
		}
		else{
			$("#pop_x2").parents(".pop_wrap").css("display","none");
		}
	
		$(document).on("click", "#pop_x2", function(){

			setCookie("main_popup","done",1);
			$(this).parents(".pop_wrap").css('display','none');


		});
	});
//]]>
</script>

<div id="quick">
	<h3><span>즐겨찾는<br />서비스</span></h3>
	<ul>
 		<li><a href="http://pf.kakao.com/_xemMXj/chat" target="_blank"><img src="/common/img/ko/quick_02.png" alt="챗봇 '서울톡'">챗봇 '서울톡'</a></li>
		
		<li><a href="/web/reservation/selectPageListReserveStatus.do"><img src="/common/img/ko/quick_03.png" alt="나의 예약내역">나의 예약내역</a></li>
	
		<li><a href="/web/cntnts/selectContents.do?cntnts_id=A1000004"><img src="/common/img/ko/quick_04.png" alt="도움말">도움말</a></li>
		<li><a href="#" class="btn_seoul_map" title="새 창으로 열기"><img src="/common/img/ko/quick_01.png" alt="시설 한눈에보기">시설 한눈에보기</a></li>
	
	




	</ul>
	<div class="font_size">
		<h4>글자크기조절</h4>
		<div>
			<a href="#" class="font_up"><span class="hide">글자크기 확대</span></a>
			<a href="#" class="font_down"><span class="hide">글자크기 축소</span></a>
		</div>
		<a href="#" class="font_default">원본보기</a>
	</div>
    
	<a href="https://www.120dasan.or.kr/dsnc/main/contents.do?menuNo=200020" target="_blank" title="새창열기">
	
	
    <img src="/common/img/ko/logo_center_sign.png" alt="120수어상담"></a>
	<button type="button" title="감추기" class="btn_quick"></button>

	<a href="https://www.120dasan.or.kr/dsnc/main/contents.do?menuNo=200018" target="_blank" title="새창열기">
	<img src="/common/img/ko/logo_center_sign2.png" alt="120수어상담"></a>
	<button type="button" title="감추기" class="btn_quick"></button>


</div>


<footer id="footer">
	<nav>
		<ul class="container">
		
			<li><a class="text_blue" href="/web/cntnts/selectContents.do?cntnts_id=A1000005&title_key=txt.privatePolicy&type=content">개인정보처리방침</a></li>
		
		
			<li><a href="https://www.seoul.go.kr/helper/email.do" target="_blank">이메일 무단수집거부</a></li>
			<li class="m_none"><a href="https://www.seoul.go.kr/helper/view.do" target="_blank">뷰어프로그램 다운로드</a></li>
			<li class="m_none"><a href="/web/siteMap.do">사이트맵</a></li>
		</ul>
	</nav>
	<div class="container">
		<address>
		<div class="hide">I SEOUL U 너와 나의 서울</div>
			<span>서울특별시청 04524 서울특별시 중구 세종대로 110</span>
			<span>문의: <a href="tel:02-120">02) 120</a> (휴일, 야간)</span>
 			<span>장애신고: <a href="tel:02-2126-4647">02-2126-4647</a> (평일)</span>
			<em>&copy; Seoul Metropolitan Government all rights reserved.</em>
		</address>
		<div class="ft_logo">
			<span class="hide">I SEOUL U 너와 나의 서울</span>
		</div>
		<!-- @!@ 20240701 웹접근성 인증 사이트 이동 추가 -->
		<!-- <div class="accessibility">
			<span class="hide">웹접근성인증마크 - 과학기술정보통신부 WA Web Accessibility</span>
		</div> -->
		<a href="http://webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" target="_blank" alt="새 창으로 열기">
			<div class="accessibility">
				<span class="hide">웹접근성인증마크 - 과학기술정보통신부 WA Web Accessibility</span>
			</div>
		</a>
	</div>
</footer>
<div class="m_ab_box">
	<a href="#" id="w_top" class="top a_hide"><span class="hide">맨위로 이동하기</span></a>
	<div id="chatbot-m">
 		<a href="http://pf.kakao.com/_xemMXj/chat" target="_blank" class="a_hide"><img src="/common/img/ko/icon_chat.png" alt="챗봇 '서울톡'"></a>

		<button>챗봇 '서울톡'</button>
	</div>
</div>
<!-- 서울시로그 스크립트 -->
<script type="text/javascript" src="//weblog.eseoul.go.kr/wlo/js/install.js" ></script>


		</div>
		






	</body>
</html>