





































































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
			
			
				
				<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100"><span class="">체육시설</span></a>
					<div>
						<h2>체육시설<span>다양한 체육시설 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T107" class="">축구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T109" class="">풋살장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T106" class="">족구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T105" class="">야구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T108" class="">테니스장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T101" class="">농구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T103" class="">배구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T102" class="">다목적경기장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T125" class="">운동장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T126" class="">체육관</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T104" class="">배드민턴장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T127" class="">탁구장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T116" class="">교육시설</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T117" class="">수영장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T100&dCode=T115" class="">골프장</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
				<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500"><span class="">공간시설</span></a>
					<div>
						<h2>공간시설<span>다양한 공간시설 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T502" class="">캠핑장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T506" class="">다목적실</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T505" class="">강의실</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T509" class="">회의실</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T504" class="">강당</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T508" class="">주민공유공간</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T511" class="">공연장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T501" class="">녹화장소</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T507" class="">전시실</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T513" class="">광장</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T514" class="">청년공간</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T500&dCode=T510" class="">민원 등 기타</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
				<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200"><span class="">문화체험</span></a>
					<div>
						<h2>문화체험<span>다양한 문화체험 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T205" class="">교육체험</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T206" class="">농장체험</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T204" class="">문화행사</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T203" class="">전시/관람</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T202" class="">단체봉사</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T207" class="">공원탐방</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T208" class="">서울형키즈카페</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T200&dCode=T209" class="">산림여가</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
				<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000"><span class="">교육강좌</span></a>
					<div>
						<h2>교육강좌<span>다양한 교육강좌 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T014" class="">스포츠</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T025" class="">공예/취미</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T021" class="">자연/과학</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T019" class="">역사</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T015" class="">교양/어학</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T017" class="">미술제작</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T016" class="">교육도구</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T023" class="">정보통신</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T022" class="">전문/자격증</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T027" class="">도시농업</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T028" class="">청년정보</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T000&dCode=T026" class="">기타</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
				<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400"><span class="">진료복지</span></a>
					<div>
						<h2>진료복지<span>다양한 진료복지 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T404" class="">보건소</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T405" class="">장애인버스</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T406" class="">가족안심숙소</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T401" class="">은평병원</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T403" class="">서북병원</a></li>
						
							<li><a href="/web/search/selectPageListDetailSearchImg.do?code=T400&dCode=T402" class="">어린이병원</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
				<li><a href="/web/bbs/selectPageListBbs.do?bbs_code=A1002"><span class="">이용안내</span></a>
					<div>
						<h2>이용안내<span>다양한 이용안내 서비스를 제공합니다.</span></h2>
						<ol>
						
							<li><a href="/web/bbs/selectPageListBbs.do?bbs_code=A1002" class="">공지사항</a></li>
						
							<li><a href="/web/cntnts/selectContents.do?cntnts_id=A1000004" class="">도움말</a></li>
						
							<li><a href="/web/bbs/selectPageListBbs.do?bbs_code=A1001" class="">자주묻는질문</a></li>
						
						</ol>
					</div>
				</li>
				
			
			
				
			
			</ul>
		</div>
	</nav>
	</div>
	<a href="#" class="m_btn_close"><span class="hide">전체메뉴닫기</span></a>
</div>
</header>

			<div id="contents" style="height:100%;">
				






































































<!-- 캘린더 -->
<script type="text/javascript" src="/common/js/site/ko/reservCalendar.js"></script>


<script type="text/javascript">
	//<![CDATA[

		function fnLocaleList(code1, code){
			var temp = "[name=select_"+code1+"]";
			var temp2 = "[name=svc_"+code1+"]";
			var opStr = '<option value="">선택</option>';

			$.ajax({
				url: '/web/selectListLocaleRsvAjax.do',
				data: { 'cl_code' : code1 , 'area_code' : code },
				type:'POST',
				dataType:'json',
				beforeSend : function(){
					// 조회전에 조회중 문구 셋팅
					$(temp).html('<option value="">조회중</option>');
				},
				success:function(param){
					if(param.resultStats.resultCode == 'error'){
						$(temp).html('<option value="">선택(0개)</option>');
					//	$(temp).html(opStr);
						$(temp2).html(opStr);
						return;
					}else{
						var classHtml = "" ;

						// 20210330 전체 추가로 삭제
						/* if($('[name=sch_loc]').val() != ""){ */
							classHtml = '<option value="">선택(' + param.resultList.length + '개)</option>';
						/* } */

						// 소분류 그리기
						for(var i = 0; i < param.resultList.length; i++){
							var item = param.resultList[i];
							classHtml += '<option value="' + item.MUMM_CL_CODE + '">' + item.CODE_NM + '</option>'
						}

						$(temp).html(classHtml);
						$(temp2).html(opStr);
					}

				}

			});
		}




	$(function() {
		//fnCheckLocation(); 20231107_api 호출 timeout 이슈로 삭제
        fnCheckSeason(); //231108_계절배너 전환
		// 통합검색 enter

		$('.interest_list').hide();

		$('[name=search1]').on({
			'keyup' : function(e){
				if(e.which == 13){
					fnMainSearch();
				}
			},
			'keydown' : function(e){
				if(e.which == 13){
					e.preventDefault();
				}
			},
		});

		var str = "" ;

		str += '추천 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';

		$('.main_tit2').html(str);


	 	var str2 = "" ;

		str2 += '자주 이용되는 공공서비스를 추천해드립니다!';
		$('.main_txt1').html(str2);



		fnPlaceList('T100');

		var timeType = "";
		if ($("#use_time_unit_code").val() == "B401") {
			timeType = "분";
		}else if ($("#use_time_unit_code").val() == "B402") {
			timeType = "시간";
		}else if ($("#use_time_unit_code").val() == "B403") {
			timeType = "일";
		}else if ($("#use_time_unit_code").val() == "B409") {
			timeType = "박";
		}

		if ($("#use_time_unit_code").val() == "B401") {
			$("#turnExplain").append("회차선택은 원하는 분대를 선택하시면 됩니다.(단위  :  " + timeType+ ")");
		}else if ($("#use_time_unit_code").val() == "B402") {
			$("#turnExplain").append("회차선택은 원하는 시간대를 선택하시면 됩니다.(단위  :  "  + timeType+ ")");
		}else if ($("#use_time_unit_code").val() == "B403") {
			$("#turnExplain").append("일자선택은 원하시는 일자대를 선택하시면 됩니다.(단위   :  "  + timeType+ ")");
		}else if ($("#use_time_unit_code").val() == "B409") {
			$("#turnExplain").append("숙박 선택은 원하시는  숙박일수를 선택하시면 됩니다.(단위  :  "  + timeType+ ")");
		}

		$('.sch_loc').change(function(e, type){
			code=$(this).val().split("|");

			$('[name=loc_now]').val(code[0]);

			var temp = "[name=select_"+code[1]+"]";
			var temp2 = "[name=svc_"+code[1]+"]";
			var temp3 = "[name=select_code_"+code[1]+"]";

			$('[name=select_code_T100]').val(code[0]+"|T100");
			$('[name=select_code_T200]').val(code[0]+"|T200");
			$('[name=select_code_T000]').val(code[0]+"|T000");
			$('[name=select_code_T400]').val(code[0]+"|T400");
			$('[name=select_code_T500]').val(code[0]+"|T500");

			var opStr = '<option value="">선택</option>';
			var classHtml = '<option value="">선택</option>';
			if($(this).val() == ""){
 				for(var cnt=0; cnt<$('[name=sch_loc]').length; cnt++){
					$('[name=sch_loc]').eq(cnt).val('').prop('selected', true);
				}

				/* $('.sch_loc option:eq(0)').prop('selected', true); */
				$('.sch_cl').html(classHtml);
				$('.sch_svc').html(opStr);
			}

			fnLocaleList(code[1],code[0]);

		});




	//지역예약2
	$('.sch_cl').change(function(e, type){
		if($(this).val() != "" ){
			var temp3 = "[name=select_code_"+  $(this).val().substring(0,2) +"00]";

			var code = $(temp3).val().split("|");

			var temp = "[name=select_"+code[1]+"]";
			var temp2 = "[name=svc_"+code[1]+"]";
			var opStr = '<option value="">선택</option>';

			if ($(temp).val()==""){
				alert("소분류를 선택해주세요.");
				return;
			}

			$.ajax({
				url: '/web/selectListLocaleSVCAjax.do',
				data: { 'cl_code' : code[1] , 'area_code' : code[0] , 'mum_code' : $(this).val() },
				type:'POST',
				dataType:'json',
				beforeSend : function(){
					// 조회전에 조회중 문구 셋팅
					$(temp2).html('<option value="">조회중</option>');
				},
				success:function(param){
					if(param.resultStats.resultCode == 'error'){
						alert(param.resultStats.resultMsg);
						$(temp2).html(opStr);
						return;
					}else{
						var svcHtml = '<option value="">선택(' + param.resultList.length + '개)</option>';

						// 소분류 그리기
						for(var i = 0; i < param.resultList.length; i++){
							var item = param.resultList[i];
							svcHtml += '<option value="' + item.SVC_ID + '|'+ item.MUMM_CL_CODE + '|' +item.SVC_TYPE+'|'+item.SVC_URL+'">' + item.SVC_NM + '</option>'
						}
						$(temp2).html(svcHtml);
					}
				}
			});
		}else{
			var code=$(this).attr('name').split("_");
			var temp = "[name=svc_"+code[1]+"]";
			var svcHtml = '<option value="">선택</option>';
			$('[name=sch_svc_info]').val( $(this).val() );
			$(temp).html(svcHtml);
		}
	});

	$('.sch_svc').change(function(e, type){
		$('[name=sch_svc_info]').val( $(this).val() );
	});

	$('.step-2').click(function(e, type){
		if($('#step_chk').val() == '0'){
			alert('1단계를 먼저 선택해주세요.');
			/* if($('#chk_tab').val() == 'clCode'){
				fnResetCode();
			} else if($('#chk_tab').val() == 'area'){
				fnPosibleArea();
			} */
		}
	});

	$('.step-3').click(function(e, type){
		if($('#step_chk').val() == '0'){
			alert('1단계를 먼저 선택해주세요.');
			/* if($('#chk_tab').val() == 'clCode'){
				fnResetCode();
			} else if($('#chk_tab').val() == 'area'){
				fnPosibleArea();
			} */
		} else if($('#step_chk').val() == '1'){
			alert('2단계를 먼저 선택해주세요.');
			/* if($('#chk_tab').val() == 'clCode'){ */
				/* $('.open-place').trigger('click'); */
			/* } else if($('#chk_tab').val() == 'area'){ */
				/* $('.open-svc-a').trigger('click'); */
			/* } */
		}
	});

	// 달력 날짜 클릭 이벤트
	$('#calendar, #calendar_area').on({
		'click' : function(e, type){
			// 전체 비활성화
			$('[id^=calendar_]').removeClass('on');
			// 선택 활성화
			$(this).closest('td').addClass('on');
			// 선택됨에 따른 타이틀 문구 변경
			$('.tbl_cal td').find("a[title='선택됨']").attr('title', '예약가능');
			$(this).attr('title', '선택됨');
			$('#chk_cal').val('Y');
		},
	}, '[id^=calendar_].able >  a[id^=cal_]');


/* 	$('.btn_today').click(function(e, type){

		var year = $("#yyyy").val();
		var month = $("#mm").val();

		if($('#chk_tab').val() == 'clCode'){
			$('#calendar').html('');
			maincalendar('calendar');
			fnDraw();
			maincalendar('calendar', year, month);
			fnDrawPreNext();
		} else if($('#chk_tab').val() == 'area'){
			$('#calendar_area').html('');
			maincalendar('calendar_area');
			fnDraw();
			maincalendar('calendar_area', year, month);
			fnDrawPreNext();
		}
	}); */
	//지역예약 기본 전체 설정
	$('#sch_loc').val('all|T100').trigger('change');
});

	function fnToday(){
		var year = $("#yyyy").val();
		var month = $("#mm").val();
		$('#calCheck').val('N');
		$('#unitCheck').val('N');

		if($('#chk_tab').val() == 'clCode'){
			$('#calendar').html('');
			maincalendar('calendar');
			fnDraw();
			$('#useUnit').html('');
		} else if($('#chk_tab').val() == 'area'){
			$('#calendar_area').html('');
			maincalendar('calendar_area');
			fnDraw();
			$('#useUnit_area').html('');
		}
	}

	//메인 통합검색
	function fnMainSearch(){
		if($('[name=search1]').val().trim() != ""){
				fnSaveSchList($('[name=search1]').val());		//내가 찾은 검색어 저장
				$("#all_search").attr({action:"/web/search/selectPageListTotalSearch.do", method:'post'}).submit();
		}else{
			alert("검색어를 입력해주세요.");
			return;
		}
	}


	//서비스 상세 페이지
	function fnDetailPage(id,yn) {
		location.href = "/web/reservation/selectReservView.do?rsv_svc_id=" + id+"&reSvc="+yn;
	}

	function fnGoFaq(code, seq) {
		
		location.href = "/web/bbs/selectPageListBbs.do?sch_type=sj&bbs_code="
				+ code + "&sch_seq=" + seq;
		
		
	}

	/* 분류 우선 시작 */
	//시설리스트가져오기
	function fnPlaceList(code) {

		var req ={
				"code" : code,
				"area_code" : $('#click_area').val()
			};

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectListReservPlaceAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}

				var str = ""

				if (param.resultList.length > 0){
					for (i=0 ; i < param.resultList.length ; i++) {
						str+='<li name="place'+i+'" class="svc_'+param.resultList[i].CODE+' svc_img">';
						// 클릭한 텍스트 노출을 위한 값 추가
						if($('#click_area').val() == ''){
							str+='<a href="javascript:fnRegionList(\''+param.resultList[i].CODE+'\', \''+param.resultList[i].CODE_NM+'\')" data-cl="'+param.resultList[i].CODE+'">';
						} else {
							str+='<a href="javascript:fnSvcList(\''+$('#click_area').val()+'\', \''+param.resultList[i].CODE+'\', \''+param.resultList[i].CODE_NM+'\')" data-acl="'+param.resultList[i].CODE+'">';
						}
						str+= param.resultList[i].CODE_NM;
						str+='</a>';
						str+='</li>';
					}
				}

				// 기존 달력 삭제
				$('.cl_cal_box').html('');
				$('.area_cal_box').html('');
				// 기존 회차 삭제
				$('#useUnit').html('');
				$('#useUnit_area').html('');

				$('#chk_cal').val('N');

				if($('#click_area').val() == ''){
					$('#select_txt1').html('<li>※ 서울 이외 지역은 통합 검색 또는 메뉴를 이용하여 주시기 바랍니다.</li>');
					$('#select_txt_svc').html('');
					$('#step_chk').val('0');
					if(code == 'T100'){
						$("#place_code1").html(str);
					}else if(code == 'T500'){
						$("#place_code2").html(str);
					}else if(code == 'T200'){
						$("#place_code3").html(str);
					}else if(code == 'T000'){
						$("#place_code4").html(str);
					}else{
						$("#place_code5").html(str);
					}
				} else {
					$('#select_txt_s').html('');
					$('#step_chk').val('1');
					if(code == 'T100'){
						$("#place_code_1").html(str);
					}else if(code == 'T500'){
						$("#place_code_2").html(str);
					}else if(code == 'T200'){
						$("#place_code_3").html(str);
					}else if(code == 'T000'){
						$("#place_code_4").html(str);
					}else{
						$("#place_code_5").html(str);
					}
				}

				// 값 초기화
				$('.svc_list_a').html('');
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});

	}

	function fnCheckImg(cl){
		$('.svc_img').removeClass('active');
		$('.svc_'+cl).addClass('active');
	}

	//구역리스트가져오기
	function fnRegionList(clcode, clname) {

		$('a[data-cl="' + clcode + '"]').attr('title', '선택됨');
		fnCheckImg(clcode);
		$('area').removeClass('posible');
		$('.map_list >').removeClass('posible');
		$('#select_txt1').html('');

		// @!@ 20240524 지역 타이틀 내용 추가
		$('area').attr("title", "이용불가");

		var req ={
				"clcode" : clcode
			};

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectListReservRegionAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}

				var str = ""

				str+='<li>';
				if (param.resultList.length > 0){
					for (i=0 ; i < param.resultList.length ; i++) {
						str+= param.resultList[i].CODE_NM;
						if(i < param.resultList.length - 1){
							str+= " , ";
						}

						$('area[data-se="' + param.resultList[i].CODE + '"]').addClass('posible');
						$('li[data-name="' + param.resultList[i].CODE + '"]').addClass('posible');

						// @!@ 20240524 지역 타이틀 내용 추가
						$('area[data-se="' + param.resultList[i].CODE + '"]').attr("title", "이용가능");
					}
				}
				str+='</li>';
				$('#step_chk').val('1');
				$('#chk_cal').val('N');

				$("#cl_code").val(clcode);
				// 기존 선택 제외
				$('.img_map > area').removeClass('active');
				$('.map_list > li').removeClass('active');
				// 기존 목록 삭제
				$('#svc_list_d').html('');
				// 기존 달력 삭제
				$('.cl_cal_box').html('');
				// 선택한 서비스 텍스트 노출
				$('.click-svc').html('<span class="fc_blue">서비스 </span><ul class="select_txt" id="select_txt_svc"><li>' + clname + '</li></ul>');
				// 기존 회차 삭제
				$('#useUnit').html('');

				$('#select_txt1').html("<li>※ 서울 이외 지역은 통합 검색 또는 메뉴를 이용하여 주시기 바랍니다.</li>");
				// 지역 선택 오픈
				$('.open-place').trigger('click');
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});

	}

	//구역별서비스리스트가져오기
	function fnSvcList(areacode, cl, clname) {

		$('a[data-acl="' + cl + '"]').attr('title', '선택됨');
		$('.map_list > li').removeClass('active');
		$('.img_map > area').attr('title', '');

		if(cl != '' || cl == 'T'){
			$('#cl_code').val(cl);
			$('#chk_tab').val('area');
			fnCheckImg(cl);

		} else {
			$('#chk_tab').val('clCode');
		}

		var clcode = $("#cl_code").val();

		if(clcode == "" || clcode == 'T'){
			alert("1단계에 시설을 먼저 선택해주세요.")
			return;
		}

		var req ={
				"areacode" : areacode,
				"clcode" : clcode,
			};

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectListReservSvcAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}

				var str = ""

				if (param.resultList.length == 0){
					str +='<li>';
					str +='해당 구역에 서비스가 존재하지 않습니다.'
					str+='</li>';
				}else{
					for (i=0 ; i < param.resultList.length ; i++) {
						str +='<li>';
						str+='<a href="javascript:fnReserView(\''+param.resultList[i].SVC_ID+'\', \'' + $('#chk_tab').val() + '\', \''+param.resultList[i].SVC_NM+'\');" data-svc="'+param.resultList[i].SVC_ID+'">'+param.resultList[i].SVC_NM+'<br /></a>';
						str+='<a href="/web/reservation/selectReservView.do?rsv_svc_id='+param.resultList[i].SVC_ID+'" target="_blank" title="새 창으로 열기" class="btn-detail">상세보기></a>';
						str+='</li>';
					}
				}

				if(cl == ''){
					if($('li[data-name=' + areacode + ']').attr('data-name') == areacode){
						$('li[data-name=' + areacode + ']').addClass('active');
						$("#select_txt1").html('<li>' + $('li[data-name=' + areacode + ']').text() + '<span id="select_txt2"></span></li>');
						$('area[alt="' + $('li[data-name=' + areacode + ']').text() + '"]').attr('title', '선택됨');
					}
					$("#svc_list_d").html(str);
				} else {
					$("#select_txt_s").html('<li>' + clname + '<span id="select_txt_s2"></span></li>');
					$(".svc_list_a").html(str);
				}

				$('#step_chk').val('1');
				$('#chk_cal').val('N');
				// 기존 달력 삭제
				$('.cl_cal_box').html('');
				$('.area_cal_box').html('');
				// 기존 회차 삭제
				$('#useUnit').html('');
				$('#useUnit_area').html('');
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});
	}

	//서비스별 달력 세팅
	function fnReserView(svd_id, chk_tab, svc_nm) {
		$('a[data-svc="' + svd_id + '"]').attr('title', '선택됨');
		// 기존 선택된 회차 카운트 초기화
		$('#count').val('0');

		// 서비스 클릭 전에 달력 초기화
		// 기존 달력 삭제
		$('.cl_cal_box').html('');
		$('.area_cal_box').html('');
		// 기존 회차 삭제
		$('#useUnit').html('');
		$('#useUnit_area').html('');

		var req ={
				"svd_id" : svd_id,
			};

		$("#rsv_svc_id").val(svd_id);

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectReservViewAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}

				var use_time_unit_code = param.resultMap.USE_TIME_UNIT_CODE;
				var tme_ty_code = param.resultMap.TME_TY_CODE;
				var rcept_mth_code = param.resultMap.RCEPT_MTH_CODE % 2;

				$("#resve_posbl_yn").val(param.resultMap.SVC_STTUS_CODE);
				$("#use_time_unit_code").val(use_time_unit_code);
				$("#tme_ty_code").val(tme_ty_code);
				$("#sltYear").val(param.param.sltYear);
				$("#sltMonth").val(param.param.sltMonth);
				$("#sltDay").val(param.param.sltDay);
				$("#yyyymm").val(param.param.yyyymm);
				$("#year").val(param.param.year);
				$("#month").val(param.param.month);
				$("#dd").val(param.param.dd);
				$("#chk_online").val(rcept_mth_code);

				if(chk_tab == 'clCode'){
					maincalendar('calendar');
					$("#select_txt2").html(' > ' + svc_nm);
				} else if(chk_tab == 'area'){
					$("#select_txt_s2").html(' > ' + svc_nm);
					maincalendar('calendar_area');
				}
				fnDraw();
				$('#step_chk').val('2');
				$('#chk_cal').val('N');

				// 일정 선택 오픈
				if(chk_tab == 'clCode'){
					$('.open-plan').trigger('click');
				} else if(chk_tab == 'area'){
					$('.open-plan-a').trigger('click');
				}
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});
	}

	/* 지역우선 */
	//구역별서비스리스트가져오기
	function fnClList(areacode) {

		$('.map_list > li').removeClass('active');
		$('.img_map > area').attr('title', '');

		$('#chk_tab').val('area');
		$('#click_area').val(areacode);
		var req ={
				"area_code" : $('#click_area').val()
			};

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectListReservSvcAreaAjax.do',
			data : req,
			success : function(param) {

				var str = '';
				var svc_chk = 0;
				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}



				for (i=0 ; i < param.resultList.length ; i++) {
					//$('[name=cl' + i + ']').html(param.resultList[i].CL_CNT);
					// class="svc_cnt" name='cl1' 에서 name='cl1' 삭제 후, 아래 코드로 대체
					$('.svc_cnt')[i].innerHTML = param.resultList[i].CL_CNT;
					svc_chk = svc_chk + param.resultList[i].CL_CNT;
				}
				if(svc_chk > 0){
					if($('#' + areacode).attr('id') == areacode){
						$('#' + areacode).addClass('active');
						$('area[alt="' + $('#' + areacode).text() + '"]').attr('title', "선택됨");
					}

					$("#select_txt_a").html('<li>' + $('#' + areacode).text() + '</li>');
					$('#select_txt_s').html('');
					$('#step_chk').val('1');
					$('#chk_cal').val('N');
					$('.clcode_1').trigger('click');
					fnPlaceList('T100');
					fnPlaceList('T200');
					fnPlaceList('T500');
					fnPlaceList('T000');
					fnPlaceList('T400');
					// 체육시설 클릭
					// 기존 목록 삭제
					$('#svc_list_a').html('');
					$('.open-svc-a').trigger('click');
				} else{
					alert('해당 구역에 서비스가 존재하지 않습니다.');
					fnPosibleArea();
				}
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});
	}
