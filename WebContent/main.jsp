<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	    <%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/reset.css" type="text/css">

<link rel="shortcut icon" href="images/icon-48x48.png" />
<link href="css/app.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/d_calendar.css" rel="stylesheet">

<script src="js/app.js"></script><!-- 이거 밑에 js코드 밑으로 내려가면 적용 안됨! -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- script 맨 밑으로가면 제이쿼리 적용안됨 -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/bootstrap.js"></script>


<title>caracample</title>

<style>


</style>
</head>
<body>

	<div class="wrapper">
		<nav id="sidebar" class="sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="main.do"> <span
					class="align-middle">CARACAMPLE 관리자</span>
				</a>

				<ul class="sidebar-nav">


					<li class="sidebar-item active"><a class="sidebar-link"
						href="main.do"> <i class="align-middle"
							data-feather="sliders"></i> <span class="align-middle">Main</span>
					</a></li>


					<li class="sidebar-item"><a class="sidebar-link"
						href="map.jsp"> <i class="align-middle" data-feather="map"></i>
							<span class="align-middle">Map</span>
					</a></li>

					<!-- 카라반 A~D까지 지도 나오게 하는 부분! -->
					<!-- <li class="sidebar-item"><a class="sidebar-link"
						href="caracample_map.jsp"> <i class="align-middle"
							data-feather="map"></i> <span class="align-middle">Maps</span>
					</a></li> -->



				</ul>

				<div class="sidebar-cta">
					<div class="sidebar-cta-content">
						<strong class="d-inline-block mb-2">CARACAMPLE</strong>
						<div class="mb-3 text-sm">카라캠플 관리자 페이지</div>
						<a href="#" target="_blank" class="btn btn-primary btn-block">어플
							다운받기</a>
					</div>
				</div>
			</div>
		</nav>


		<div class="main">
			<!-- 상단 header -->
			<nav class="navbar navbar-expand navbar-light navbar-bg"
				id="nav_height">
				<a class="sidebar-toggle d-flex"> <i
					class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse" id="nav_height2">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="alertsDropdown"
							data-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i> <span
										class="indicator">4</span>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
								aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">4개의 새로운 알림</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-danger" data-feather="alert-circle"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">A카라반 화재발생</div>
												<div class="text-muted small mt-1">고객님께 알림을 보내주세요!</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-warning" data-feather="bell"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">B카라반 숯불요청</div>
												<div class="text-muted small mt-1">숯불을 가져다주세요!</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-primary" data-feather="home"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">02.27일에 로그인 되었습니다.</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-success" data-feather="user-plus"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">새로운 예약이 왔습니다.</div>
												<div class="text-muted small mt-1">예약을 확인해주세요.</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">모든 메세지 보기</a>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="messagesDropdown"
							data-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
								aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">
									<div class="position-relative">4개의 새로운 알림</div>
								</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-5.jpg"
													class="avatar img-fluid rounded-circle"
													alt="Vanessa Tucker">
											</div>
											<div class="col-10 pl-2">
												<div class="text-dark">문의사항1</div>
												<div class="text-muted small mt-1">소화기는 어디에 있나요?</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-2.jpg"
													class="avatar img-fluid rounded-circle"
													alt="William Harris">
											</div>
											<div class="col-10 pl-2">
												<div class="text-dark">문의사항2</div>
												<div class="text-muted small mt-1">퇴실을 하려합니다.</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-4.jpg"
													class="avatar img-fluid rounded-circle"
													alt="Christina Mason">
											</div>
											<div class="col-10 pl-2">
												<div class="text-dark">문의사항3</div>
												<div class="text-muted small mt-1">자전거는 어디에 두나요?</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-3.jpg"
													class="avatar img-fluid rounded-circle"
													alt="Sharon Lessman">
											</div>
											<div class="col-10 pl-2">
												<div class="text-dark">문의사항4</div>
												<div class="text-muted small mt-1">근처에 식당있나요?</div>
												<div class="text-muted small mt-1"></div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all messages</a>
								</div>
							</div></li>

						</li>


						<!-- 로그인 네비시작 -->
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#" data-toggle="dropdown"> <span class="text-dark">관리자님
									환영합니다.</span>
						</a>

							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="login.jsp">Logout</a>

							</div></li>
						<!-- 로그인 끝 -->

					</ul>
				</div>
			</nav>
			<!-- 상단 header end -->

			<main class="content">
				<!-- 콘텐츠 부분만 html 변경하면됨! -->
				<div class="container-fluid p-0">

					<div class="row mb-2 mb-xl-3">
						<div class="col-auto d-none d-sm-block">
							<h3>
								<strong>CARACAMPLE</strong>_Main
							</h3>
						</div>

					</div>
					<div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">

							<div class="w-100">
								<div class="row">
									<div class="col-sm-6">
									
									
									
									
										<!-- 카라반 A -->
										<form action="MapController.do" method="post">
											<div class="card">


												<div class="card-body">
													<input type="hidden" name="car_name" value="CaravanA">
													<h5 class="caravana">CaravanA</h5>
													<h1 class="mt-1 mb-3" id="Caravan_txt">카라반 A의 정보</h1>
													<div class="mb-1">
														<span class="text-danger"> <i
															class="mdi mdi-arrow-bottom-right"></i> <input
															class="caravan_btn btn btn-primary btn-block"
															type="submit" value="확인하기" />

														</span>
													</div>
												</div>


											</div>
										</form>
										<!-- 카라반 A -->

										<!-- 카라반C -->
										<form action="MapController.do" method="post">
											<div class="card">
												<div class="card-body">
													<input type="hidden" name="car_name" value="CaravanC">
													<h5 class="caravanc">CaravanC</h5>
													<h1 class="mt-1 mb-3" id="Caravan_txt">카라반 C의 정보</h1>
													<div class="mb-1">
														<span class="text-success"> <i
															class="mdi mdi-arrow-bottom-right"></i> <input
															class="caravan_btn btn btn-primary btn-block"
															type="submit" value="확인하기" />
														</span>
													</div>
												</div>
											</div>
										</form>
										<!-- 카라반C -->

									</div>



									<div class="col-sm-6">
										<!-- 카라반B -->
										<form action="MapController.do" method="post">
											<div class="card">
												<div class="card-body">
													<input type="hidden" name="car_name" value="CaravanB">
													<h5 class="caravanb">CaravanB</h5>
													<h1 class="mt-1 mb-3" id="Caravan_txt">카라반 B의 정보</h1>
													<div class="mb-1">
														<span class="text-success"> <i
															class="mdi mdi-arrow-bottom-right"></i> <input
															class="caravan_btn btn btn-primary btn-block"
															type="submit" value="확인하기" />
														</span>
													</div>
												</div>
											</div>
										</form>
										<!-- 카라반B -->
										<!-- 카라반D -->
										<form action="MapController.do" method="post">
											<div class="card">
												<div class="card-body">
													<input type="hidden" name="car_name" value="CaravanD">
													<h5 class="caravand">CaravanD</h5>
													<h1 class="mt-1 mb-3" id="Caravan_txt">카라반 D의 정보</h1>
													<div class="mb-1">
														<span class="text-danger"> <i
															class="mdi mdi-arrow-bottom-right"></i> <input
															class="caravan_btn btn btn-primary btn-block"
															type="submit" value="확인하기" />
														</span>
													</div>
												</div>
											</div>
										</form>
										<!-- 카라반D -->
									</div>
										
								</div>
							</div>
						</div>

						<!-- 첫번째 굴곡선 그래프 -->
						<div class="col-xl-6 col-xxl-7">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0" id="member">월별 회원 통계</h5>
								</div>
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<canvas id="chartjs-dashboard-line"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!-- 첫번째 굴곡선 그래프 end -->
					</div>

					<div class="row" id="row">
						<!-- 두번째 라인 전체 div -->
						<!--캘린더-->
						<div class="card flex-fill" id="calendar_bg">
							<div class="container">
								<div class="my-calendar clearfix">
									<div class="clicked-date">
										<div class="cal-day"></div>
										<div class="cal-date"></div>
									</div>
									<div class="calendar-box">
										<div class="ctr-box clearfix">
											<button type="button" title="prev" class="btn-cal prev">
											</button>
											<span class="cal-month"></span> <span class="cal-year"></span>
											<button type="button" title="next" class="btn-cal next">
											</button>
										</div>
										<table class="cal-table">
											<thead>
												<tr>
													<th>S</th>
													<th>M</th>
													<th>T</th>
													<th>W</th>
													<th>T</th>
													<th>F</th>
													<th>S</th>
												</tr>
											</thead>
											<tbody class="cal-body"></tbody>
										</table>
									</div>
								</div>
								<!-- // .my-calendar -->
							</div>
						</div>
						<!--캘린더 끝 -->



						<!--두번째줄 달력옆 바차트 : 남녀성비 확인하는 그래프로 쓰기 -->
						<div class="col-12 col-lg-6" id="gender_bar">
							<div class="card">
								<div class="card-header" id="card-body">
									<h5 class="card-title" id="member">카라반 별점</h5>
									<h6 class="card-subtitle text-muted">고객들이 퇴실 시 남긴 별점입니다.</h6>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-bar"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!--두번째줄 달력옆 바차트 : 남녀성비 확인하는 그래프 끝-->


						<!-- 회원정보 테이블 시작 -->
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3"
							id="member_table">
							<div class="row">
								<div class="col-12 col-lg-8 col-xxl-9 d-flex">
									<div class="card flex-fill">
										<div class="card-header">
										<!-- 후기 : 회원번호, 별점, 후기 -->
											<h5 class="card-title mb-0" id="member">카라반 캠핑장 후기</h5>
										</div>
										<table class="table table-hover my-0">
											<thead>
												<tr>
													<th>번호</th>
													<th class="d-none d-xl-table-cell">카라반</th>
													<th>별점</th>
													<th class="d-none d-md-table-cell">후기</th>
												</tr>
											</thead>
											<tbody id="tables">
											<c:forEach var="vo" items="${review_arr}">
												<tr>
													<td class="d-none d-xl-table-cell">${vo.num }</td>
													<td class="d-none d-xl-table-cell">${vo.car_name }</td>
													<td class="d-none d-xl-table-cell">${vo.score }</td>
													<td class="d-none d-md-table-cell">${vo.cmt_review }</td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 회원정보 테이블 end -->
					</div>
					<!-- 두번째 라인 전체 div end -->
				</div>
			</main>
			<!-- 콘텐츠 부분만 html 변경하면됨! -->



			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-left">
							<p class="mb-0">
								<a href="index.html" class="text-muted"><strong>CARACAMPLE</strong></a>
							</p>
						</div>
						<div class="col-6 text-right">
							<ul class="list-inline">
								<li class="list-inline-item"><a class="text-muted" href="#">COPYRIGHT@
										2021 CARACAMPLE RESERVED</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>


	<!-- 첫번째 곡선 그래프 -->
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line")
					.getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type : "line",
				data : {
					labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
							"Aug", "Sep", "Oct", "Nov", "Dec" ],
					datasets : [ {
						label : "명",
						fill : true,
						backgroundColor : gradient,
						borderColor : window.theme.primary,
						data : [ "${month_total[0]}","${month_total[1]}","${month_total[2]}","${month_total[3]}","${month_total[4]}",
							"${month_total[5]}","${month_total[6]}","${month_total[7]}","${month_total[8]}","${month_total[9]}",
							"${month_total[10]}","${month_total[11]}",]
					} ]
				},
				options : {
					maintainAspectRatio : false,
					legend : {
						display : false
					},
					tooltips : {
						intersect : false
					},
					hover : {
						intersect : true
					},
					plugins : {
						filler : {
							propagate : false
						}
					},
					scales : {
						xAxes : [ {
							reverse : true,
							gridLines : {
								color : "rgba(0,0,0,0.0)"
							}
						} ],
						yAxes : [ {
							ticks : {
								stepSize : 1000
							},
							display : true,
							borderDash : [ 3, 3 ],
							gridLines : {
								color : "rgba(0,0,0,0.0)"
							}
						} ]
					}
				}
			});
		});
	</script>
	<!-- 첫번째 곡선 그래프   끝-->




	<!-- 두번째 남녀 성비 나타낼 바 그래프코드 -->
	<script>
	console.log('${avg_list[0]}');
	var ctx = document.getElementById('chartjs-bar').getContext('2d');
	var chart = new Chart(ctx, {
		type : "bar",
		data : {
			labels : [ "A","B","C","D","E","F","G","H","I" ],
			datasets : [
					{
						label : "별점",
						backgroundColor : window.theme.primary,
						borderColor : window.theme.primary,
						hoverBackgroundColor : window.theme.primary,
						hoverBorderColor : window.theme.primary,
						data : [ "${list[0]}", "${list[1]}", "${list[2]}", "${list[3]}", "${list[4]}", "${list[5]}", "${list[6]}", "${list[7]}", "${list[8]}" ],
						barPercentage : .75,
						categoryPercentage : .5
					},
					{
						label : "평균 별점",
						backgroundColor : "#dee2e6",
						borderColor : "#dee2e6",
						hoverBackgroundColor : "#dee2e6",
						hoverBorderColor : "#dee2e6",
						data : [ "${avg_list[0]}", "${avg_list[1]}", "${avg_list[2]}", "${avg_list[3]}", "${avg_list[4]}", "${avg_list[5]}", "${avg_list[6]}", "${avg_list[7]}", "${avg_list[8]}"],
						barPercentage : .75,
						categoryPercentage : .5
					} ]
		},
		options : {
			maintainAspectRatio : false,
			legend : {
				display : false
			},
			scales : {
				yAxes : [ {
					gridLines : {
						display : false
					},
					stacked : false,
					ticks : {
						stepSize : 20
					}
				} ],
				xAxes : [ {
					stacked : false,
					gridLines : {
						color : "transparent"
					}
				} ]
			}
		}
	});
	/* 	document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-bar"), {
				type : "bar",
				data : {
					labels : [ "A","B","C","D","E","F","G","H","I" ],
					datasets : [
							{
								label : "별점",
								backgroundColor : window.theme.primary,
								borderColor : window.theme.primary,
								hoverBackgroundColor : window.theme.primary,
								hoverBorderColor : window.theme.primary,
								data : [ "${list[0]}", "${list[1]}", "${list[2]}", "${list[3]}", "${list[4]}", "${list[5]}", "${list[6]}", "${list[7]}", "${list[8]}" ],
								barPercentage : .75,
								categoryPercentage : .5
							},
							{
								label : "평균 별점",
								backgroundColor : "#dee2e6",
								borderColor : "#dee2e6",
								hoverBackgroundColor : "#dee2e6",
								hoverBorderColor : "#dee2e6",
								data : [ "${avg_list[0]}", "${avg_list[1]}", "${avg_list[2]}", "${avg_list[3]}", "${avg_list[4]}", "${avg_list[5]}", "${avg_list[6]}", "${avg_list[7]}", "${avg_list[8]}"],
								barPercentage : .75,
								categoryPercentage : .5
							} ]
				},
				options : {
					maintainAspectRatio : false,
					legend : {
						display : false
					},
					scales : {
						yAxes : [ {
							gridLines : {
								display : false
							},
							stacked : false,
							ticks : {
								stepSize : 20
							}
						} ],
						xAxes : [ {
							stacked : false,
							gridLines : {
								color : "transparent"
							}
						} ]
					}
				}
			});
		}); */
	</script><!-- 두번째 남녀 성비 나타낼 바 그래프코드  end-->


	<!-- 캘린더 -->
	<script>
	// ================================
	// START YOUR APP HERE
	// ================================
	const init = {
	  monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
	  dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
	  today: new Date(),
	  monForChange: new Date().getMonth(),
	  activeDate: new Date(),
	  getFirstDay: (yy, mm) => new Date(yy, mm, 1),
	  getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
	  nextMonth: function () {
	    let d = new Date();
	    d.setDate(1);
	    d.setMonth(++this.monForChange);
	    this.activeDate = d;
	    return d;
	  },
	  prevMonth: function () {
	    let d = new Date();
	    d.setDate(1);
	    d.setMonth(--this.monForChange);
	    this.activeDate = d;
	    return d;
	  },
	  addZero: (num) => (num < 10) ? '0' + num : num,
	  activeDTag: null,
	  getIndex: function (node) {
	    let index = 0;
	    while (node = node.previousElementSibling) {
	      index++;
	    }
	    return index;
	  }
	};

	const $calBody = document.querySelector('.cal-body');
	const $btnNext = document.querySelector('.btn-cal.next');
	const $btnPrev = document.querySelector('.btn-cal.prev');

	/**
	 * @param {number} date
	 * @param {number} dayIn
	*/
	function loadDate (date, dayIn) {
	  document.querySelector('.cal-date').textContent = date;
	  document.querySelector('.cal-day').textContent = init.dayList[dayIn];
	}

	/**
	 * @param {date} fullDate
	 */
	function loadYYMM (fullDate) {
	  let yy = fullDate.getFullYear();
	  let mm = fullDate.getMonth();
	  let firstDay = init.getFirstDay(yy, mm);
	  let lastDay = init.getLastDay(yy, mm);
	  let markToday;  // for marking today date
	  
	  if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
	    markToday = init.today.getDate();
	  }

	  document.querySelector('.cal-month').textContent = init.monList[mm];
	  document.querySelector('.cal-year').textContent = yy;

	  let trtd = '';
	  let startCount;
	  let countDay = 0;
	  for (let i = 0; i < 6; i++) {
	    trtd += '<tr>';
	    for (let j = 0; j < 7; j++) {
	      if (i === 0 && !startCount && j === firstDay.getDay()) {
	        startCount = 1;
	      }
	      if (!startCount) {
	        trtd += '<td>'
	      } else {
	        let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
	        trtd += '<td class="day';
	        trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
	        trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
	      }
	      trtd += (startCount) ? ++countDay : '';
	      if (countDay === lastDay.getDate()) { 
	        startCount = 0; 
	      }
	      trtd += '</td>';
	    }
	    trtd += '</tr>';
	  }
	  $calBody.innerHTML = trtd;
	}

	/**
	 * @param {string} val
	 */
	function createNewList (val) {
	  let id = new Date().getTime() + '';
	  let yy = init.activeDate.getFullYear();
	  let mm = init.activeDate.getMonth() + 1;
	  let dd = init.activeDate.getDate();
	  const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

	  let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

	  let eventData = {};
	  eventData['date'] = date;
	  eventData['memo'] = val;
	  eventData['complete'] = false;
	  eventData['id'] = id;
	  init.event.push(eventData);
	  $todoList.appendChild(createLi(id, val, date));
	}

	loadYYMM(init.today);
	loadDate(init.today.getDate(), init.today.getDay());

	$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
	$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

	$calBody.addEventListener('click', (e) => {
	  if (e.target.classList.contains('day')) {
	    if (init.activeDTag) {
	      init.activeDTag.classList.remove('day-active');
	    }
	    let day = Number(e.target.textContent);
	    let id = new Date().getTime() + '';
		let yy = init.activeDate.getFullYear();
		let mm = init.activeDate.getMonth() + 1;
		chart.destroy();
		$(function(){
			$.ajax({
				// 안되면 파라미터..고민해보기 지운 것 > http://localhost:8081/standProject/
				url:'ajax.do?yy='+yy+'&mm='+mm+'&day='+day+'&num=0',
				// 안되면utf-8로 바꾸기
				dataType:'json',
				success:function(result){
					chart = new Chart(ctx, {
						type : "bar",
						data : {
							labels : [ "A","B","C","D","E","F","G","H","I" ],
							datasets : [
									{
										label : "별점",
										backgroundColor : window.theme.primary,
										borderColor : window.theme.primary,
										hoverBackgroundColor : window.theme.primary,
										hoverBorderColor : window.theme.primary,
										data : [ result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7], result[8] ],
										barPercentage : .75,
										categoryPercentage : .5
									},
									{
										label : "평균 별점",
										backgroundColor : "#dee2e6",
										borderColor : "#dee2e6",
										hoverBackgroundColor : "#dee2e6",
										hoverBorderColor : "#dee2e6",
										data : [ "${avg_list[0]}", "${avg_list[1]}", "${avg_list[2]}", "${avg_list[3]}", "${avg_list[4]}", "${avg_list[5]}", "${avg_list[6]}", "${avg_list[7]}", "${avg_list[8]}"],
										barPercentage : .75,
										categoryPercentage : .5
									} ]
						},
						options : {
							maintainAspectRatio : false,
							legend : {
								display : false
							},
							scales : {
								yAxes : [ {
									gridLines : {
										display : false
									},
									stacked : false,
									ticks : {
										stepSize : 20
									}
								} ],
								xAxes : [ {
									stacked : false,
									gridLines : {
										color : "transparent"
									}
								} ]
							}
						}
					});
					
				},
				error:function(){
					console.log("데이터 로드 실패");
				},
				
			});
		});
		$(function(){
			$.ajax({
				// 안되면 파라미터..고민해보기 지운 것 > http://localhost:8081/standProject/
				url:'ajax.do?yy='+yy+'&mm='+mm+'&day='+day+'&num=1',
				// 안되면utf-8로 바꾸기
				dataType:'json',
				success:function(result){
					 let html = '';
					for(let i = 0; i < result.length; i++){
						html += '<tr>';
						html += '<td class="d-none d-xl-table-cell">'+result[i].num+'</td>';
						html += '<td class="d-none d-xl-table-cell">'+result[i].car_name+'</td>';
						html += '<td class="d-none d-xl-table-cell">'+result[i].score+'</td>';
						html += '<td class="d-none d-md-table-cell">'+result[i].cmt_review+'</td>';
						html += '</tr>';
					}
					$('#tables').html(html);
				},
				error:function(){
					console.log("데이터 로드 실패");
				},
				
			});
		});
	    loadDate(day, e.target.cellIndex);
	    e.target.classList.add('day-active');
	    init.activeDTag = e.target;
	    init.activeDate.setDate(day);
	  }
	});
	</script>
	<!-- 달력 end -->


</body>
</html>

