<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

<link rel="stylesheet" href="css/reset.css" type="text/css">

<link rel="shortcut icon" href="images/icon-48x48.png" />
<link href="css/app.css" rel="stylesheet">
<link href="css/map.css" rel="stylesheet">

<script src="js/app.js"></script>


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- script 맨 밑으로가면 제이쿼리 적용안됨 -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/bootstrap.js"></script>


<title>caracample</title>

<style>
.content {
	position: relative;
}

#btn_del {
	margin-left: 10px;
}

#bbs_wrap {
	width: 600px;
	position: absolute;
	top: 25%;
	left: 58%;
}

.td_right {
	width: 400px;
}

.tr_text {
	font-size: 18px;
	font-weight: bold;
}
.btn_margin{margin-left:425px;}
</style>
</head>
<body>

	<div class="wrapper">
		<nav id="sidebar" class="sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="index.html"> <span
					class="align-middle">CARACAMPLE 관리자</span>
				</a>

				<ul class="sidebar-nav">


					<li class="sidebar-item"><a class="sidebar-link"
						href="main.jsp"> <i class="align-middle"
							data-feather="sliders"></i> <span class="align-middle">Main</span>
					</a></li>


					<li class="sidebar-item active"><a class="sidebar-link"
						href="map.jsp"> <i class="align-middle" data-feather="map"></i>
							<span class="align-middle">Map</span>
					</a></li>


				</ul>

				<div class="sidebar-cta">
					<div class="sidebar-cta-content">
						<strong class="d-inline-block mb-2">CARACAMPLE</strong>
						<div class="mb-3 text-sm">카라캠플 관리자 페이지</div>
						<a href="https://adminkit.io/pricing" target="_blank"
							class="btn btn-primary btn-block">어플 다운받기</a>
					</div>
				</div>
			</div>
		</nav>


		<div class="main">


			<!-- 여기에부터! -->
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
									<!--  알림보여주기 -->
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
									<div class="position-relative">4 New Messages</div>
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
												<div class="text-dark">Vanessa Tucker</div>
												<div class="text-muted small mt-1">Nam pretium turpis
													et arcu. Duis arcu tortor.</div>
												<div class="text-muted small mt-1">15m ago</div>
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
												<div class="text-dark">William Harris</div>
												<div class="text-muted small mt-1">Curabitur ligula
													sapien euismod vitae.</div>
												<div class="text-muted small mt-1">2h ago</div>
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
												<div class="text-dark">Christina Mason</div>
												<div class="text-muted small mt-1">Pellentesque auctor
													neque nec urna.</div>
												<div class="text-muted small mt-1">4h ago</div>
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
												<div class="text-dark">Sharon Lessman</div>
												<div class="text-muted small mt-1">Aenean tellus
													metus, bibendum sed, posuere ac, mattis non.</div>
												<div class="text-muted small mt-1">5h ago</div>
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
						<%
							String userID = null;
						if (session.getAttribute("userID") != null) {
							userID = (String) session.getAttribute("userID");
						}
						%>

						<%
							if (userID == null) {
						%>

						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#" data-toggle="dropdown"> <span class="text-dark">관리자님
									환영합니다.</span>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="login.jsp">Login</a><a
									class="dropdown-item" href="join.jsp">join</a>
								<!--로그아웃-->
							</div></li>

						<%
							} else {
						%>

						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <a class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#" data-toggle="dropdown"> <span class="text-dark">관리자님
									환영합니다.</span>
						</a>

							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="logoutAction.jsp">Logout</a>

							</div></li>
						<%
							}
						%>
						<!-- 로그인 끝 -->

					</ul>
				</div>
			</nav>


			<!--  메인넣기 -->
			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Caracample Map</h1>

					<div class="row">
						<div class="">
							<!--Map 페이지부분!!-->
							<div id="map" class="card">
								<div class="card-header">
									<div id="caracample_map">
										<img src="./images/map.png" alt="없음">
									</div>
									<div></div>

								</div>
								<!--게시판 소스 -->
								<div id="bbs_wrap">
									<table class="table table-striped"
										style="text-align: center; border: 1px solid #ccc;">
										<thead>
											<tr width="80" height="50" class="tr_text">
												<td colspan="2"
													style="background-color: #eeeeee; text-align: center;">A카라반
													정보</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">번호</td>
												<td style="background-color: #fff; text-align: center;"
													class="td_right">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">카라반
													이름</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">이름</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">전화번호</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">남성수</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">여성수</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="80" height="50">
												<td style="background-color: #eeeeee; text-align: center;">입실시간</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
											<tr width="250" height="50">
												<td style="background-color: #eeeeee; text-align: center;">퇴실시간</td>
												<td style="background-color: #fff; text-align: center;">입력값</td>
											</tr>
										</thead>
									</table>
									<div class="btn_margin">
										<a href="write.jsp" class="btn btn-primary pull-right"
											id="btn_del">삭제하기</a> <a href="write.jsp"
											class="btn btn-primary pull-right" id="btn_re">수정하기</a>
									</div>

								</div>
								<!--게시판 소스 end -->
							</div>
							<!--Map 페이지부분 end-->
						</div>
					</div>
				</div>
			</main>
			<!-- 메인 지도 끝 -->


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



	<script>
        document.addEventListener("DOMContentLoaded", function() {
            var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
            var gradient = ctx.createLinearGradient(0, 0, 0, 225);
            gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
            gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
            // Line chart
            new Chart(document.getElementById("chartjs-dashboard-line"), {
                type: "line",
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Sales ($)",
                        fill: true,
                        backgroundColor: gradient,
                        borderColor: window.theme.primary,
                        data: [
                            2115,
                            1562,
                            1584,
                            1892,
                            1587,
                            1923,
                            2566,
                            2448,
                            2805,
                            3438,
                            2917,
                            3327
                        ]
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    tooltips: {
                        intersect: false
                    },
                    hover: {
                        intersect: true
                    },
                    plugins: {
                        filler: {
                            propagate: false
                        }
                    },
                    scales: {
                        xAxes: [{
                            reverse: true,
                            gridLines: {
                                color: "rgba(0,0,0,0.0)"
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                stepSize: 1000
                            },
                            display: true,
                            borderDash: [3, 3],
                            gridLines: {
                                color: "rgba(0,0,0,0.0)"
                            }
                        }]
                    }
                }
            });
        });
    </script>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            // Pie chart
            new Chart(document.getElementById("chartjs-dashboard-pie"), {
                type: "pie",
                data: {
                    labels: ["Chrome", "Firefox", "IE"],
                    datasets: [{
                        data: [4306, 3801, 1689],
                        backgroundColor: [
                            window.theme.primary,
                            window.theme.warning,
                            window.theme.danger
                        ],
                        borderWidth: 5
                    }]
                },
                options: {
                    responsive: !window.MSInputMethodContext,
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    cutoutPercentage: 75
                }
            });
        });
    </script>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            // Bar chart
            new Chart(document.getElementById("chartjs-dashboard-bar"), {
                type: "bar",
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "This year",
                        backgroundColor: window.theme.primary,
                        borderColor: window.theme.primary,
                        hoverBackgroundColor: window.theme.primary,
                        hoverBorderColor: window.theme.primary,
                        data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                        barPercentage: .75,
                        categoryPercentage: .5
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    scales: {
                        yAxes: [{
                            gridLines: {
                                display: false
                            },
                            stacked: false,
                            ticks: {
                                stepSize: 20
                            }
                        }],
                        xAxes: [{
                            stacked: false,
                            gridLines: {
                                color: "transparent"
                            }
                        }]
                    }
                }
            });
        });
    </script>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            var markers = [{
                    coords: [31.230391, 121.473701],
                    name: "Shanghai"
                },
                {
                    coords: [28.704060, 77.102493],
                    name: "Delhi"
                },
                {
                    coords: [6.524379, 3.379206],
                    name: "Lagos"
                },
                {
                    coords: [35.689487, 139.691711],
                    name: "Tokyo"
                },
                {
                    coords: [23.129110, 113.264381],
                    name: "Guangzhou"
                },
                {
                    coords: [40.7127837, -74.0059413],
                    name: "New York"
                },
                {
                    coords: [34.052235, -118.243683],
                    name: "Los Angeles"
                },
                {
                    coords: [41.878113, -87.629799],
                    name: "Chicago"
                },
                {
                    coords: [51.507351, -0.127758],
                    name: "London"
                },
                {
                    coords: [40.416775, -3.703790],
                    name: "Madrid "
                }
            ];
            var map = new JsVectorMap({
                map: "world",
                selector: "#world_map",
                zoomButtons: true,
                markers: markers,
                markerStyle: {
                    initial: {
                        r: 9,
                        strokeWidth: 7,
                        stokeOpacity: .4,
                        fill: window.theme.primary
                    },
                    hover: {
                        fill: window.theme.primary,
                        stroke: window.theme.primary
                    }
                }
            });
            window.addEventListener("resize", () => {
                map.updateSize();
            });
        });
    </script>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("datetimepicker-dashboard").flatpickr({
                inline: true,
                prevArrow: "<span class=\"fas fa-chevron-left\" title=\"Previous month\"></span>",
                nextArrow: "<span class=\"fas fa-chevron-right\" title=\"Next month\"></span>",
            });
        });
    </script>



</body>
</html>