/*
	//서비스별 달력 세팅
	function fnReserView_area(svd_id) {

		// 기존 선택된 회차 카운트 초기화
		$('#count').val('0');
		// 기존 달력 삭제
		$('.area_cal_box').html('');
		// 기존 회차 삭제
		$('#useUnit').html('');

		var req ={
				"svd_id" : svd_id,
			};

		$("#rsv_svc_id").val(svd_id);

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectReservViewAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				}

				var use_time_unit_code = param.resultMap.USE_TIME_UNIT_CODE;
				var tme_ty_code = param.resultMap.TME_TY_CODE;

				$("#use_time_unit_code").val(use_time_unit_code);
				$("#tme_ty_code").val(tme_ty_code);
				$("#sltYear").val(param.param.sltYear);
				$("#sltMonth").val(param.param.sltMonth);
				$("#sltDay").val(param.param.sltDay);
				$("#yyyymm").val(param.param.yyyymm);
				$("#year").val(param.param.year);
				$("#month").val(param.param.month);
				$("#dd").val(param.param.dd);

				maincalendar('calendar_area');
				fnDraw();

				// 일정 선택 오픈
				$('.open-plan').trigger('click');
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});
	}
 */
	function fnDraw() {//첫로딩

		$("div[id^='div_cal_']").each(function() {
			$(this).remove();
		});

		var str = "";
		var $resultSet;
		var usedate = "";
		var num = 0;

		var year = $("#yyyy").val();
		var month = $("#mm").val();

		var req = $('#aform').serialize();

		$.ajax({
			type : 'POST',
			dataType : 'json',
			url : '/web/reservation/selectListReservCalAjax.do',
			data : req,
			success : function(param) {

				if (param.resultStats.resultCode == "error") {
					alert(param.resultStats.resultMsg);
					return;
				} else {
					// 이전달 다음달 존재하는지 셋팅
					$('#cal_before').val(param.resultMap.VIEW_BEFORE_YN);
					$('#cal_next').val(param.resultMap.VIEW_NEXT_YN);

					// 달력 그리기
					maincalendar('calendar', year, month);
					maincalendar('calendar_area', year, month);

					$.each(param.resultListDays, function(i) {
						var rs_day = param.resultListDays[i];
						// 값이 없는경우는 해당 날짜에 등록된 회차정보가 없는경우
						var rs = nvl(param.resultListTm[rs_day.YMD]);

						$resultSet = $('.day_' + rs_day.YMD);
						$calendarSet = $('#calendar_' + rs_day.YMD);
						$calendarAreaSet = $('#calendar_area_' + rs_day.YMD);
						$calSet = $('#cal_' + rs_day.YMD);

						// 데이터가 있는것만 활성화 시킨다.
						// 예약 가능한 경우
						if(rs_day.SVC_RESVE_CODE == 'Y' && rs.RCEPT_POSBL_YN == '1' && rs.RESVE_POSBL_CNT > 0){
							// 활성화 시키고, 수량은 보여준다.
							$calendarSet.addClass('able');
							$calendarAreaSet.addClass('able');
							str = '<div id="div_cal_' + rs.USE_DE + '">';
							str += '	<span class="num">' + rs.REG_TOTAL_CNT + '/' + rs.RCRIT_NMPR_CNT + '</span>';
							str += '</div>';

							$calSet.attr('title', '예약가능');
						}
						// 예약이 꽉찬경우, 예약불가, 예약할수 없지만 수량은 보여준다.
						else if((rs_day.SVC_RESVE_CODE == 'C' || rs_day.SVC_RESVE_CODE == 'N') && rs.RCEPT_POSBL_YN == '1'){
							// 비활성화 시키고, 수량은 보여준다.
							$calendarSet.removeClass('able');
							$calendarAreaSet.removeClass('able');
							str = '<div id="div_cal_' + rs.USE_DE + '">';
							str += '	<span class="num">' + rs.REG_TOTAL_CNT + '/' + rs.RCRIT_NMPR_CNT + '</span>';
							str += '</div>';

							$calSet.attr('title', '예약불가');
						}
						else{
							// 비활성화 시키고, 수량은 보여주지 않는다.
							$calendarSet.removeClass('able');
							$calendarAreaSet.removeClass('able');
							str = '<div id="div_cal_' + rs.USE_DE + '">';
							str += '	<span class="num">&nbsp;</span>';
							str += '</div>';

							$calSet.attr('title', '예약불가');
						}
						$resultSet.append(str);



// 						rs = param.resultList[i];
// 						usedate = rs.USE_DE;
// 						$resultSet = $(".day_" + rs.USE_DE);

// 						str = "<div id='div_cal_'>";
// 						str += "<span class='num'>" + rs.REG_TOTAL_CNT + "/"+ rs.RCRIT_NMPR_CNT + "</span>";
// 						str += "</div>";
// 						$resultSet.append(str);
// 						num++;
					});
				}
// 				$("#cal_before").val(param.resultMap.VIEW_BEFORE_YN);
// 				$("#cal_next").val(param.resultMap.VIEW_NEXT_YN);

// 				maincalendar('calendar', year, month);
// 				maincalendar('calendar_area', year, month);
// 				fnDrawPreNext();
			},
			error : function(jqXHR, textStatus, thrownError) {
				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
			}
		});
	}

// 	function fnDrawPreNext() {//월별날짜변경시

// 		$("div[id^='div_cal_']").each(function() {
// 			$(this).remove();
// 		});

// 		var str = "";
// 		var $resultSet;
// 		var usedate = "";
// 		var num = 0;

// 		var year = $("#yyyy").val();
// 		var month = $("#mm").val();
// 		var req = $('#aform').serialize();

// 		$.ajax({
// 			type : 'POST',
// 			dataType : 'json',
// 			url : '/web/reservation/selectListReservCalAjax.do',
// 			data : req,
// 			success : function(param) {

// 				if (param.resultStats.resultCode == "error") {
// 					alert(param.resultStats.resultMsg);
// 					return;
// 				} else {
// 					$.each(param.resultList, function(i) {
// 						rs = param.resultList[i];
// 						usedate = rs.USE_DE;
// 						$resultSet = $(".day_" + rs.USE_DE);

// 						str = "<div id='div_cal_'>";
// 						str += "<span class='num'>" + rs.REG_TOTAL_CNT + "/" + rs.RCRIT_NMPR_CNT + "</span>";
// 						str += "</div>";
// 						$resultSet.append(str);
// 						num++;
// 					});
// 				}
// 			},
// 			error : function(jqXHR, textStatus, thrownError) {
// 				ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
// 			}
// 		});
// 	}

	//달력일자별회차불러오기
// 	function fnCalUnit(date) {

// 		$('#chk_cal').val('Y');
// 		$('#calendar td.able').removeClass('on');
// 		$('#calendar_area td.able').removeClass('on');
// 		$('#calendar_' + date).addClass('on');
//		$("#useUnit").html('');
//		$("#useUnit_area").html('');

// 		var rsv_svc_id = $("#rsv_svc_id").val();
// 		var use_time_unit_code = $("#use_time_unit_code").val();
// 		var tme_ty_code = $("#tme_ty_code").val();

// 		var req ={
// 				"rsv_svc_id" : rsv_svc_id,
// 				"date" : date
// 			};

// 		if(use_time_unit_code != 'B409'){

// 			$.ajax( {
// 				type : 'POST',
// 				dataType : 'json',
// 				url : '/web/reservation/selectListReservCalUnitAjax.do',
// 				data : req,
// 				success : function(param) {
// 					console.log(param);
// 					if(param.resultStats.resultCode == "error"){
// 						alert(param.resultStats.resultMsg);
// 						return;
// 					}

// 					var cal_str = ""

// 					if(date == null){
// 						$("#calCheck").val('N');
// 						cal_str += '<li>날짜를 선택해주세요.</li>';
// 					}else{
// 						if (param.calList.length == 0){
// 							$("#calCheck").val('N');
// 							cal_str += '<li>해당 날짜에 회차정보가 없습니다.</li>';
// 						}else{
// 							$("#calCheck").val('Y');
// 							$("#unitCheck").val('N');
// 							for (i=0 ; i < param.calList.length ; i++) {

// 								if(param.calList[i].REG_CNT == param.calList[i].RCRIT_NMPR){
// 									cal_str += '<li class="disable">';
// 								}else if(param.calList[i].RCEPT_POSBL_YN == 0){
// 									cal_str += '<li class="disable">';
// 								}else{
// 									if(tme_ty_code == 'TM02'){
// 										cal_str += '<li id="unit'+i+'" class="tab-all"><a href="#" onclick="fnUnitTM('+i+',1,'+param.calList[i].USE_YEAR+','+param.calList[i].USE_MONTH+','+param.calList[i].USE_DAY+','+param.calList[i].USE_DE+','+param.calList[i].RESVE_UNIT_SEQ+'); return false;"';
// 										cal_str += '  title="('+param.calList[i].RSV_TM_NM+') '+param.calList[i].USE_HM+' ('+param.calList[i].REG_CNT+'/'+param.calList[i].RCRIT_NMPR+')">';
// 									}else{
// 										cal_str += '<li id="unit'+i+'" class="tab-all"><a href="#" onclick="fnUnit('+i+','+param.calList[i].USE_YEAR+','+param.calList[i].USE_MONTH+','+param.calList[i].USE_DAY+','+param.calList[i].USE_DE+','+param.calList[i].RESVE_UNIT_SEQ+'); return false;" ';
// 										cal_str += '  title="('+param.calList[i].RSV_TM_NM+') '+param.calList[i].USE_HM+' ('+param.calList[i].REG_CNT+'/'+param.calList[i].RCRIT_NMPR+')">';
// 									}
// 								}
// 								cal_str += '('+param.calList[i].RSV_TM_NM+') '+param.calList[i].USE_HM+' (<span class="fc_red">'+param.calList[i].REG_CNT+'</span>/'+param.calList[i].RCRIT_NMPR+')</a></li>';
// 							}
// 						}
// 					}
// 					if($('#chk_tab').val() == 'clCode'){
// 						$("#useUnit").html(cal_str);
// 					} else {
// 						$("#useUnit_area").html(cal_str);
// 					}
// 				},
// 				error : function(jqXHR, textStatus, thrownError){
// 					ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
// 				}
// 			});
// 		}else{
// 			$.ajax( {
// 				type : 'POST',
// 				dataType : 'json',
// 				url : '/web/reservation/selectListReservCalUnitNightAjax.do',
// 				data : req,
// 				success : function(param) {
// 					console.log(param);
// 					if(param.resultStats.resultCode == "error"){
// 						alert(param.resultStats.resultMsg);
// 						return;
// 					}

// 					var cal_str = ""
// 					cal_str += param.resultMap.USE_YEAR+"/"+param.resultMap.USE_MONTH+"/"+param.resultMap.USE_DAY;
// 					$("#calCheck").val('Y');
// 					$("#nightday").html(cal_str);
// 					$("#resve_unit_seq").val(param.resultMap.RESVE_UNIT_SEQ);
// 					$("#useYear").val(param.resultMap.USE_YEAR);
// 					$("#useMonth").val(param.resultMap.USE_MONTH);
// 					$("#useDay").val(param.resultMap.USE_DAY);
// 					$("#useDe").val(param.resultMap.USE_DE);
// 				},
// 				error : function(jqXHR, textStatus, thrownError){
// 					ajaxJsonErrorAlert(jqXHR, textStatus, thrownError)
// 				}
// 			});

// 		}

// 	}

	// 단일회차선택
// 	function fnUnit(i,useYear,useMonth,useDay,useDe,resve_unit_seq) {

// 		$("#unitCheck").val('Y');
// 		$('.tab-all').removeClass("active");
// 		$("#unit"+i+"").attr("class","tab-all active");
// 		$("#useYear").val(useYear);
// 		$("#useMonth").val(useMonth);
// 		$("#useDay").val(useDay);
// 		$("#useDe").val(useDe);
// 		$("#resve_unit_seq").val(resve_unit_seq);

// 	}

	// 다중회차선택
// 	function fnUnitTM(i,j,useYear,useMonth,useDay,useDe,resve_unit_seq) {

// 		var count =  Number($("#count").val());
// 		var rsv_counts =  Number($("#rsv_counts").val());
// 		var rsv_counte =  Number($("#rsv_counte").val());

// 		if(count == 0){
// 			$("#rsv_counts").val(i);
// 			$("#useDe").val(useDe);
// 		}else{
// 			$("#rsv_counte").val(i);
// 			$("#useDeEnd").val(useDe);
// 		}

// 		var count = count + j;

// 		$("#count").val(count);


// 		if(count > 2){
// 			alert("회차를 다시 선택해주세요.")
// 			$("#count").val(0);
// 			$('.tab-all').removeClass("active");
// 		}else{
// 			$("#unit"+i+"").attr("class","tab-all active");
// 		}

// 		$("#unitCheck").val('Y');
// 		$("#useYear").val(useYear);
// 		$("#useMonth").val(useMonth);
// 		$("#useDay").val(useDay);
// 		$("#useDe").val(useDe);
// 		$("#resve_unit_seq").val(resve_unit_seq);

// 	}


	// 예약입력화면
	function fnRevervInsertForm() {

		//로그인 체크 우선
		if(true){
			alert("로그인해주세요.");
			location.href = "/web/loginForm.do";
			return;
		}

		if($('#chk_online').val() != '1'){
			alert('해당 서비스는 온라인 예약이 불가능합니다.');
			return;
		}

		if($('#resve_posbl_yn').val() == 'RRRR'){
			alert('예악마감된 서비스입니다.');
			return;
		}

		if($('#chk_cal').val() == 'N'){
			alert("날짜를 선택해주세요.");
			return;
		}

		// 동일 서비스 선택 여부 확인

		// 동일 회차 선택 여부 확인

		// 예약불량자 확인

		// 이용인원 초과 확인 (예약하기 진행중에 인원이 초과된 경우)

		// 예약하기
		// 선택된 예약날짜 셋팅
		var index = $('.main_tab_list > li.active').index($('.main_tab_list > li'));
		var useDe = '';

		// 분류우선
		if(index == 0){
			useDe = $('#calendar td.able.on a').data('ymd');
		}
		// 지역우선
		else {
			useDe = $('#calendar_area td.able.on a').data('ymd');
		}

		if(typeof useDe === 'undefined'){
			alert("날짜를 선택하세요.");
			return;
		}

		location.href = '/web/reservation/insertFormReserve.do?rsv_svc_id=' + $('#aform [name=rsv_svc_id]').val() + '&useDe=' + useDe;
	}

	//지역우선 예약하기
	function fnDetailSvc(){
		code=$('[name=sch_svc_info]').val().split("|");

		if ($('[name=sch_svc_info]').val()==""){
			alert("서비스를 선택해주세요.");
			return;
		}

		if(code[2]=="INSTT"){
			var popupX = (window.screen.width / 2) - (1300 / 2); 	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
			var popupY= (window.screen.height / 2) - (900 / 2); 	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

			window.open(code[3], '_blank');
		}else{
			location.href = "/web/reservation/selectReservView.do?rsv_svc_id=" + code[0];
		}
	}

	// 지역우선 > 분류우선 변경시 값 초기화
	function fnResetCode(){

		$('#chk_cal').val('N');
		$('#calendar td.able').removeClass('on');
		$('#calendar_area td.able').removeClass('on');
		$('#old_val').val('');
		$('#cl_code').val('T');
		// 기존 선택 제외
		$('.img_map > area').removeClass('active');
		$('.map_list > li').removeClass('active');
		// 기존 목록 삭제
		$('.svc_list_a').html('');
		// 기존 달력 삭제
		$('.cl_cal_box').html('');
		$('.area_cal_box').html('');
		// 기존 회차 삭제
		$('#useUnit_area').html('');

		$('#click_area').val('');
		$('#select_txt_a').html('<li>※ 서울 이외 지역은 통합 검색 또는 메뉴를 이용하여 주시기 바랍니다.</li>');
		$('#select_txt_s').html('');

		$('.svc_cnt').html('0');
		$('.svc_list').html('');

		$('.cl_1').trigger('click');
		fnPlaceList('T100');
		$('.map_list_area > li').removeClass('posible');
		$('.map_list > li').removeClass('posible');
		$('.img_map > area').removeClass('posible');

		$('.open-service').trigger('click');
		$('.service').removeClass('active');
		$('.place').removeClass('active');
		$('.plan').removeClass('active');

		$('.service').addClass('active');

		$('#step_chk').val('0');
		$('#chk_cal').val('N');
		$('#chk_tab').val('clCode');
	}

	// 분류우선 > 지역우선 변경시 값 초기화
	function fnPosibleArea(){

		$('#chk_cal').val('N');
		$('#calendar td.able').removeClass('on');
		$('#calendar_area td.able').removeClass('on');
		$('#old_val').val('');
		// 기존 선택 제외
		$('.img_map > area').removeClass('active');
		$('.map_list > li').removeClass('active');
		// 기존 목록 삭제
		$('#svc_list_d').html('');
		// 기존 달력 삭제
		$('.cl_cal_box').html('');
		$('.area_cal_box').html('');
		// 기존 회차 삭제
		$('#useUnit').html('');

		$('.map_list_area > li').addClass('posible');
		$('[name=image-map2] > area').addClass('posible');

		$('#select_txt_svc').html('');
		$('#select_txt1').html('<li>※ 서울 이외 지역은 통합 검색 또는 메뉴를 이용하여 주시기 바랍니다.</li>');

		$('.place').removeClass('active');
		$('.service').removeClass('active');
		$('.plan').removeClass('active');

		$('.open-area-a').trigger('click');
		$('.place').addClass('active');

		$('#step_chk').val('0');
		$('#chk_cal').val('N');
		$('#chk_tab').val('area');
	}

	//날씨 정보 조회 AJAX
	function fnCheckLocation(){

		try{ /* var getWeather =  function(param){*/
			$.ajax({
				type    : "POST"
				,url    : "/web/selectWeatherInfoAjax.do"
				,dataType 	: "json"
				,success: function(resultStats){
					fnCreateWeather(resultStats.resultWeather);
					fnCreateDust(resultStats.resultDust);
				}
				,error  : function(resultStats){
					$('.seoul_weather').hide();
				}
			});
		/* } */
		}catch(e){
			$('.seoul_weather').hide();
			console.log('에러API')
		}
		//fnGetGeoLocation(getWeather);
	}

	function fnCheckSeason(){

		var date = new Date();
		var month = date.getMonth()+1;

		if(month == 12 || month == 1 || month == 2){
			 $(".main_step.type5").css('background-image','url("/common/img/ko/main/main_bg_winter.jpg")');
		}else if(month >= 3 && month <= 5){
			 $(".main_step.type5").css('background-image','url("/common/img/ko/main/main_bg_spring.jpg")');
		}else if(month >= 6 && month <= 8){
			 $(".main_step.type5").css('background-image','url("/common/img/ko/main/main_bg_summer.jpg")');
		}else if(month >= 9 && month <= 11){
			 $(".main_step.type5").css('background-image','url("/common/img/ko/main/main_bg_autumn.jpg")');
		}

	}


	function fnGetGeoLocation(callback){

	if(!(navigator.geolocation)){
	console.log('[geoLocation] 브라우저에서 HTML5 Geolocation을 지원하지 않습니다. !');
	callback(null);
	}

	navigator.geolocation.getCurrentPosition(
	function(position){
	/* 서울시청 => 위도:Latitude:37.5666103 , 경도:Longitude:126.9783882  */
		var y = position.coords['latitude'];
		var x = position.coords['longitude'];
		console.log('[geoLocation] 브라우저에서 위치정보 : y_latitude:' + y + ' / x_longitude:' + x);
		callback({'y_lat':y, 'x_long':x});
		},
		function(err){
		var str = "";
		switch(err.code){
		case err.PERMISSION_DENTED: str = "사용자 거부"; break;
		case err.PERMISSION_UNAVAILABLE: str = "지리정보를 얻을 수 없음"; break;
		case err.TIMEOUT: str = "시간초과"; break;
		case err.UNKNOWN_ERROR: str = "사용자 거부"; break;
		}
					console.log('[geoLocation info] 브라우저에서 위치정보 획득 실패 :' + str);
		callback(null);
		},
		{
		enableHighAccuracy: false,
		maximumAge: 0,
		timeout: Infinity
		}
		);
		}
	function isTmp(value){
		return (value.category === "TMP");
	}

	function isSky(value){
		return (value.category === "SKY");
	}

	function isPty(value){
		return (value.category === "PTY");
	}

	//날씨 정보 분기처리
	function fnCreateWeather(data){

		if(null === data) {
			$('.seoul_weather').hide();
			return;
		}

		var weatherTmp = data.item.filter(isTmp);
		weatherTmp = weatherTmp[0].fcstValue;
		var weatherSky = data.item.filter(isSky);
		weatherSky = weatherSky[0].fcstValue;
		var weatherPty = data.item.filter(isPty);
		weatherPty = weatherPty[0].fcstValue;


		var html     = '';
		if(weatherPty=='0'){
			if(weatherSky=='1'){
				html += '<img src="../common/img/ko/icon_wh_2.png" alt="날씨 맑음">';
			}else if(weatherSky=='2'){
				html += '<img src="../common/img/ko/icon_wh_1.png" alt="날씨 구름 조금">' ;
			}else if(weatherSky=='3'){
				html += '<img src="../common/img/ko/icon_wh_7.png" alt="날씨 구름많음">';
			}else if(weatherSky=='4'){
				html += '<img src="../common/img/ko/icon_wh_6.png" alt="날씨 구름">';
			}
		}else if(weatherPty=='1'){
			html += '<img src="../common/img/ko/icon_wh_3.png" alt="날씨 비">';
		}else if(weatherPty=='2'){
			html += '<img src="../common/img/ko/icon_wh_5.png" alt="날씨 눈비">';
		}else if(weatherPty=='3'){
			html += '<img src="../common/img/ko/icon_wh_4.png" alt="날씨 눈">';
		}else if(weatherPty=='4'){
			html += '<img src="../common/img/ko/icon_wh_3.png" alt="날씨 비">';
		}
		html += '<strong>'+weatherTmp+'℃</strong>';
		html += '<span>서울시</span>';
		html += '<div id ="pmNm"></div>';

		$('.seoul_weather').html(html)
	}
	function fnCreateDust(data){

		if(null === data) {
			$('.seoul_weather').hide();
			return;
		}

		var pm10 = data['row']['PM10'];
		var pm25 = data['row']['PM25'];
		var pm10Nm = ''
		var pm25Nm = ''

		if(pm10 <= 30){
			pm10Nm = '좋음'
		}else if(pm10 >= 30 && pm10 <= 80){
			pm10Nm = '보통'
		}else if(pm10 >= 81 && pm10 <= 150){
			pm10Nm = '나쁨'
		}else{
			pm10Nm = '매우나쁨'
		}

		if(pm25 <= 15){
			pm25Nm = '좋음'
		}else if(pm25 >= 16 && pm25 <= 35){
			pm25Nm = '보통'
		}else if(pm25 >= 36 && pm10 <= 75){
			pm25Nm = '나쁨'
		}else {
			pm25Nm = '매우나쁨'
		}

		var html = '';
		html += '미세먼지('+pm10Nm+') '+'초미세먼지('+pm25Nm+')';

		$('#pmNm').html(html);
	}

	//추천서비스 관심탭
	function fnUseTaget(data){

		var req ={
				"USE_TAGET_CODE" : data
			};

		$.ajax({
			url: '/web/selectUseTagetAjax.do',
			data: req,
			type:'POST',
			dataType:'json',
			success:function(param){
				var html = "";
				var url ="/web/common/file/FileDown.do";
				var N = 'N';
				$.each(param.resultList, function(i){
					var item = param.resultList[i];

					html +='<a href="#" class="item " onclick="fnDetailPage(\''+item.SVC_ID+'\', \''+N+'\'); return false;" title="'+item.SVC_NM+'">';
					html +='<div class="img_box">';
					html +='<div class="ib_top">';
						if(item.SVC_STTUS_CODE == 'R402'){
							html +='<span class="bd_label status1">안내중</span>';
						}
						if(item.SVC_STTUS_CODE == 'R403'){
							html +='<span class="bd_label status1">접수중</span>';
						}
						if(item.PCHRG_YN == 'Y'){
							html +='<span class="bd_label type1">유료</span>'	;
						}
						if(item.PCHRG_YN == 'N'){
							html +='<span class="bd_label type2">무료 </span>'	;
						}
					html +='</div>';
					if(nvl(item.ATTRB_3) != ''){
						html +='<img src="/web/common/file/FileDown.do?file_id='+item.FILE_ID+'" alt="'+item.SVC_NM+' 사진"  onerror="this.src=\'/common/img/ko/no_img.png\'">'
					}else{
						html += '<img src="'+item.FILE_PARTN_COURS+item.FILE_ID+'.'+item.FILE_EXTSN_NM;
						html += '"alt="'+item.SVC_NM+' 사진" onerror="this.src=\'/common/img/ko/no_img.png\'">'
					}
					if(item.SELECT_MTH_CODE == 'R001'){
						html +='<span class="ib_num"> 선착순</span>';
					}
					if(item.SELECT_MTH_CODE == 'R002'){
						html +='<span class="ib_num"> 추첨</span>';
					}
					if(item.SELECT_MTH_CODE == 'R003'){
						html +='<span class="ib_num"> 심사</span>';
					}
					html +='</div>';
					html +='								<div class="con_box">';
					html +='									<ul class="ib_type">';
					html +='										<li>'+item.MXMM_CL_NM+'</li>';
					html +='										<li>'+item.MUMM_CL_NM+'</li>';
					html +='									</ul>';
					html +='									<h4 class="tit1">'+item.SVC_NM+'</h4>';
					html +='									<ul class="ib_attr">';
					html +='										<li><b class="date1">접수기간</b> '+item.RCEPT_BEGIN_DT+' ~';
					html +='											'+item.RCEPT_END_DT+'</li>';
					html +='										<li><b class="date2">이용기간</b> '+item.USE_BEGIN_DT+' ~';
					html +='											'+item.USE_END_DT+'</li>';
					html +='									</ul>';
					html +='								</div>';
					html +='							</a>';
					html += '</div>';
					html += '</div>';
				});
				$(open_bn).slick("slickRemove", null, null, true); //슬릭삭제
				$(open_bn).html(html);
				$(open_bn).resize().slick("refresh");//슬릭 초기화
			}


		});

	}


	function recommandChange(){




		var str = "" ;

		str += '추천 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';

		$('.main_tit2').html(str);

	 	var str2 = "" ;

		str2 += '자주 이용되는 공공서비스를 추천해드립니다.';
		$('.main_txt1').html(str2);

		/* 자주 이용되는 공공서비스를 추천해드립니다. */
	}

	function interestChange(){

		var str = "" ;

		str += '관심 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';

		$('.main_tit2').html(str);
		/* 관심설정에 등록된 데이터 기반으로 공공서비스가 표출됩니다. */

	 	var str2 = "" ;

		str2 += '관심설정에 등록된 데이터 기반으로 공공서비스가 표출됩니다.';
		$('.main_txt1').html(str2);
	}

	function recentChange(){




		var str = "" ;

		str += '최신 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';

		$('.main_tit2').html(str);
		/* 최신 등록된 공공서비스가 표출됩니다. */

	 	var str2 = "" ;

		str2 += '최신 등록된 공공서비스가 표출됩니다.';
		$('.main_txt1').html(str2);

	}

	function allChange(){

		var str = "" ;

		str += '전체 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';

		$('.main_tit2').html(str);
		/* 최신 등록된 전체 공공서비스가 표출됩니다. */

	 	var str2 = "" ;

		str2 += '최신 등록된 전체 공공서비스가 표출됩니다.';
		$('.main_txt1').html(str2);
	}

	function bookmarkChange(){

		var str = "" ;

		str += '즐겨 찾기 &nbsp;';
		str += '<span class="fc_blue">서비스</span>';


		$('.main_tit2').html(str);
		/* 즐겨찾기에 등록된 공공서비스가 표출됩니다. */

	 	var str2 = "" ;

		str2 += '즐겨찾기에 등록된 공공서비스가 표출됩니다.';
		$('.main_txt1').html(str2);

	}











	//]]>
</script>

<!-- <div id="contents"> -->
<div class="main_wrap">
	<div class="main_step type5">
		<div class="container">
			<input type="hidden" name="sch_svc_info" value="" />
			<input type="hidden" name="loc_now" value="" />
			<input type="hidden" class="cl_sel_code" name="select_code_T100" value="" />
			<input type="hidden" class="cl_sel_code" name="select_code_T200" value="" />
			<input type="hidden" class="cl_sel_code" name="select_code_T000" value="" />
			<input type="hidden" class="cl_sel_code" name="select_code_T400" value="" />
			<input type="hidden" class="cl_sel_code" name="select_code_T500" value="" />
			<ul class="cont_top">
				<li>
					<h3>
				      <span class="hide">한번에 쉽게! 간편하게! 서울특별시 공공예약서비스</span> <em></em> <b>
				         이용하시려는 서비스를 빠르게 예약해보세요!
				         <!-- 이용하시려는 서비스를 빠르게 예약해보세요. -->
				       </b>
				     </h3>
					<form name="all_search" id="all_search" method="post" action="#">
						<fieldset>
							<legend class="hide">
								한번에 쉽게! 간편하게! 서울특별시 공공예약서비스
							</legend>
							<div class="form_area">
								<input type="text" name="search1" maxlength="50" value="" title="검색어를 입력해주세요!" placeholder="검색어를 입력해주세요!"
									onkeypress="if(event.keyCode==13){fnMainSearch();}">
								<button type="button" onclick="fnMainSearch();">
									검색하기
								</button>
							</div>
						</fieldset>
					</form>
				</li>
				<li class="quick_reserv">
				<!-- 210831 서울시 날씨 추가 -->
				<div class="seoul_weather">
					<div id ="pmNm"></div>
				</div>
				<!-- //210831 서울시 날씨 추가 -->
				<a href="javascript:void(0);">

						<h4>
							빠른예약
							<span>원하시는 서비스를 보다 빠르게 예약할 수 있습니다.</span>
						</h4> <span class="btn">바로가기</span> <i></i>
				</a></li>
			</ul>
			<div class="wrap_idx">
				<div class="tab_wrap">
					<h4>
						<em>지역 예약</em>
					</h4>
					<ul class="tab_st tab_idx click">
						<li class="on"><a href="javascript:void(0)">체육시설</a></li>
						<li><a href="javascript:void(0)">공간시설</a></li>
						<li><a href="javascript:void(0)">문화체험</a></li>
						<li><a href="javascript:void(0)">교육강좌</a></li>
						<li><a href="javascript:void(0)">진료복지</a></li>
					</ul>
				</div>
				<div class="con_idx">
					<div class="idx on">
						<div class="ct_select w186">
							<select id="sch_loc" name="sch_loc" class="sch_loc" title="구 선택">

								<option value="" >선택</option>
								<option value="all|T100" >전체</option>
								
									<option value="SE01|T100" >
										
											강남구
										
										
									</option>
								
									<option value="SE02|T100" >
										
											강동구
										
										
									</option>
								
									<option value="SE03|T100" >
										
											강북구
										
										
									</option>
								
									<option value="SE04|T100" >
										
											강서구
										
										
									</option>
								
									<option value="SE05|T100" >
										
											관악구
										
										
									</option>
								
									<option value="SE06|T100" >
										
											광진구
										
										
									</option>
								
									<option value="SE07|T100" >
										
											구로구
										
										
									</option>
								
									<option value="SE08|T100" >
										
											금천구
										
										
									</option>
								
									<option value="SE09|T100" >
										
											노원구
										
										
									</option>
								
									<option value="SE10|T100" >
										
											도봉구
										
										
									</option>
								
									<option value="SE11|T100" >
										
											동대문구
										
										
									</option>
								
									<option value="SE12|T100" >
										
											동작구
										
										
									</option>
								
									<option value="SE13|T100" >
										
											마포구
										
										
									</option>
								
									<option value="SE14|T100" >
										
											서대문구
										
										
									</option>
								
									<option value="SE15|T100" >
										
											서초구
										
										
									</option>
								
									<option value="SE16|T100" >
										
											성동구
										
										
									</option>
								
									<option value="SE17|T100" >
										
											성북구
										
										
									</option>
								
									<option value="SE18|T100" >
										
											송파구
										
										
									</option>
								
									<option value="SE19|T100" >
										
											양천구
										
										
									</option>
								
									<option value="SE20|T100" >
										
											영등포구
										
										
									</option>
								
									<option value="SE21|T100" >
										
											용산구
										
										
									</option>
								
									<option value="SE22|T100" >
										
											은평구
										
										
									</option>
								
									<option value="SE23|T100" >
										
											종로구
										
										
									</option>
								
									<option value="SE24|T100" >
										
											중구
										
										
									</option>
								
									<option value="SE25|T100" >
										
											중랑구
										
										
									</option>
								
									<option value="SE26|T100" >
										
											고양시
										
										
									</option>
								
									<option value="SE27|T100" >
										
											과천시
										
										
									</option>
								
									<option value="SE28|T100" >
										
											남양주시
										
										
									</option>
								
									<option value="SE29|T100" >
										
											하남시
										
										
									</option>
								
									<option value="SEB0|T100" >
										
											예산군
										
										
									</option>
								
									<option value="SEK0|T100" >
										
											횡성군
										
										
									</option>
								
									<option value="SEK1|T100" >
										
											춘천시
										
										
									</option>
								
									<option value="SEL0|T100" >
										
											완주군
										
										
									</option>
								
									<option value="SEL1|T100" >
										
											정읍시
										
										
									</option>
								
									<option value="SEN0|T100" >
										
											포천시
										
										
									</option>
								
									<option value="SEP0|T100" >
										
											제천시
										
										
									</option>
								
									<option value="SET|T100" >
										
											인천시
										
										
									</option>
								
									<option value="SEP1|T100" >
										
											서천군
										
										
									</option>
								
									<option value="SEP2|T100" >
										
											함평군
										
										
									</option>
								
									<option value="SEP3|T100" >
										
											상주시
										
										
									</option>
								
							</select>
						</div>
						<div class="ct_select w246">
							<select name="select_T100" class="sch_cl" title="시설 선택">
								<option value="">선택</option>
							</select>
						</div>
						<div class="ct_select w440">
							<select name="svc_T100" class="sch_svc" title="시설 상세 선택">
								<option value="">선택</option>
							</select>
						</div>
						<button type="button" onclick="fnDetailSvc(); return false;">
							예약하기
						</button>
					</div>
					<div class="idx">
						<div class="ct_select w186">
							<select name="sch_loc" class="sch_loc" title="구 선택">
								<option value=""  >선택</option>
								<option value="all|T500" >전체</option>
								
									<option value="SE01|T500" >
										
											강남구
										
										
									</option>
								
									<option value="SE02|T500" >
										
											강동구
										
										
									</option>
								
									<option value="SE03|T500" >
										
											강북구
										
										
									</option>
								
									<option value="SE04|T500" >
										
											강서구
										
										
									</option>
								
									<option value="SE05|T500" >
										
											관악구
										
										
									</option>
								
									<option value="SE06|T500" >
										
											광진구
										
										
									</option>
								
									<option value="SE07|T500" >
										
											구로구
										
										
									</option>
								
									<option value="SE08|T500" >
										
											금천구
										
										
									</option>
								
									<option value="SE09|T500" >
										
											노원구
										
										
									</option>
								
									<option value="SE10|T500" >
										
											도봉구
										
										
									</option>
								
									<option value="SE11|T500" >
										
											동대문구
										
										
									</option>
								
									<option value="SE12|T500" >
										
											동작구
										
										
									</option>
								
									<option value="SE13|T500" >
										
											마포구
										
										
									</option>
								
									<option value="SE14|T500" >
										
											서대문구
										
										
									</option>
								
									<option value="SE15|T500" >
										
											서초구
										
										
									</option>
								
									<option value="SE16|T500" >
										
											성동구
										
										
									</option>
								
									<option value="SE17|T500" >
										
											성북구
										
										
									</option>
								
									<option value="SE18|T500" >
										
											송파구
										
										
									</option>
								
									<option value="SE19|T500" >
										
											양천구
										
										
									</option>
								
									<option value="SE20|T500" >
										
											영등포구
										
										
									</option>
								
									<option value="SE21|T500" >
										
											용산구
										
										
									</option>
								
									<option value="SE22|T500" >
										
											은평구
										
										
									</option>
								
									<option value="SE23|T500" >
										
											종로구
										
										
									</option>
								
									<option value="SE24|T500" >
										
											중구
										
										
									</option>
								
									<option value="SE25|T500" >
										
											중랑구
										
										
									</option>
								
									<option value="SE26|T500" >
										
											고양시
										
										
									</option>
								
									<option value="SE27|T500" >
										
											과천시
										
										
									</option>
								
									<option value="SE28|T500" >
										
											남양주시
										
										
									</option>
								
									<option value="SE29|T500" >
										
											하남시
										
										
									</option>
								
									<option value="SEB0|T500" >
										
											예산군
										
										
									</option>
								
									<option value="SEK0|T500" >
										
											횡성군
										
										
									</option>
								
									<option value="SEK1|T500" >
										
											춘천시
										
										
									</option>
								
									<option value="SEL0|T500" >
										
											완주군
										
										
									</option>
								
									<option value="SEL1|T500" >
										
											정읍시
										
										
									</option>
								
									<option value="SEN0|T500" >
										
											포천시
										
										
									</option>
								
									<option value="SEP0|T500" >
										
											제천시
										
										
									</option>
								
									<option value="SET|T500" >
										
											인천시
										
										
									</option>
								
									<option value="SEP1|T500" >
										
											서천군
										
										
									</option>
								
									<option value="SEP2|T500" >
										
											함평군
										
										
									</option>
								
									<option value="SEP3|T500" >
										
											상주시
										
										
									</option>
								
							</select>
						</div>
						<div class="ct_select w246">
							<select name="select_T500" class="sch_cl" title="시설 선택">
								<option value="">선택</option>
							</select>
						</div>
						<div class="ct_select w440">
							<select name="svc_T500"  class="sch_svc" title="시설 상세 선택">
								<option value="">선택</option>
							</select>
						</div>
						<button type="button" onclick="fnDetailSvc(); return false;">
							예약하기
						</button>
					</div>
					<div class="idx">
						<div class="ct_select w186">
							<select name="sch_loc" class="sch_loc" title="구 선택">
								<option value=""  >선택</option>
								<option value="all|T200" >전체</option>
								
									<option value="SE01|T200" >
										
											강남구
										
										
									</option>
								
									<option value="SE02|T200" >
										
											강동구
										
										
									</option>
								
									<option value="SE03|T200" >
										
											강북구
										
										
									</option>
								
									<option value="SE04|T200" >
										
											강서구
										
										
									</option>
								
									<option value="SE05|T200" >
										
											관악구
										
										
									</option>
								
									<option value="SE06|T200" >
										
											광진구
										
										
									</option>
								
									<option value="SE07|T200" >
										
											구로구
										
										
									</option>
								
									<option value="SE08|T200" >
										
											금천구
										
										
									</option>
								
									<option value="SE09|T200" >
										
											노원구
										
										
									</option>
								
									<option value="SE10|T200" >
										
											도봉구
										
										
									</option>
								
									<option value="SE11|T200" >
										
											동대문구
										
										
									</option>
								
									<option value="SE12|T200" >
										
											동작구
										
										
									</option>
								
									<option value="SE13|T200" >
										
											마포구
										
										
									</option>
								
									<option value="SE14|T200" >
										
											서대문구
										
										
									</option>
								
									<option value="SE15|T200" >
										
											서초구
										
										
									</option>
								
									<option value="SE16|T200" >
										
											성동구
										
										
									</option>
								
									<option value="SE17|T200" >
										
											성북구
										
										
									</option>
								
									<option value="SE18|T200" >
										
											송파구
										
										
									</option>
								
									<option value="SE19|T200" >
										
											양천구
										
										
									</option>
								
									<option value="SE20|T200" >
										
											영등포구
										
										
									</option>
								
									<option value="SE21|T200" >
										
											용산구
										
										
									</option>
								
									<option value="SE22|T200" >
										
											은평구
										
										
									</option>
								
									<option value="SE23|T200" >
										
											종로구
										
										
									</option>
								
									<option value="SE24|T200" >
										
											중구
										
										
									</option>
								
									<option value="SE25|T200" >
										
											중랑구
										
										
									</option>
								
									<option value="SE26|T200" >
										
											고양시
										
										
									</option>
								
									<option value="SE27|T200" >
										
											과천시
										
										
									</option>
								
									<option value="SE28|T200" >
										
											남양주시
										
										
									</option>
								
									<option value="SE29|T200" >
										
											하남시
										
										
									</option>
								
									<option value="SEB0|T200" >
										
											예산군
										
										
									</option>
								
									<option value="SEK0|T200" >
										
											횡성군
										
										
									</option>
								
									<option value="SEK1|T200" >
										
											춘천시
										
										
									</option>
								
									<option value="SEL0|T200" >
										
											완주군
										
										
									</option>
								
									<option value="SEL1|T200" >
										
											정읍시
										
										
									</option>
								
									<option value="SEN0|T200" >
										
											포천시
										
										
									</option>
								
									<option value="SEP0|T200" >
										
											제천시
										
										
									</option>
								
									<option value="SET|T200" >
										
											인천시
										
										
									</option>
								
									<option value="SEP1|T200" >
										
											서천군
										
										
									</option>
								
									<option value="SEP2|T200" >
										
											함평군
										
										
									</option>
								
									<option value="SEP3|T200" >
										
											상주시
										
										
									</option>
								
							</select>
						</div>
						<div class="ct_select w246">
							<select name="select_T200" class="sch_cl" title="시설 선택">
								<option value="">선택</option>
							</select>
						</div>
						<div class="ct_select w440">
							<select name="svc_T200"	 class="sch_svc" title="시설 상세 선택">
								<option value="">선택</option>
							</select>
						</div>
						<button type="button" onclick="fnDetailSvc(); return false;">
							예약하기
						</button>
					</div>
					<div class="idx">
						<div class="ct_select w186">
							<select name="sch_loc" class="sch_loc" title="구 선택">
								<option value=""  >선택</option>
								<option value="all|T000" >전체</option>
								
									<option value="SE01|T000" >
										
											강남구
										
										
									</option>
								
									<option value="SE02|T000" >
										
											강동구
										
										
									</option>
								
									<option value="SE03|T000" >
										
											강북구
										
										
									</option>
								
									<option value="SE04|T000" >
										
											강서구
										
										
									</option>
								
									<option value="SE05|T000" >
										
											관악구
										
										
									</option>
								
									<option value="SE06|T000" >
										
											광진구
										
										
									</option>
								
									<option value="SE07|T000" >
										
											구로구
										
										
									</option>
								
									<option value="SE08|T000" >
										
											금천구
										
										
									</option>
								
									<option value="SE09|T000" >
										
											노원구
										
										
									</option>
								
									<option value="SE10|T000" >
										
											도봉구
										
										
									</option>
								
									<option value="SE11|T000" >
										
											동대문구
										
										
									</option>
								
									<option value="SE12|T000" >
										
											동작구
										
										
									</option>
								
									<option value="SE13|T000" >
										
											마포구
										
										
									</option>
								
									<option value="SE14|T000" >
										
											서대문구
										
										
									</option>
								
									<option value="SE15|T000" >
										
											서초구
										
										
									</option>
								
									<option value="SE16|T000" >
										
											성동구
										
										
									</option>
								
									<option value="SE17|T000" >
										
											성북구
										
										
									</option>
								
									<option value="SE18|T000" >
										
											송파구
										
										
									</option>
								
									<option value="SE19|T000" >
										
											양천구
										
										
									</option>
								
									<option value="SE20|T000" >
										
											영등포구
										
										
									</option>
								
									<option value="SE21|T000" >
										
											용산구
										
										
									</option>
								
									<option value="SE22|T000" >
										
											은평구
										
										
									</option>
								
									<option value="SE23|T000" >
										
											종로구
										
										
									</option>
								
									<option value="SE24|T000" >
										
											중구
										
										
									</option>
								
									<option value="SE25|T000" >
										
											중랑구
										
										
									</option>
								
									<option value="SE26|T000" >
										
											고양시
										
										
									</option>
								
									<option value="SE27|T000" >
										
											과천시
										
										
									</option>
								
									<option value="SE28|T000" >
										
											남양주시
										
										
									</option>
								
									<option value="SE29|T000" >
										
											하남시
										
										
									</option>
								
									<option value="SEB0|T000" >
										
											예산군
										
										
									</option>
								
									<option value="SEK0|T000" >
										
											횡성군
										
										
									</option>
								
									<option value="SEK1|T000" >
										
											춘천시
										
										
									</option>
								
									<option value="SEL0|T000" >
										
											완주군
										
										
									</option>
								
									<option value="SEL1|T000" >
										
											정읍시
										
										
									</option>
								
									<option value="SEN0|T000" >
										
											포천시
										
										
									</option>
								
									<option value="SEP0|T000" >
										
											제천시
										
										
									</option>
								
									<option value="SET|T000" >
										
											인천시
										
										
									</option>
								
									<option value="SEP1|T000" >
										
											서천군
										
										
									</option>
								
									<option value="SEP2|T000" >
										
											함평군
										
										
									</option>
								
									<option value="SEP3|T000" >
										
											상주시
										
										
									</option>
								
							</select>
						</div>
						<div class="ct_select w246">
							<select name="select_T000" class="sch_cl" title="시설 선택">
								<option value="">선택</option>
							</select>
						</div>
						<div class="ct_select w440">
							<select name="svc_T000"  class="sch_svc" title="시설 상세 선택">
								<option value="">선택</option>
							</select>
						</div>
						<button type="button" onclick="fnDetailSvc(); return false;">
							예약하기
						</button>
					</div>
					<div class="idx">
						<div class="ct_select w186">
							<select name="sch_loc" class="sch_loc" title="구 선택">
								<option value=""  >선택</option>
								<option value="all|T400" >전체</option>
								
									<option value="SE01|T400" >
										
											강남구
										
										
									</option>
								
									<option value="SE02|T400" >
										
											강동구
										
										
									</option>
								
									<option value="SE03|T400" >
										
											강북구
										
										
									</option>
								
									<option value="SE04|T400" >
										
											강서구
										
										
									</option>
								
									<option value="SE05|T400" >
										
											관악구
										
										
									</option>
								
									<option value="SE06|T400" >
										
											광진구
										
										
									</option>
								
									<option value="SE07|T400" >
										
											구로구
										
										
									</option>
								
									<option value="SE08|T400" >
										
											금천구
										
										
									</option>
								
									<option value="SE09|T400" >
										
											노원구
										
										
									</option>
								
									<option value="SE10|T400" >
										
											도봉구
										
										
									</option>
								
									<option value="SE11|T400" >
										
											동대문구
										
										
									</option>
								
									<option value="SE12|T400" >
										
											동작구
										
										
									</option>
								
									<option value="SE13|T400" >
										
											마포구
										
										
									</option>
								
									<option value="SE14|T400" >
										
											서대문구
										
										
									</option>
								
									<option value="SE15|T400" >
										
											서초구
										
										
									</option>
								
									<option value="SE16|T400" >
										
											성동구
										
										
									</option>
								
									<option value="SE17|T400" >
										
											성북구
										
										
									</option>
								
									<option value="SE18|T400" >
										
											송파구
										
										
									</option>
								
									<option value="SE19|T400" >
										
											양천구
										
										
									</option>
								
									<option value="SE20|T400" >
										
											영등포구
										
										
									</option>
								
									<option value="SE21|T400" >
										
											용산구
										
										
									</option>
								
									<option value="SE22|T400" >
										
											은평구
										
										
									</option>
								
									<option value="SE23|T400" >
										
											종로구
										
										
									</option>
								
									<option value="SE24|T400" >
										
											중구
										
										
									</option>
								
									<option value="SE25|T400" >
										
											중랑구
										
										
									</option>
								
									<option value="SE26|T400" >
										
											고양시
										
										
									</option>
								
									<option value="SE27|T400" >
										
											과천시
										
										
									</option>
								
									<option value="SE28|T400" >
										
											남양주시
										
										
									</option>
								
									<option value="SE29|T400" >
										
											하남시
										
										
									</option>
								
									<option value="SEB0|T400" >
										
											예산군
										
										
									</option>
								
									<option value="SEK0|T400" >
										
											횡성군
										
										
									</option>
								
									<option value="SEK1|T400" >
										
											춘천시
										
										
									</option>
								
									<option value="SEL0|T400" >
										
											완주군
										
										
									</option>
								
									<option value="SEL1|T400" >
										
											정읍시
										
										
									</option>
								
									<option value="SEN0|T400" >
										
											포천시
										
										
									</option>
								
									<option value="SEP0|T400" >
										
											제천시
										
										
									</option>
								
									<option value="SET|T400" >
										
											인천시
										
										
									</option>
								
									<option value="SEP1|T400" >
										
											서천군
										
										
									</option>
								
									<option value="SEP2|T400" >
										
											함평군
										
										
									</option>
								
									<option value="SEP3|T400" >
										
											상주시
										
										
									</option>
								
							</select>
						</div>
						<div class="ct_select w246">
							<select name="select_T400" class="sch_cl" title="시설 선택">
								<option value="">선택</option>
							</select>
						</div>
						<div class="ct_select w440">
							<select name="svc_T400" class="sch_svc" title="시설 상세 선택">
								<option value="">선택</option>
							</select>
						</div>
						<button type="button" onclick="fnDetailSvc(); return false;">
							예약하기
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //main_step1 -->
	<form role="form" id="aform" method="post">
		<input type="hidden" id="cl_code" name="cl_code">
		<input type="hidden" id="sysToday" name="sysToday" value="20250508">
		<input type="hidden" id="rsv_svc_id" name="rsv_svc_id" value="">
		<input type="hidden" id="resve_unit_seq" name="resve_unit_seq" value="">
		<input type="hidden" id="use_time_unit_code" name="use_time_unit_code" value="">
		<input type="hidden" id="tme_ty_code" name="tme_ty_code" value="">
		<input type="hidden" id="wait_posbl_co" name="wait_posbl_co" value="">
		<input type="hidden" id="use_stdr_rcept_daycnt" name="use_stdr_rcept_daycnt" value="">
		<input type="hidden" id="use_stdr_rcept_time" name="use_stdr_rcept_time" value="">
		<input type="hidden" id="rsvde_stdr_rcept_daycnt" name="rsvde_stdr_rcept_daycnt" value="">
		<input type="hidden" id="rsvde_stdr_rcept_time" name="rsvde_stdr_rcept_time" value="">
		<input type="hidden" id="sltYear" name="sltYear" value="">
		<input type="hidden" id="sltMonth" name="sltMonth" value="">
		<input type="hidden" id="sltDay" name="sltDay" value="">
		<input type="hidden" id="yyyymm" name="yyyymm" value="">
		<input type="hidden" id="yyyy" name="yyyy" value="">
		<input type="hidden" id="mm" name="mm" value="">
		<input type="hidden" id="dd" name="dd" value="">
		<input type="hidden" id="useYear" name="useYear" value="">
		<input type="hidden" id="useMonth" name="useMonth" value="">
		<input type="hidden" id="useDay" name="useDay" value="">
		<input type="hidden" id="useDe" name="useDe" value="">
		<input type="hidden" id="calCheck" name="calCheck" value="N"><!-- 날짜체크 -->
		<input type="hidden" id="unitCheck" name="unitCheck" value="N"><!-- 회차체크 -->
		<input type="hidden" id="count" name="count" value="0">
		<input type="hidden" id="rsv_counts" name="rsv_counts" value="">
		<input type="hidden" id="rsv_counte" name="rsv_counte" value="">
		<input type="hidden" id="reqst_resve_unit_value" name="reqst_resve_unit_value" value=""><!-- 신청단위예약값 -->
		<input type="hidden" id="mumm_use_posbl_time" name="mumm_use_posbl_time" value=""><!-- 최소 이용 가능 시간 -->
		<input type="hidden" id="mxmm_use_posbl_time" name="mxmm_use_posbl_time" value=""><!-- 최대 이용 가능 시간 -->
		<input type="hidden" id="mode" name="mode" value="">
		<input type="hidden" id="act" name="act" value="">
		<input type="hidden" id="type" name="type" value="">
		<input type="hidden" id="cal_before" name="cal_before" value="">
		<input type="hidden" id="cal_next" name="cal_next" value="">
		<input type="hidden" id="click_area" name="click_area" value="">
		<input type="hidden" id="chk_tab" name="chk_tab" value="clCode">
		<input type="hidden" id="areacodenm" name="areacodenm">
		<input type="hidden" id="param_check" name="param_check" value="Y">
		<input type="hidden" id="step_chk" name="step_chk" value="0">
		<input type="hidden" id="chk_cal" value="N">
		<input type="hidden" id="chk_online">
		<input type="hidden" id="resve_posbl_yn">
		<div class="main_step2_wrap">
			<div class="step-bg-slide">
				<div class="bg1">
					<div class="bg-height"></div>
				</div>
				<div class="bg2">
					<div class="bg-height"></div>
				</div>
				<div class="bg3">
					<div class="bg-height"></div>
				</div>
				<div class="bg4">
					<div class="bg-height"></div>
				</div>
			</div>
			<div class="main_step2">
				<div class="container">
					<!-- <h3 class="main_tit1">서울시 공공서비스 예약을 <b>한번에! 쉽게! 간편하게!</b></h3> -->

					<h3 class="main_tit3">
						<img src="../common/img/ko/main/slogan.png"
							alt="한번에 쉽게! 간편하게! 서울특별시 공공예약서비스">
					</h3>

					<ul class="main_tab_list">
						<li class="active"><a href="#" onclick="fnResetCode(); return false;"
							title="선택됨"><span class="ico">분류 우선</span></a></li>
						<li><a href="#" onclick="fnPosibleArea(); return false;"><span class="ico">지역 우선</span></a></li>
					</ul>
					<!-- //main_tab_list -->
					<div class="tab_con_box">
						<div class="tab_con active">
							<ul class="main_step_list">
								<li>
									<div class="step_con_box service active">
										<a href="javascript:void(0);" class="tit_box step-1">
											<span class="step_num open-service">1단계
												<span class="txt">서비스 선택</span>
											</span>
											<div class="step_tit">
												<div class="click-svc">
													<span class="fc_green">
														서비스
													</span>
												</div>
											</div>
										</a>
										<div class="step_con">
											<ul class="service_list">
												
													
														<li class="active" >
															<a href="#" onclick="fnPlaceList('T100');" title="선택됨" class="cl_1">
																체육시설
																<span class="num">
																	<b>258</b>개
																</span>
															</a>
														</li>
													
													
													
													
													
												
													
													
														<li>
															<a href="#" onclick="fnPlaceList('T500');">
																공간시설
																<span class="num">
																	<b>358</b>개
																</span>
															</a>
														</li>
													
													
													
													
												
													
													
													
														<li>
															<a href="#" onclick="fnPlaceList('T200');">
																문화체험
																<span class="num">
																	<b>430</b>개
																</span>
															</a>
														</li>
													
													
													
												
													
													
													
													
														<li>
															<a href="#" onclick="fnPlaceList('T000');">
																교육강좌
																<span class="num">
																	<b>142</b>개
																</span>
															</a>
														</li>
													
													
												
													
													
													
													
													
														<li>
															<a href="#" onclick="fnPlaceList('T400');">
																진료복지
																<span class="num">
																	<b>18</b> 개
																</span>
															</a>
														</li>
													
												
											</ul><!-- //service_list -->
											<!-- //service_list -->
											<div class="tab_con_box">
												<div class="tab_con active">
													<div class="svc_box ver2">
														<ul class="svc_list" tabindex="0" id="place_code1">
														</ul>
														<!-- //svc_list -->
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con">
													<div class="svc_box ver2">
														<ul class="svc_list" tabindex="0" id="place_code2">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con">
													<div class="svc_box ver2">
														<ul class="svc_list" tabindex="0" id="place_code3">
														</ul>

													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con">
													<div class="svc_box ver2">
														<ul class="svc_list" tabindex="0" id="place_code4">
														</ul>

													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con">
													<div class="svc_box ver2">
														<ul class="svc_list" tabindex="0" id="place_code5">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
											</div>
											<!-- //tab_con_box -->
										</div>
										<!-- //step_con -->
									</div>
									<!-- //step_con_box -->
								</li>
									<li>
										<div class="step_con_box place">
											<a href="javascript:void(0);" class="tit_box open-place step-2">
												<span class="step_num">2단계<span class="txt">지역 선택</span></span>
												<div class="step_tit">
													<span class="fc_blue">
														지역
													</span>
												<!-- 을 선택해주세요. -->
													<ul class="select_txt" id="select_txt1">
														<!-- 선택 후 보여질 텍스트 -->
													</ul>
												</div>
											</a>
											<div class="step_con map-wrap">
												<div class="img_map_box">
													<ul class="map_list map_list_cl">
														<li class="map_txt1"  data-name="SE22" onclick="fnSvcList('SE22', '', ''); return false;">은평구</li>
														<li class="map_txt2"  data-name="SE14" onclick="fnSvcList('SE14', '', ''); return false;">서대문구</li>
														<li class="map_txt3"  data-name="SE23" onclick="fnSvcList('SE23', '', ''); return false;">종로구</li>
														<li class="map_txt4"  data-name="SE17" onclick="fnSvcList('SE17', '', ''); return false;">성북구</li>
														<li class="map_txt5"  data-name="SE03" onclick="fnSvcList('SE03', '', ''); return false;">강북구</li>
														<li class="map_txt6"  data-name="SE10" onclick="fnSvcList('SE10', '', ''); return false;">도봉구</li>
														<li class="map_txt7"  data-name="SE09" onclick="fnSvcList('SE09', '', ''); return false;">노원구</li>
														<li class="map_txt8"  data-name="SE13" onclick="fnSvcList('SE13', '', ''); return false;">마포구</li>
														<li class="map_txt9"  data-name="SE21" onclick="fnSvcList('SE21', '', ''); return false;">용산구</li>
														<li class="map_txt10" data-name="SE24" onclick="fnSvcList('SE24', '', ''); return false;">중구</li>
														<li class="map_txt11" data-name="SE16" onclick="fnSvcList('SE16', '', ''); return false;">성동구</li>
														<li class="map_txt12" data-name="SE11" onclick="fnSvcList('SE11', '', ''); return false;">동대문구</li>
														<li class="map_txt13" data-name="SE06" onclick="fnSvcList('SE06', '', ''); return false;">광진구</li>
														<li class="map_txt14" data-name="SE25" onclick="fnSvcList('SE25', '', ''); return false;">중랑구</li>
														<li class="map_txt15" data-name="SE04" onclick="fnSvcList('SE04', '', ''); return false;">강서구</li>
														<li class="map_txt16" data-name="SE19" onclick="fnSvcList('SE19', '', ''); return false;">양천구</li>
														<li class="map_txt17" data-name="SE07" onclick="fnSvcList('SE07', '', ''); return false;">구로구</li>
														<li class="map_txt18" data-name="SE20" onclick="fnSvcList('SE20', '', ''); return false;">영등포구</li>
														<li class="map_txt19" data-name="SE08" onclick="fnSvcList('SE08', '', ''); return false;">금천구</li>
														<li class="map_txt20" data-name="SE05" onclick="fnSvcList('SE05', '', ''); return false;">관악구</li>
														<li class="map_txt21" data-name="SE12" onclick="fnSvcList('SE12', '', ''); return false;">동작구</li>
														<li class="map_txt22" data-name="SE15" onclick="fnSvcList('SE15', '', ''); return false;">서초구</li>
														<li class="map_txt23" data-name="SE01" onclick="fnSvcList('SE01', '', ''); return false;">강남구</li>
														<li class="map_txt24" data-name="SE18" onclick="fnSvcList('SE18', '', ''); return false;">송파구</li>
														<li class="map_txt25" data-name="SE02" onclick="fnSvcList('SE02', '', ''); return false;">강동구</li>
													</ul>
													<img alt="서울 전체 지도" src="../common/img/ko/map/map00.png" usemap="#image-map">
													<map name="image-map" class="img_map">
														<area target="_blank"
															alt="은평구" title="" href="#" onclick="fnSvcList('SE22', '', ''); return false;"
															coords="183,73,174,60,164,50,152,51,144,58,135,59,124,60,128,69,127,78,121,90,119,103,120,113,116,123,105,122,121,135,131,126,137,128,143,125,144,114,150,115,153,107,158,104,163,96,163,82,170,81"
															shape="poly" data-se="SE22">
														<area target="_blank"
															alt="서대문구" title="" href="#" onclick="fnSvcList('SE14', '', ''); return false;"
															coords="163,106,158,115,149,117,147,125,141,131,134,131,128,140,142,146,146,154,154,157,163,157,176,156,168,142,168,124,170,116"
															shape="poly" data-se="SE14">
														<area target="_blank"
															alt="종로구" title="" href="#" onclick="fnSvcList('SE23', '', ''); return false;"
															coords="166,103,171,99,166,90,171,84,182,78,187,86,193,100,193,106,188,110,188,116,193,121,199,125,208,121,213,128,210,136,227,135,224,141,205,145,186,144,178,146,170,135,174,117"
															shape="poly" data-se="SE23">
														<area target="_blank"
															alt="성북구" title="" href="#" onclick="fnSvcList('SE17', '', ''); return false;"
															coords="188,73,194,87,197,103,190,113,199,119,210,117,214,125,216,132,225,129,242,119,246,110,260,108,268,104,269,96,255,88,241,100,231,101,222,98,212,93,213,84,203,78"
															shape="poly" data-se="SE17">
														<area target="_blank"
															alt="강북구" title="" href="#" onclick="fnSvcList('SE03', '', ''); return false;"
															coords="211,20,202,23,204,36,189,51,197,59,197,68,202,74,217,84,217,90,231,95,244,92,251,87,235,72,218,59,219,39,219,26"
															shape="poly" data-se="SE03">
														<area target="_blank"
															alt="도봉구" title="" href="#" onclick="fnSvcList('SE10', '', ''); return false;"
															coords="244,71,226,56,222,50,225,40,227,30,215,15,218,7,227,1,234,5,252,10,249,33,254,55,256,65"
															shape="poly" data-se="SE10">
														<area target="_blank"
															alt="노원구" title="" href="#" onclick="fnSvcList('SE09', '', ''); return false;"
															coords="271,89,249,77,254,69,263,66,253,37,258,15,267,9,278,6,282,14,290,15,288,26,292,37,289,52,291,61,305,65,306,73,298,82,295,88,284,87"
															shape="poly" data-se="SE09">
														<area target="_blank"
															alt="마포구" title="" href="#" onclick="fnSvcList('SE13', '', ''); return false;"
															coords="103,122,99,132,86,141,105,154,125,173,138,175,150,176,160,184,166,175,172,167,173,161,159,164,145,161,140,149,121,143"
															shape="poly" data-se="SE13">
														<area target="_blank"
															alt="용산구" title="" href="#" onclick="fnSvcList('SE21', '', ''); return false;"
															coords="178,164,180,170,175,177,162,184,168,190,177,197,186,202,200,203,212,188,223,183,213,171,202,169,189,164"
															shape="poly" data-se="SE21">
														<area target="_blank"
															alt="중구" title="" href="#" onclick="fnSvcList('SE24', '', ''); return false;"
															coords="186,148,186,155,177,159,195,157,205,162,215,167,221,157,227,147"
															shape="poly" data-se="SE24">
														<area target="_blank"
															alt="성동구" title="" href="#" onclick="fnSvcList('SE16', '', ''); return false;"
															coords="231,146,236,152,228,158,224,170,218,172,224,178,236,175,246,179,256,185,263,175,270,158,260,156,250,147,242,142"
															shape="poly" data-se="SE16">
														<area target="_blank"
															alt="동대문구" title="" href="#" onclick="fnSvcList('SE11', '', ''); return false;"
															coords="267,106,259,113,249,116,243,122,238,130,233,136,229,141,241,135,249,140,261,150,269,154,277,144,266,119,271,110"
															shape="poly" data-se="SE11">
														<area target="_blank"
															alt="광진구" title="" href="#" onclick="fnSvcList('SE06', '', ''); return false;"
															coords="279,147,279,155,274,165,267,181,262,185,274,193,283,192,299,180,304,167,308,156,299,160,296,153,300,145"
															shape="poly" data-se="SE06">
														<area target="_blank"
															alt="중랑구" title="" href="#" onclick="fnSvcList('SE25', '', ''); return false;"
															coords="274,95,277,106,272,115,279,139,289,142,296,139,301,130,306,121,311,114,312,101,308,89,297,93,286,91"
															shape="poly" data-se="SE25">
														<area target="_blank"
															alt="강서구" title="" href="#" onclick="fnSvcList('SE04', '', ''); return false;"
															coords="31,110,29,124,24,134,14,140,15,146,9,148,12,153,2,160,6,170,21,171,23,181,32,174,42,177,49,176,52,168,58,164,57,173,64,178,65,188,69,192,84,188,84,167,95,166,100,162,78,148,57,135,47,132"
															shape="poly" data-se="SE04">
														<area target="_blank"
															alt="양천구" title="" href="#" onclick="fnSvcList('SE19', '', ''); return false;"
															coords="100,171,88,171,88,183,83,191,66,195,59,186,61,178,57,173,51,182,54,191,51,198,52,207,60,214,69,210,78,210,88,211,97,206,99,194,108,181"
															shape="poly" data-se="SE19">
														<area target="_blank"
															alt="구로구" title="" href="#" onclick="fnSvcList('SE07', '', ''); return false;"
															coords="102,206,89,217,75,213,65,217,60,223,55,215,48,214,50,222,40,226,47,233,46,242,41,252,53,247,60,249,68,250,79,241,92,226,97,234,107,239,109,244,117,242,111,227,111,213"
															shape="poly" data-se="SE07">
														<area target="_blank"
															alt="영등포구" title="" href="#" onclick="fnSvcList('SE20', '', ''); return false;"
															coords="123,233,113,222,116,209,104,202,104,195,113,185,102,166,123,183,143,186,153,194,157,201,142,203,141,214,135,223,126,222"
															shape="poly" data-se="SE20">
														<area target="_blank"
															alt="금천구" title="" href="#" onclick="fnSvcList('SE08', '', ''); return false;"
															coords="125,245,113,248,101,238,97,244,105,256,109,271,114,276,118,285,121,294,125,297,135,289,142,277,130,271,128,261,123,253"
															shape="poly" data-se="SE08">
														<area target="_blank"
															alt="관악구" title="" href="#" onclick="fnSvcList('SE05', '', ''); return false;"
															coords="124,240,140,235,145,228,160,234,172,230,172,242,180,252,190,252,194,263,197,269,184,279,178,283,171,287,155,292,149,279,142,269,133,265,130,254,133,245"
															shape="poly" data-se="SE05">
														<area target="_blank"
															alt="동작구" title="" href="#" onclick="fnSvcList('SE12', '', ''); return false;"
															coords="160,203,146,207,145,213,139,224,130,228,125,236,138,230,148,223,156,227,164,227,172,227,177,230,175,240,184,247,190,247,191,231,192,223,186,215,177,214"
															shape="poly" data-se="SE12">
														<area target="_blank"
															alt="서초구" title="" href="#" onclick="fnSvcList('SE15', '', ''); return false;"
															coords="223,198,207,211,192,217,197,224,194,237,193,251,200,256,199,265,209,255,216,266,221,273,229,267,234,259,240,264,241,276,242,287,245,293,254,301,266,299,272,293,269,287,273,282,281,289,285,279,291,270,285,261,280,251,272,254,258,259,248,250,245,241,234,235,226,221"
															shape="poly" data-se="SE15">
														<area target="_blank"
															alt="강남구" title="" href="#" onclick="fnSvcList('SE01', '', ''); return false;"
															coords="268,203,256,194,234,187,225,195,229,211,236,221,236,227,249,239,252,250,260,254,278,249,285,251,294,262,295,270,304,263,308,271,318,257,307,245,302,233,288,225,275,224,267,215"
															shape="poly" data-se="SE01">
														<area target="_blank"
															alt="송파구" title="" href="#" onclick="fnSvcList('SE18', '', ''); return false;"
															coords="312,176,295,195,284,202,271,202,275,216,280,219,291,219,302,230,309,235,311,243,322,257,326,248,331,253,339,243,347,237,351,227,346,219,335,221,330,213,336,202,321,198,313,192,319,181"
															shape="poly" data-se="SE18">
														<area target="_blank"
															alt="강동구" title="" href="#" onclick="fnSvcList('SE02', '', ''); return false;"
															coords="363,135,347,146,326,151,317,160,316,172,321,178,319,188,322,193,333,197,339,199,346,184,353,170,360,173,367,168,366,160,365,146"
															shape="poly" data-se="SE02">
													</map>
												</div>
												<!-- //img_map_box -->
												<ul class="svc_each" tabindex="0" id="svc_list_d">
													<li>지역을 선택해 주세요.</li>
												</ul>
											</div>
											<!-- //step_con -->
										</div>
										<!-- //step_con_box -->
									</li>
								<li>
									<div class="step_con_box plan">
										<a href="javascript:void(0);" class="tit_box open-plan step-3"> <span
											class="step_num">3단계 <span class="txt">일정 선택</span></span>
											<div class="step_tit">
											<span class="fc_purple">일정</span>
											<ul class="select_txt" id="select_txt3"><li>일정을 선택해주세요.</li></ul>
											</div>
										</a>
										<div class="step_con">
											<div class="cal_wrap">
												<div class="cal_box cl_cal_box" id="calendar">
												</div>
												<!-- //cal_box -->
											</div>
											<!-- //cal_wrap -->
										</div>
										<!-- //step_con -->
									</div>
									<!-- //step_con_box -->
								</li>
							</ul>
							<!-- //main_step -->
							<div class="main_btn_box">
								<!-- <button type="button" class="btn_refresh"><span class="ico">초기화</span></button> -->
								<button type="button" class="btn_booking" title="선택됨" onclick="fnRevervInsertForm();">
									<span class="ico">예약하기</span>
								</button>
							</div>
							<!-- //main_btn_box -->
						</div>
						<!-- //tab_con -->

						<div class="tab_con">
							<ul class="main_step_list">
								<li>
									<div class="step_con_box place active">
										<a href="javascript:void(0);" class="tit_box open-area-a step-1">
											<span class="step_num">1단계
												<span class="txt">
													지역 선택
												</span>
											</span>
											<div class="step_tit">
												<span class="fc_blue">지역</span>
												<ul class="select_txt" id="select_txt_a">
													<li>※ 서울 이외 지역은 통합 검색 또는 메뉴를 이용하여 주시기 바랍니다.</li>
													<!-- 선택 후 보여질 텍스트 -->
												</ul>
											</div>
										</a>
										<div class="step_con map-wrap">
											<div class="img_map_box ver2">
												<ul class="map_list map_list_area">
													<li class="map_txt1" id="SE22" onclick="fnClList('SE22'); return false;">은평구</li>
													<li class="map_txt2" id="SE14" onclick="fnClList('SE14'); return false;">서대문구</li>
													<li class="map_txt3" id="SE23" onclick="fnClList('SE23'); return false;">종로구</li>
													<li class="map_txt4" id="SE17" onclick="fnClList('SE17'); return false;">성북구</li>
													<li class="map_txt5" id="SE03" onclick="fnClList('SE03'); return false;">강북구</li>
													<li class="map_txt6" id="SE10" onclick="fnClList('SE10'); return false;">도봉구</li>
													<li class="map_txt7" id="SE09" onclick="fnClList('SE09'); return false;">노원구</li>
													<li class="map_txt8" id="SE13" onclick="fnClList('SE13'); return false;">마포구</li>
													<li class="map_txt9" id="SE21" onclick="fnClList('SE21'); return false;">용산구</li>
													<li class="map_txt10" id="SE24" onclick="fnClList('SE24'); return false;">중구</li>
													<li class="map_txt11" id="SE16" onclick="fnClList('SE16'); return false;">성동구</li>
													<li class="map_txt12" id="SE11" onclick="fnClList('SE11'); return false;">동대문구</li>
													<li class="map_txt13" id="SE06" onclick="fnClList('SE06'); return false;">광진구</li>
													<li class="map_txt14" id="SE25" onclick="fnClList('SE25'); return false;">중랑구</li>
													<li class="map_txt15" id="SE04" onclick="fnClList('SE04'); return false;">강서구</li>
													<li class="map_txt16" id="SE19" onclick="fnClList('SE19'); return false;">양천구</li>
													<li class="map_txt17" id="SE07" onclick="fnClList('SE07'); return false;">구로구</li>
													<li class="map_txt18" id="SE20" onclick="fnClList('SE20'); return false;">영등포구</li>
													<li class="map_txt19" id="SE08" onclick="fnClList('SE08'); return false;">금천구</li>
													<li class="map_txt20" id="SE05" onclick="fnClList('SE05'); return false;">관악구</li>
													<li class="map_txt21" id="SE12" onclick="fnClList('SE12'); return false;">동작구</li>
													<li class="map_txt22" id="SE15" onclick="fnClList('SE15'); return false;">서초구</li>
													<li class="map_txt23" id="SE01" onclick="fnClList('SE01'); return false;">강남구</li>
													<li class="map_txt24" id="SE18" onclick="fnClList('SE18'); return false;">송파구</li>
													<li class="map_txt25" id="SE02" onclick="fnClList('SE02'); return false;">강동구</li>
												</ul>
												<img alt="서울 전체 지도"
													src="../common/img/ko/map/map00.png"
													usemap="#image-map2">
												<map name="image-map2" class="img_map">
														<area target="_blank"
															alt="은평구" title="" href="#" onclick="fnClList('SE22'); return false;"
															coords="183,73,174,60,164,50,152,51,144,58,135,59,124,60,128,69,127,78,121,90,119,103,120,113,116,123,105,122,121,135,131,126,137,128,143,125,144,114,150,115,153,107,158,104,163,96,163,82,170,81"
															shape="poly" data-se="SE22">
														<area target="_blank"
															alt="서대문구" title="" href="#" onclick="fnClList('SE14'); return false;"
															coords="163,106,158,115,149,117,147,125,141,131,134,131,128,140,142,146,146,154,154,157,163,157,176,156,168,142,168,124,170,116"
															shape="poly" data-se="SE14">
														<area target="_blank"
															alt="종로구" title="" href="#" onclick="fnClList('SE23'); return false;"
															coords="166,103,171,99,166,90,171,84,182,78,187,86,193,100,193,106,188,110,188,116,193,121,199,125,208,121,213,128,210,136,227,135,224,141,205,145,186,144,178,146,170,135,174,117"
															shape="poly" data-se="SE23">
														<area target="_blank"
															alt="성북구" title="" href="#" onclick="fnClList('SE17'); return false;"
															coords="188,73,194,87,197,103,190,113,199,119,210,117,214,125,216,132,225,129,242,119,246,110,260,108,268,104,269,96,255,88,241,100,231,101,222,98,212,93,213,84,203,78"
															shape="poly" data-se="SE17">
														<area target="_blank"
															alt="강북구" title="" href="#" onclick="fnClList('SE03'); return false;"
															coords="211,20,202,23,204,36,189,51,197,59,197,68,202,74,217,84,217,90,231,95,244,92,251,87,235,72,218,59,219,39,219,26"
															shape="poly" data-se="SE03">
														<area target="_blank"
															alt="도봉구" title="" href="#" onclick="fnClList('SE10'); return false;"
															coords="244,71,226,56,222,50,225,40,227,30,215,15,218,7,227,1,234,5,252,10,249,33,254,55,256,65"
															shape="poly" data-se="SE10">
														<area target="_blank"
															alt="노원구" title="" href="#" onclick="fnClList('SE09'); return false;"
															coords="271,89,249,77,254,69,263,66,253,37,258,15,267,9,278,6,282,14,290,15,288,26,292,37,289,52,291,61,305,65,306,73,298,82,295,88,284,87"
															shape="poly" data-se="SE09">
														<area target="_blank"
															alt="마포구" title="" href="#" onclick="fnClList('SE13'); return false;"
															coords="103,122,99,132,86,141,105,154,125,173,138,175,150,176,160,184,166,175,172,167,173,161,159,164,145,161,140,149,121,143"
															shape="poly" data-se="SE13">
														<area target="_blank"
															alt="용산구" title="" href="#" onclick="fnClList('SE21'); return false;"
															coords="178,164,180,170,175,177,162,184,168,190,177,197,186,202,200,203,212,188,223,183,213,171,202,169,189,164"
															shape="poly" data-se="SE21">
														<area target="_blank"
															alt="중구" title="" href="#" onclick="fnClList('SE24'); return false;"
															coords="186,148,186,155,177,159,195,157,205,162,215,167,221,157,227,147"
															shape="poly" data-se="SE24">
														<area target="_blank"
															alt="성동구" title="" href="#" onclick="fnClList('SE16'); return false;"
															coords="231,146,236,152,228,158,224,170,218,172,224,178,236,175,246,179,256,185,263,175,270,158,260,156,250,147,242,142"
															shape="poly" data-se="SE16">
														<area target="_blank"
															alt="동대문구" title="" href="#" onclick="fnClList('SE11'); return false;"
															coords="267,106,259,113,249,116,243,122,238,130,233,136,229,141,241,135,249,140,261,150,269,154,277,144,266,119,271,110"
															shape="poly" data-se="SE11">
														<area target="_blank"
															alt="광진구" title="" href="#" onclick="fnClList('SE06'); return false;"
															coords="279,147,279,155,274,165,267,181,262,185,274,193,283,192,299,180,304,167,308,156,299,160,296,153,300,145"
															shape="poly" data-se="SE06">
														<area target="_blank"
															alt="중랑구" title="" href="#" onclick="fnClList('SE25'); return false;"
															coords="274,95,277,106,272,115,279,139,289,142,296,139,301,130,306,121,311,114,312,101,308,89,297,93,286,91"
															shape="poly" data-se="SE25">
														<area target="_blank"
															alt="강서구" title="" href="#" onclick="fnClList('SE04'); return false;"
															coords="31,110,29,124,24,134,14,140,15,146,9,148,12,153,2,160,6,170,21,171,23,181,32,174,42,177,49,176,52,168,58,164,57,173,64,178,65,188,69,192,84,188,84,167,95,166,100,162,78,148,57,135,47,132"
															shape="poly" data-se="SE04">
														<area target="_blank"
															alt="양천구" title="" href="#" onclick="fnClList('SE19'); return false;"
															coords="100,171,88,171,88,183,83,191,66,195,59,186,61,178,57,173,51,182,54,191,51,198,52,207,60,214,69,210,78,210,88,211,97,206,99,194,108,181"
															shape="poly" data-se="SE19">
														<area target="_blank"
															alt="구로구" title="" href="#" onclick="fnClList('SE07'); return false;"
															coords="102,206,89,217,75,213,65,217,60,223,55,215,48,214,50,222,40,226,47,233,46,242,41,252,53,247,60,249,68,250,79,241,92,226,97,234,107,239,109,244,117,242,111,227,111,213"
															shape="poly" data-se="SE07">
														<area target="_blank"
															alt="영등포구" title="" href="#" onclick="fnClList('SE20'); return false;"
															coords="123,233,113,222,116,209,104,202,104,195,113,185,102,166,123,183,143,186,153,194,157,201,142,203,141,214,135,223,126,222"
															shape="poly" data-se="SE20">
														<area target="_blank"
															alt="금천구" title="" href="#" onclick="fnClList('SE08'); return false;"
															coords="125,245,113,248,101,238,97,244,105,256,109,271,114,276,118,285,121,294,125,297,135,289,142,277,130,271,128,261,123,253"
															shape="poly" data-se="SE08">
														<area target="_blank"
															alt="관악구" title="" href="#" onclick="fnClList('SE05'); return false;"
															coords="124,240,140,235,145,228,160,234,172,230,172,242,180,252,190,252,194,263,197,269,184,279,178,283,171,287,155,292,149,279,142,269,133,265,130,254,133,245"
															shape="poly" data-se="SE05">
														<area target="_blank"
															alt="동작구" title="" href="#" onclick="fnClList('SE12'); return false;"
															coords="160,203,146,207,145,213,139,224,130,228,125,236,138,230,148,223,156,227,164,227,172,227,177,230,175,240,184,247,190,247,191,231,192,223,186,215,177,214"
															shape="poly" data-se="SE12">
														<area target="_blank"
															alt="서초구" title="" href="#" onclick="fnClList('SE15'); return false;"
															coords="223,198,207,211,192,217,197,224,194,237,193,251,200,256,199,265,209,255,216,266,221,273,229,267,234,259,240,264,241,276,242,287,245,293,254,301,266,299,272,293,269,287,273,282,281,289,285,279,291,270,285,261,280,251,272,254,258,259,248,250,245,241,234,235,226,221"
															shape="poly" data-se="SE15">
														<area target="_blank"
															alt="강남구" title="" href="#" onclick="fnClList('SE01'); return false;"
															coords="268,203,256,194,234,187,225,195,229,211,236,221,236,227,249,239,252,250,260,254,278,249,285,251,294,262,295,270,304,263,308,271,318,257,307,245,302,233,288,225,275,224,267,215"
															shape="poly" data-se="SE01">
														<area target="_blank"
															alt="송파구" title="" href="#" onclick="fnClList('SE18'); return false;"
															coords="312,176,295,195,284,202,271,202,275,216,280,219,291,219,302,230,309,235,311,243,322,257,326,248,331,253,339,243,347,237,351,227,346,219,335,221,330,213,336,202,321,198,313,192,319,181"
															shape="poly" data-se="SE18">
														<area target="_blank"
															alt="강동구" title="" href="#" onclick="fnClList('SE02'); return false;"
															coords="363,135,347,146,326,151,317,160,316,172,321,178,319,188,322,193,333,197,339,199,346,184,353,170,360,173,367,168,366,160,365,146"
															shape="poly" data-se="SE02">
												</map>
											</div>
											<!-- //img_map_box -->

										</div>
										<!-- //step_con -->
									</div>
									<!-- //step_con_box -->
								</li>
								<li>
									<div class="step_con_box service">
										<a href="javascript:void(0);" class="tit_box open-svc-a step-2">
											<span class="step_num">2단계
											<span class="txt">
												서비스 선택
											</span>
											</span>
											<div class="step_tit">
												<span class="fc_green">서비스
												</span>
												<ul class="select_txt" id="select_txt_s">
													
												</ul>
											</div>
										</a>
										<div class="step_con area_svc_list">
											<ul class="service_list" id="area_svc_list">
												<li class="active"><a href="#" onclick="fnPlaceList('T100'); return false;" class="clcode_1"
													title="선택됨">체육시설<span
														class="num"><b class="svc_cnt" >0</b> 개</span></a></li>
												<li><a href="#" onclick="fnPlaceList('T500'); return false;">공간시설<span class="num"><b class="svc_cnt" >0</b>
															개</span></a></li>
												<li><a href="#" onclick="fnPlaceList('T200'); return false;">문화체험 <span class="num"><b class="svc_cnt" >0</b>
															개</span></a></li>
												<li><a href="#" onclick="fnPlaceList('T000'); return false;">교육강좌 <span class="num"><b class="svc_cnt" >0</b>
															개</span></a></li>
												<li><a href="#" onclick="fnPlaceList('T400'); return false;">진료복지 <span class="num"><b class="svc_cnt" >0</b>
															개</span></a></li>
											</ul>
											<!-- //service_list -->
											<div class="tab_con_box">
												<div class="tab_con active">
													<div class="svc_box ver2 local">
														<ul class="svc_list" tabindex="0" id="place_code_1">
														</ul>
														<ul class="svc_each svc_list_a" tabindex="0">
														</ul>
														<!-- //svc_each -->
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con place_2">
													<div class="svc_box ver2 local">
														<ul class="svc_list" tabindex="0" id="place_code_2">
														</ul>
														<ul class="svc_each svc_list_a" tabindex="0">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con place_3">
													<div class="svc_box ver2 local">
														<ul class="svc_list" tabindex="0" id="place_code_3">
														</ul>
														<ul class="svc_each svc_list_a" tabindex="0">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con place_4">
													<div class="svc_box ver2 local">
														<ul class="svc_list" tabindex="0" id="place_code_4">
														</ul>
														<ul class="svc_each svc_list_a" tabindex="0">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
												<div class="tab_con place_5">
													<div class="svc_box ver2 local">
														<ul class="svc_list" tabindex="0" id="place_code_5">
														</ul>
														<ul class="svc_each svc_list_a" tabindex="0">
														</ul>
													</div>
													<!-- //svc_box -->
												</div>
												<!-- //tab_con -->
											</div>
											<!-- //tab_con_box -->
										</div>
										<!-- //step_con -->
									</div>
									<!-- //step_con_box -->
								</li>

								<li>
									<div class="step_con_box plan">
										<a href="javascript:void(0);" class="tit_box open-plan-a step-3">
											<span class="step_num">3단계
												<span class="txt">일정 선택</span>
											</span>
											<div class="step_tit">
												<span class="fc_purple">일정</span>
												<ul class="select_txt" id="select_txt4"><li>일정을 선택해주세요.</li></ul>
											</div>
										</a>
										<div class="step_con">
											<div class="cal_wrap">
												<div class="cal_box area_cal_box" id="calendar_area">
												</div>
												<!-- //cal_box -->
												<div class="cal_con_box">
												
													
													<div class="con_box" tabindex="0">
														<ul class="dot_list" id ="useUnit_area">
															<li>날짜를 선택해주세요.</li>
														</ul>
														<input type="hidden" id="start_date_area" value=""/>
														
													</div>
												
												
												</div>
												<!-- //cal_con_box -->
											</div>
											<!-- //cal_wrap -->
										</div>
										<!-- //step_con -->
									</div>
									<!-- //step_con_box -->
								</li>
							</ul>
							<!-- //main_step -->
							<div class="main_btn_box">
								<!-- <button type="button" class="btn_refresh"><span class="ico">초기화</span></button> -->
								<button type="button" class="btn_booking" onclick="fnRevervInsertForm();">
									<span class="ico">예약하기</span>
								</button>
							</div>
							<!-- //main_btn_box -->
						</div>
						<!-- //tab_con -->
					</div>
					<!-- //tab_con_box -->
					<button type="button" class="btn-close">
						<span class="hide">빠른서비스 신청 닫기</span>
					</button>
				</div>
				<!-- //container -->
			</div>
			<!-- //main_step -->
		</div>
	</form>
	<div class="main_service">
		<div class="container">
			<h4 class="main_tit2">
				


				
			</h4>
			<p class="main_txt1">
				 
			</p>
			<ul class="svc_tab_list">
				<li class="active"><a id="recommand_btn" onclick="recommandChange();" data-value="A"   href="#" title="선택됨">추천</a></li>
				<li> <a id="interest_btn" onclick="interestChange();" data-value="B"  href="javascript:void(0);">관심</a></li>
				<li ><a id="recent_btn" onclick="recentChange();" data-value="C" href="javascript:void(0);">최신</a></li>
				
				<li ><a id="all_btn" onclick="allChange();" data-value="D" href="javascript:void(0);">전체</a></li>
				
				
			</ul>
			<!-- 관심정보설정 버튼이 2종이 삽입되는데 아래에도 모바일용 버튼이 존재하오니 확인요망 -->
			<a href="/web/mypage/selectPageListInterest.do" class="btn_set pc"><span
				class="ico">관심설정</span></a>
						<!-- 관심리스트 추가 , 청년 추가, 이미지 파일 추가됨-->
	 <div class="interest_list">
		<div class="slide">
			<span><button id ="useTaget01" type="button" class="btn_int" onclick="fnUseTaget('RA01');">유아</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA09');">어린이</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA02');">청소년</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA57');">청년</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA03');">성인</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA10');">여성</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA06');">주부</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA04');">장애인</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA07');">어르신</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA05');">국가유공자</button></span>
			<span><button type="button" class="btn_int" onclick="fnUseTaget('RA12');">가족</button></span>
		</div>
		<div class="int_attr">
			<button type="button" class="int_prev"><span class="hide">이전 슬라이드로</span></button>
			<button type="button" class="int_next"><span class="hide">다음 슬라이드로</span></button>
		</div>
	</div>



</div>
		<!-- //container -->
		<div class="tab_con_box">
			<div class="tab_con active">
				<div class="svc_bn_box">
					<div class="svc_attr">
						<button type="button" class="svc_prev">
							<span class="hide">이전 슬라이드로</span>
						</button>
					</div>
					<div class="svc_bn">
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250506130416463909','Y'); return false;" title="석호정 활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250506/17465043785515XVP1A9F1AIGCJKIQEUMAJ6Q5_IM02.jpg"
												alt="석호정 활쏘기 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~ 2025.05.17</li>
										<li><b class="date2">이용기간</b> 2025.05.13 ~ 2025.05.18</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S220426092440232101','Y'); return false;" title="서울역사박물관(본관) 단체관람">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20220902/1662105661028L1YDKT6O40X8PT274AIDEATHE_IM02.jpg"
												alt="서울역사박물관(본관) 단체관람 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>전시/관람</li>
									</ul>
									<h4 class="tit1">서울역사박물관(본관) 단체관람</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2022.04.26 ~ 2025.06.30</li>
										<li><b class="date2">이용기간</b> 2022.04.26 ~ 2025.06.30</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250506132031864355','Y'); return false;" title="석호정 성인체험활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250506/1746505357372VWAIG6GQ2AFABYVZALPA6BIC3_IM02.png"
												alt="석호정 성인체험활쏘기 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 성인체험활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~ 2025.05.27</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~ 2025.05.28</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250506131315006139','Y'); return false;" title="석호정 야간활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250506/1746504916687MKELXICKS3BWCRFEL5WWHSPK7_IM02.jpg"
												alt="석호정 야간활쏘기 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 야간활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~ 2025.05.13</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~ 2025.05.14</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250505231036423363','Y'); return false;" title="5월 보라매테니스장 6번 레슨코트 주간">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250505/1746454235713WEN9RURDPOAV7UTCJGZ244VZY_IM02.jpg"
												alt="5월 보라매테니스장 6번 레슨코트 주간 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">5월 보라매테니스장 6번 레슨코트 주간</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~ 2025.12.31</li>
										<li><b class="date2">이용기간</b> 2025.05.09 ~ 2025.05.09</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507114001991606','Y'); return false;" title="금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746585601945M54G9ISUCHHGMMRMMDNJLWRTE_IM02.jpg"
												alt="금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~ 2025.05.09</li>
										<li><b class="date2">이용기간</b> 2025.05.07 ~ 2025.11.15</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250505231028028995','Y'); return false;" title="5월 보라매테니스장 7번 레슨코트 주간">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250505/1746454227285DXXNDHLMI9OZJPEWVOUDJ305P_IM02.jpg"
												alt="5월 보라매테니스장 7번 레슨코트 주간 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">5월 보라매테니스장 7번 레슨코트 주간</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~ 2025.05.09</li>
										<li><b class="date2">이용기간</b> 2025.05.09 ~ 2025.05.09</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507214613708442','Y'); return false;" title="(양천구/일요일)초록빛을 밝혀라~">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/17466221691304ZSOMU5BTBQ7FZYM9MG5KJXB9_IM02.jpg"
												alt="(양천구/일요일)초록빛을 밝혀라~ 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">(양천구/일요일)초록빛을 밝혀라~</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~ 2025.05.10</li>
										<li><b class="date2">이용기간</b> 2025.05.11 ~ 2025.05.11</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507141923278681','Y'); return false;" title="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
											
										<span
											class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746595189727U07CWQS7DEB4SKF5XT09X2Z1L_IM02.JPG"
												alt="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~ 2025.12.29</li>
										<li><b class="date2">이용기간</b> 2025.07.01 ~ 2025.12.31</li>
									</ul>
								</div>
							</a>
						
					</div>
					<!-- //svc_bn -->
					<div class="svc_attr">
						<button type="button" class="svc_next">
							<span class="hide">다음 슬라이드로</span>
						</button>
						<div class="svc_paging"></div>
						<button type="button" class="svc_stop">
							<span class="hide">자동재생 일시정지</span>
						</button>
						<a href="/web/mypage/selectPageListInterest.do" class="btn_set mobile">
						<span class="ico">관심설정</span></a>
					</div>
					<!-- //svc_attr -->
				</div>
				<!-- //svc_bn_box -->
			</div>
			<!-- //tab_con -->
			<div class="tab_con">
				<div class="svc_bn_box" >
					<div class="svc_bn" >
 						
							<a href="#" class="item" onclick="fnDetailPage('S250506130416463909','N'); return false;" title="석호정 활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250506/17465043785515XVP1A9F1AIGCJKIQEUMAJ6Q5_IM02.jpg"	alt="석호정 활쏘기 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~
											2025.05.17</li>
										<li><b class="date2">이용기간</b> 2025.05.13 ~
											2025.05.18</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S220426092440232101','N'); return false;" title="서울역사박물관(본관) 단체관람">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20220902/1662105661028L1YDKT6O40X8PT274AIDEATHE_IM02.jpg"	alt="서울역사박물관(본관) 단체관람 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>전시/관람</li>
									</ul>
									<h4 class="tit1">서울역사박물관(본관) 단체관람</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2022.04.26 ~
											2025.06.30</li>
										<li><b class="date2">이용기간</b> 2022.04.26 ~
											2025.06.30</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250506132031864355','N'); return false;" title="석호정 성인체험활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250506/1746505357372VWAIG6GQ2AFABYVZALPA6BIC3_IM02.png"	alt="석호정 성인체험활쏘기 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 성인체험활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~
											2025.05.27</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~
											2025.05.28</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250506131315006139','N'); return false;" title="석호정 야간활쏘기">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250506/1746504916687MKELXICKS3BWCRFEL5WWHSPK7_IM02.jpg"	alt="석호정 야간활쏘기 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>공원탐방</li>
									</ul>
									<h4 class="tit1">석호정 야간활쏘기</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~
											2025.05.13</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~
											2025.05.14</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250505231036423363','N'); return false;" title="5월 보라매테니스장 6번 레슨코트 주간">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250505/1746454235713WEN9RURDPOAV7UTCJGZ244VZY_IM02.jpg"	alt="5월 보라매테니스장 6번 레슨코트 주간 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">5월 보라매테니스장 6번 레슨코트 주간</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~
											2025.12.31</li>
										<li><b class="date2">이용기간</b> 2025.05.09 ~
											2025.05.09</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250507114001991606','N'); return false;" title="금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250507/1746585601945M54G9ISUCHHGMMRMMDNJLWRTE_IM02.jpg"	alt="금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">금천구 베짱이유아숲체험원 &lt;동네방네 베짱이 탐험&gt; 주말 프로그램</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.09</li>
										<li><b class="date2">이용기간</b> 2025.05.07 ~
											2025.11.15</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250505231028028995','N'); return false;" title="5월 보라매테니스장 7번 레슨코트 주간">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250505/1746454227285DXXNDHLMI9OZJPEWVOUDJ305P_IM02.jpg"	alt="5월 보라매테니스장 7번 레슨코트 주간 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">5월 보라매테니스장 7번 레슨코트 주간</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.06 ~
											2025.05.09</li>
										<li><b class="date2">이용기간</b> 2025.05.09 ~
											2025.05.09</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250507214613708442','N'); return false;" title="(양천구/일요일)초록빛을 밝혀라~">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250507/17466221691304ZSOMU5BTBQ7FZYM9MG5KJXB9_IM02.jpg"	alt="(양천구/일요일)초록빛을 밝혀라~ 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">(양천구/일요일)초록빛을 밝혀라~</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.10</li>
										<li><b class="date2">이용기간</b> 2025.05.11 ~
											2025.05.11</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item" onclick="fnDetailPage('S250507141923278681','N'); return false;" title="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
										
											
												
												
													<span class="bd_label status1">접수중</span>
												
											

										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img src="/cmsdata/web_upload/svc/20250507/1746595189727U07CWQS7DEB4SKF5XT09X2Z1L_IM02.JPG"	alt="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.12.29</li>
										<li><b class="date2">이용기간</b> 2025.07.01 ~
											2025.12.31</li>
									</ul>
								</div>
							</a>
						
					</div>

					<!-- //svc_bn -->
					<div class="svc_attr">
						<button type="button" class="svc_prev">
							<span class="hide">이전 슬라이드로</span>
						</button>
						<button type="button" class="svc_next">
							<span class="hide">다음 슬라이드로</span>
						</button>
						<div class="svc_paging" ></div>
						<button type="button" class="svc_stop">
							<span class="hide">자동재생 일시정지</span>
						</button>
						<a href="/web/mypage/selectPageListInterest.do" class="btn_set mobile"><span class="ico">관심설정</span></a>
						
					</div>
					<!-- //svc_attr -->
				</div>
				<!-- //svc_bn_box -->
			</div>
			<!-- //tab_con -->
			 <div class="tab_con">
				<div class="svc_bn_box">
					<div class="svc_attr">
						<button type="button" class="svc_prev">
							<span class="hide">이전 슬라이드로</span>
						</button>
					</div>
					<div class="svc_bn">
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507214613708442','N'); return false;" title="(양천구/일요일)초록빛을 밝혀라~">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/17466221691304ZSOMU5BTBQ7FZYM9MG5KJXB9_IM02.jpg"
												alt="(양천구/일요일)초록빛을 밝혀라~ 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">(양천구/일요일)초록빛을 밝혀라~</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.10</li>
										<li><b class="date2">이용기간</b> 2025.05.11 ~
											2025.05.11</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507173814747392','N'); return false;" title="주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot;">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746607094532XQETGB39VKCT5VBPUPQXR41RA_IM02.png"
												alt="주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot; 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot;</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.30</li>
										<li><b class="date2">이용기간</b> 2025.05.08 ~
											2025.05.31</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507164639505553','N'); return false;" title="[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746603999456JBL58I5SVR1MOKH2UEFZNNTQT_IM02.JPG"
												alt="[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
												추첨
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.12</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~
											2025.05.28</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507153224602505','N'); return false;" title="서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746599870393B7KZD5QCCYJ054X20GLIALMK6_IM02.png"
												alt="서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
												추첨
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>청년정보</li>
									</ul>
									<h4 class="tit1">서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.14</li>
										<li><b class="date2">이용기간</b> 2025.05.20 ~
											2025.05.22</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507144850993634','N'); return false;" title="[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot;">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/17465982824772P543XD27930BG7JPOBZH5FCB_IM02.jpg"
												alt="[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot; 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>교육체험</li>
									</ul>
									<h4 class="tit1">[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot;</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.23</li>
										<li><b class="date2">이용기간</b> 2025.05.08 ~
											2025.05.24</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507141923278681','N'); return false;" title="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746595189727U07CWQS7DEB4SKF5XT09X2Z1L_IM02.JPG"
												alt="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.12.29</li>
										<li><b class="date2">이용기간</b> 2025.07.01 ~
											2025.12.31</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507133059100070','N'); return false;" title="서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746592843355TJ0NS20IQ03LDCZ8X6VW5OEI4_IM02.jpg"
												alt="서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
											
												심사
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>청년정보</li>
									</ul>
									<h4 class="tit1">서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.14</li>
										<li><b class="date2">이용기간</b> 2025.05.16 ~
											2025.05.17</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507130030612600','N'); return false;" title="(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여)">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span> -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746590563711WQM5ADAQA6J3D6R27WE8URRCO_IM02.jpg"
												alt="(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여) 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>도시농업</li>
									</ul>
									<h4 class="tit1">(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여)</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.09 ~
											2025.05.23</li>
										<li><b class="date2">이용기간</b> 2025.05.24 ~
											2025.05.24</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507125359540745','N'); return false;" title="삼청테니스장 코트이용(야간)">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1">  -->
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span> -->
										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746590076279I8A2KAKI7EIT4TPAG27WRHUMC_IM02.jpg"
												alt="삼청테니스장 코트이용(야간) 사진"
												onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">삼청테니스장 코트이용(야간)</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.20 ~
											2025.06.30</li>
										<li><b class="date2">이용기간</b> 2025.06.01 ~
											2025.06.30</li>
									</ul>
								</div>
							</a>
						
					</div>
					<!-- //svc_bn -->
					<div class="svc_attr">
						<button type="button" class="svc_next">
							<span class="hide">다음 슬라이드로</span>
						</button>
						<div class="svc_paging"></div>
						<button type="button" class="svc_stop">
							<span class="hide">자동재생 일시정지</span>
						</button>
						<a href="/web/mypage/selectPageListInterest.do" class="btn_set mobile"><span class="ico">관심설정</span></a>
					</div>
					<!-- //svc_attr -->
				</div>
				<!-- //svc_bn_box -->
			</div>
			<!-- //tab_con -->
			<div class="tab_con">
				<div class="svc_bn_box">
					<div class="svc_attr">
						<button type="button" class="svc_prev">
							<span class="hide">이전 슬라이드로</span>
						</button>
					</div>
					<div class="svc_bn">
					
							<a href="#" class="item"
								onclick="fnDetailPage('S250507214613708442','N'); return false;" title="(양천구/일요일)초록빛을 밝혀라~">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/17466221691304ZSOMU5BTBQ7FZYM9MG5KJXB9_IM02.jpg"
												alt="(양천구/일요일)초록빛을 밝혀라~ 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">(양천구/일요일)초록빛을 밝혀라~</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.10</li>
										<li><b class="date2">이용기간</b> 2025.05.11 ~
											2025.05.11</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507173814747392','N'); return false;" title="주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot;">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746607094532XQETGB39VKCT5VBPUPQXR41RA_IM02.png"
												alt="주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot; 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>산림여가</li>
									</ul>
									<h4 class="tit1">주말 가족 프로그램 &quot;불암산 리틀숲 탐험대&quot;</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.30</li>
										<li><b class="date2">이용기간</b> 2025.05.08 ~
											2025.05.31</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507164639505553','N'); return false;" title="[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746603999456JBL58I5SVR1MOKH2UEFZNNTQT_IM02.JPG"
												alt="[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
												추첨
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[서울백제어린이박물관]유아ㆍ어린이와 양육자 대상 &lt;뮤지엄 휴휴프로그램9&gt; &quot;우리 옷 우리 문양&quot; 추가모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.12</li>
										<li><b class="date2">이용기간</b> 2025.05.14 ~
											2025.05.28</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507153224602505','N'); return false;" title="서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746599870393B7KZD5QCCYJ054X20GLIALMK6_IM02.png"
												alt="서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
												추첨
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>청년정보</li>
									</ul>
									<h4 class="tit1">서울청년센터노원 &lt;5월 두시티톡 : 노원 생과방 - 두 번째 이야기&gt; 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.14</li>
										<li><b class="date2">이용기간</b> 2025.05.20 ~
											2025.05.22</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507144850993634','N'); return false;" title="[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot;">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/17465982824772P543XD27930BG7JPOBZH5FCB_IM02.jpg"
												alt="[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot; 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>문화체험</li>
										<li>교육체험</li>
									</ul>
									<h4 class="tit1">[강동구 앨리스유아숲] 5월24일 (토) 오전10시 가족과 함께하는 정원처방 &quot;봄과함께!숲과함께!&quot;</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.08 ~
											2025.05.23</li>
										<li><b class="date2">이용기간</b> 2025.05.08 ~
											2025.05.24</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507141923278681','N'); return false;" title="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746595189727U07CWQS7DEB4SKF5XT09X2Z1L_IM02.JPG"
												alt="[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>역사</li>
									</ul>
									<h4 class="tit1">[한성백제박물관] 하반기 청소년 대상 자율관람 프로그램 &lt;명탐정, 백제박사&gt; 참가자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.12.29</li>
										<li><b class="date2">이용기간</b> 2025.07.01 ~
											2025.12.31</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507133059100070','N'); return false;" title="서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
												
													<span class="bd_label status1">접수중</span>
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746592843355TJ0NS20IQ03LDCZ8X6VW5OEI4_IM02.jpg"
												alt="서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
											
											
												심사
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>청년정보</li>
									</ul>
									<h4 class="tit1">서울청년센터 광진 &lt;티톡 : 돈(Don&#39;t) 흥청망청&gt; 참여자 모집</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.07 ~
											2025.05.14</li>
										<li><b class="date2">이용기간</b> 2025.05.16 ~
											2025.05.17</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507130030612600','N'); return false;" title="(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여)">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span>  -->
										<span class="bd_label type2">
											
												
												
													무료
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746590563711WQM5ADAQA6J3D6R27WE8URRCO_IM02.jpg"
												alt="(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여) 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>교육강좌</li>
										<li>도시농업</li>
									</ul>
									<h4 class="tit1">(5/24, 토, 10시 ~ 12시) 2025년 함께 그린 텃밭교실(병해충 관리, 관악구 텃밭이용자 우선 참여)</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.09 ~
											2025.05.23</li>
										<li><b class="date2">이용기간</b> 2025.05.24 ~
											2025.05.24</li>
									</ul>
								</div>
							</a>
						
							<a href="#" class="item"
								onclick="fnDetailPage('S250507125359540745','N'); return false;" title="삼청테니스장 코트이용(야간)">
								<div class="img_box">
									<div class="ib_top">
<!-- 										<span class="bd_label status1"> -->
											
											
												
													<span class="bd_label status2">안내중</span>
												
												
											
<!-- 										</span>  -->
										<span class="bd_label type1">
											
												
													유료
												
												
											
										</span>
									</div>
									
										
										
											<img
												src="/cmsdata/web_upload/svc/20250507/1746590076279I8A2KAKI7EIT4TPAG27WRHUMC_IM02.jpg"
												alt="삼청테니스장 코트이용(야간) 사진" onerror="this.src='/common/img/ko/no_img.png'">
										
									
									<span class="ib_num"> 
											
												선착순
											
											
											
										
									</span>
								</div>
								<div class="con_box">
									<ul class="ib_type">
										<li>체육시설</li>
										<li>테니스장</li>
									</ul>
									<h4 class="tit1">삼청테니스장 코트이용(야간)</h4>
									<ul class="ib_attr">
										<li><b class="date1">접수기간</b> 2025.05.20 ~
											2025.06.30</li>
										<li><b class="date2">이용기간</b> 2025.06.01 ~
											2025.06.30</li>
									</ul>
								</div>
							</a>
						
					</div>
					<!-- //svc_bn -->
					<div class="svc_attr">
						<button type="button" class="svc_next">
							<span class="hide">다음 슬라이드로</span>
						</button>
						<div class="svc_paging"></div>
						<button type="button" class="svc_stop">
							<span class="hide">자동재생 일시정지</span>
						</button>
						<a href="/web/mypage/selectPageListInterest.do" class="btn_set mobile"><span class="ico">
						관심설정</span></a>
					</div>
					<!-- //svc_attr -->
				</div>
				<!-- //svc_bn_box -->
			</div>
			<!-- //tab_con -->
		</div>
		<!-- //tab_con_box -->
	</div>
	<!-- //main_svc -->
	<div class="main_mw">
		<div class="container">
			<h4 class="main_tit4" style="font-size: 36px; margin-bottom: 45px;">
				공공서비스
				<!-- @!@ 20240522 명도 대비 4.5:1로 수정 -->
				
				<span class="fc_deep_green">안내</span>
			</h4>
			<!-- <p class="main_txt1">
						서울 공공서비스 예약에 대해 궁금한 점이 있으신가요?
					</p> -->
			<div class="mw_wrap">
				<div class="mw_each">
					<h5 class="mw_tit1">
						공지사항
					</h5>
					<ul class="board_list">
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27862">서울월드컵경기장 부속시설(보조경기장, 풋살구장) 운영 사항 변경 안내</a>
								 <span class="date">2025.04.30</span></li>
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27861">서울월드컵경기장 풋살구장 5월 예약 추가 접수 안내</a>
								 <span class="date">2025.04.29</span></li>
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27860">2025년 5월 한강공원 내 야구장(광나루,난지1,2) 주말 및 공휴일 추첨 결과 안내합니다.</a>
								 <span class="date">2025.04.28</span></li>
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27852">2025년 5월 뚝섬한강테니스장 조조 추첨 관련의 건</a>
								 <span class="date">2025.04.23</span></li>
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27851">[양화진 역사문화 탐방] 양화진 역사문화 뱃길탐방</a>
								 <span class="date">2025.04.21</span></li>
						
							<li><a href="/web/bbs/selectBbs.do?bbs_seq=27850">서울월드컵경기장 풋살구장 5월 예약 접수 안내(휴일야간 누락분 20:00~22:00)</a>
								 <span class="date">2025.04.21</span></li>
						
					</ul>
					<a href="/web/bbs/selectPageListBbs.do?bbs_code=A1002" class="a_more"><span class="hide">더보기</span></a>
				</div>
				<!-- //mw_each -->
				<div class="mw_each book">
					<a href="/web/reservation/selectPageListReserveStatus.do">
						<h5 class="mw_tit2">
							나의 예약내역
						</h5>
						<p class="mw_txt1">
							예약서비스를 신청하셨나요?
							<br />
							편리하게 예약내역을 확인해보세요.
						</p>
					</a>
				</div>
				<!-- //mw_each -->
				<div class="mw_each chat">
					<a href="http://pf.kakao.com/_xemMXj/chat" target="_blank">
						<h5 class="mw_tit2">
							챗봇
							&nbsp;&#39;
							서울톡
							&#39;
						</h5>
						<p class="mw_txt1">
							질문 및 메뉴 선택을 통해
							<br />
							관련 정보를 안내받으실 수 있습니다.
						</p>
					</a>
				</div>
				<!-- //mw_each -->
				<div class="mw_each alert">
					<h5 class="mw_tit1">
						알림영역
					</h5>
					<div class="pop_bn_wrap">
						<div class="pop_bn">
							
								<a href="https://www.nowon.kr/nwll/web/intro" class="item"> <img
									src="/cmsdata/web_upload/banner_w/20230130/1675061254932VF5A53318TQL7YLKFX3BR5DID.jpg"
									alt="평생학습도시 노원 노원평생교육포털 배너">
								</a>
							
								<a href="https://www.geumcheon.go.kr/reserve/webEdcLctreList.do?key=112&amp;rep=1" class="item"> <img
									src="/cmsdata/web_upload/banner_w/20230414/16814312563846OQKCCMFV6DBYSW8CFIUWGHKA.png"
									alt="금천구청 통합예약서비스 페이지로, 교육/강좌, 문화/공연, 시설대관을 한곳에서 예약할수 있는 통합 페이지 입니다. 배너">
								</a>
							
								<a href="https://life.gangnam.go.kr" class="item"> <img
									src="/cmsdata/web_upload/banner_w/20230127/1674802143198J9YW9LQC3JSDZ84FDA6G1DQ0V.png"
									alt="강남구 강좌 시설을 바로예약 배너">
								</a>
							
								<a href="https://didong.kr/" class="item"> <img
									src="/cmsdata/web_upload/banner_w/20240611/1718086731044DQFFFMI4OLKHOTZIHOSKNQW7H.jpg"
									alt="서울디지털동행플라자 실생활에 꼭 필요한 디지털 교육 체험 상담 프로그램 운영 디지털 교육과 체험을 원하는 장노년층 누구나 배너">
								</a>
							
								<a href="https://onhealth.seoul.go.kr/" class="item"> <img
									src="/cmsdata/web_upload/banner_w/20230112/1673487560867CBBR10QASKI4LN3TTQE973XV4.jpg"
									alt="마침내 최신형 스마트워치 제공(대여), 모바일 앱을 통한 건강 데이터 제공, 건강 목표 실천을 통한 건강 습관 형성, 현금처럼 이용하는 포스트 제공(최대 10만 포인트) 손목닥터 결심 신청하러 가기 선착순 모집 마감 시까지 배너">
								</a>
							
						</div>
						<!-- //pop_bn -->
						<div class="pop_attr">
							<div class="pop_paging"></div>
							<button type="button" class="pop_prev">
								<span class="hide">이전 슬라이드로</span>
							</button>
							<button type="button" class="pop_stop">
								<span class="hide">자동재생 일시정지</span>
							</button>
							<button type="button" class="pop_next">
								<span class="hide">다음 슬라이드로</span>
							</button>
						</div>
						<!-- //pop_attr -->
					</div>
					<!-- //pop_bn_wrap -->
				</div>
				<!-- //mw_each -->
				<div class="mw_each faq">
					<div class="faq_bn_wrap">
						<div class="faq_tit">
							자주묻는질문
						</div>
						<!-- //faq_tit -->
						<div class="faq_bn">
							<div class="item">
								
									
								<a href="#"
									onclick="fnGoFaq('A1001','27863'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										한남테니스장</span>
								</a>
								
									
								<a href="#"
									onclick="fnGoFaq('A1001','27721'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										한남테니스장</span>
								</a>
								
									
								<a href="#"
									onclick="fnGoFaq('A1001','27600'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										한남테니스장</span>
								</a>
								
									
							</div>
							<div class="item">
								
								<a href="#"
									onclick="fnGoFaq('A1001','7404'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										예약 변경은 어떻게 하나요?</span>
								</a>
								
									
								<a href="#"
									onclick="fnGoFaq('A1001','7144'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										제로페이 결제 이용 방법</span>
								</a>
								
									
								<a href="#"
									onclick="fnGoFaq('A1001','2942'); return false;">
									<span class="txt"><span class="icon_q">Q.</span>
										인기 서비스 예약 성공 가이드</span>
								</a>
								
							</div>
						</div>
						<!-- //faq_bn -->
						<div class="faq_attr">
							<button type="button" class="faq_prev">
								<span class="hide">이전 슬라이드로</span>
							</button>
							<div class="faq_paging"></div>
							<button type="button" class="faq_next">
								<span class="hide">다음 슬라이드로</span>
							</button>
							<a href="#" class="a_faq_all" onclick="fnGoFaq('A1001',''); return false;">전체보기</a>
						</div>
						<!-- //faq_attr -->
					</div>
				</div>
				<!-- //mw_each -->
				<div class="mw_each info">
					<a
						href="/web/cntnts/selectContents.do?cntnts_id=A1000004">
						<h5 class="mw_tit2">
							도움말
						</h5>
						<p class="mw_txt1">
							공공서비스 예약서비스 이용 시 필수 준수사항을
							<br />
							확인하세요.
						</p>
					</a>
				</div>
				<!-- //mw_each -->
			</div>
			<!-- //mw_wrap -->
			

		<div id="seoul_banner_area">
				<!-- Dighty : [서울특별시 공공서비스예약] 메인하단(신규) (1200*100) 태그 -->
			<script type='text/javascript'><!--//<![CDATA[
			   var m3_b = '';
			   var m3_u = (location.protocol=='https:'?'https://delivery.dighty.com/www/delivery/ajs.php':'http://delivery.dighty.com/www/delivery/ajs.php');
			   var m3_r = Math.floor(Math.random()*99999999999);
			   if(document.cookie.indexOf('ACEUACS=')>-1){
			   var m3_b = document.cookie.substr(document.cookie.indexOf('ACEUACS=')+8,19);}
			   if (!document.MAX_used) document.MAX_used = ',';
			   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
			   document.write ("?zoneid=866");
			   document.write ('&amp;cb=' + m3_r);
			   if (m3_b!='')document.write('&amp;bd=' + m3_b);
			   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
			   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
			   document.write ("&amp;loc=" + escape(window.location));
			   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
			   if (document.context) document.write ("&context=" + escape(document.context));
			   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
			   document.write ("'><\/scr"+"ipt>");
			//]]></script>
			<noscript><a href='https://delivery.dighty.com/www/delivery/ck.php?n=ca8155f4&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'>
			<img src='https://delivery.dighty.com/www/delivery/avw.php?zoneid=866&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=ca8155f4' alt='' /></a></noscript>
		</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //main_mw -->
</div>
<!-- //main_wrap -->
<!--</div>-->
<!-- //#content -->

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