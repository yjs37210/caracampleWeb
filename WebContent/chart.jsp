<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script src="js/app.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- script 맨 밑으로가면 제이쿼리 적용안됨 -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/bootstrap.js"></script>


<title>caracample</title>

<style>

/* 상단css less에 먹어서 임의로 줄임*/
#nav_height{
height:40px;}
#nav_height2{
height:40px;}
/* 상단css less에 먹어서 임의로 줄임 end*/

a {
	list-style: none;
}

.chart-xs {
	background: red;
}

#color_chart {
	background: green;
	width: 760px;
}

#color_map {
	background: blue;
	width: 400px;
	float: left;
}

#Caravan_txt {
	font-size: 20px;
}

/* 버튼 색변경 */
button {
	width: 140px;
	height: 35px;
	font-size: 15px;
	border-top-left-radius: 8px;
	border-bottom-right-radius: 8px;
	background: #222e3c;
	color: #fff;
}

/* 카라반정보들 버튼 색변경 */
.caravan_btn>a {
	color: #fff;
	border-style: none;
	outline: none;
	text-decoration: none;
	border: 2px color #4298cc;
}

.caravan_btn>a.hover {
	background: #4298cc;
	color: #222e3c;
}

/*회원정보 글씨css*/
#member {
	font-size: 18px;
	font-weight: bold;
}
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
					<!--
					<li class="sidebar-header">
						Pages
					</li>
-->

					<li class="sidebar-item active"><a class="sidebar-link"
						href="main.jsp"> <i class="align-middle"
							data-feather="sliders"></i> <span class="align-middle">Main</span>
					</a></li>


					<li class="sidebar-item"><a class="sidebar-link"
						href="chart.jsp"> <i class="align-middle"
							data-feather="bar-chart-2"></i> <span class="align-middle">Charts</span>
					</a></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="caracample_map.jsp"> <i class="align-middle"
							data-feather="map"></i> <span class="align-middle">Maps</span>
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
			<nav class="navbar navbar-expand navbar-light navbar-bg" id="nav_height">
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
								<div class="dropdown-menu-header">4 New Notifications</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-danger" data-feather="alert-circle"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Update completed</div>
												<div class="text-muted small mt-1">Restart server 12
													to complete the update.</div>
												<div class="text-muted small mt-1">30m ago</div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-warning" data-feather="bell"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Lorem ipsum</div>
												<div class="text-muted small mt-1">Aliquam ex eros,
													imperdiet vulputate hendrerit et.</div>
												<div class="text-muted small mt-1">2h ago</div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-primary" data-feather="home"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Login from 192.186.1.8</div>
												<div class="text-muted small mt-1">5h ago</div>
											</div>
										</div>
									</a> <a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-success" data-feather="user-plus"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">New connection</div>
												<div class="text-muted small mt-1">Christina accepted
													your request.</div>
												<div class="text-muted small mt-1">14h ago</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all notifications</a>
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
							href="#" data-toggle="dropdown"> <img
								src="img/avatars/avatar.jpg"
								class="avatar img-fluid rounded mr-1" alt="" /> <span
								class="text-dark">Admin</span>
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
							href="#" data-toggle="dropdown"> <span
								class="text-dark">Admin</span>
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

				<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Chart.js</h1>

					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h5 class="card-title">Line Chart</h5>
									<h6 class="card-subtitle text-muted">A line chart is a way of plotting data points on a line.</h6>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-line"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Bar Chart</h5>
									<h6 class="card-subtitle text-muted">A bar chart provides a way of showing data values represented as vertical bars.</h6>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-bar"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Doughnut Chart</h5>
									<h6 class="card-subtitle text-muted">Doughnut charts are excellent at showing the relational proportions between data.</h6>
								</div>
								<div class="card-body">
									<div class="chart chart-sm">
										<canvas id="chartjs-doughnut"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Pie Chart</h5>
									<h6 class="card-subtitle text-muted">Pie charts are excellent at showing the relational proportions between data.</h6>
								</div>
								<div class="card-body">
									<div class="chart chart-sm">
										<canvas id="chartjs-pie"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Radar Chart</h5>
									<h6 class="card-subtitle text-muted">A radar chart is a way of showing multiple data points and the variation between them.</h6>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-radar"></canvas>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Polar Area Chart</h5>
									<h6 class="card-subtitle text-muted">Polar area charts are similar to pie charts, but each segment has the same angle.</h6>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-polar-area"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

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
			// Line chart
			new Chart(document.getElementById("chartjs-line"), {
				type: "line",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "Sales ($)",
						fill: true,
						backgroundColor: "transparent",
						borderColor: window.theme.primary,
						data: [2115, 1562, 1584, 1892, 1487, 2223, 2966, 2448, 2905, 3838, 2917, 3327]
					}, {
						label: "Orders",
						fill: true,
						backgroundColor: "transparent",
						borderColor: "#adb5bd",
						borderDash: [4, 4],
						data: [958, 724, 629, 883, 915, 1214, 1476, 1212, 1554, 2128, 1466, 1827]
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
								color: "rgba(0,0,0,0.05)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 500
							},
							display: true,
							borderDash: [5, 5],
							gridLines: {
								color: "rgba(0,0,0,0)",
								fontColor: "#fff"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-bar"), {
				type: "bar",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "Last year",
						backgroundColor: window.theme.primary,
						borderColor: window.theme.primary,
						hoverBackgroundColor: window.theme.primary,
						hoverBorderColor: window.theme.primary,
						data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
						barPercentage: .75,
						categoryPercentage: .5
					}, {
						label: "This year",
						backgroundColor: "#dee2e6",
						borderColor: "#dee2e6",
						hoverBackgroundColor: "#dee2e6",
						hoverBorderColor: "#dee2e6",
						data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68],
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
			// Doughnut chart
			new Chart(document.getElementById("chartjs-doughnut"), {
				type: "doughnut",
				data: {
					labels: ["Social", "Search Engines", "Direct", "Other"],
					datasets: [{
						data: [260, 125, 54, 146],
						backgroundColor: [
							window.theme.primary,
							window.theme.success,
							window.theme.warning,
							"#dee2e6"
						],
						borderColor: "transparent"
					}]
				},
				options: {
					maintainAspectRatio: false,
					cutoutPercentage: 65,
					legend: {
						display: false
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Pie chart
			new Chart(document.getElementById("chartjs-pie"), {
				type: "pie",
				data: {
					labels: ["Social", "Search Engines", "Direct", "Other"],
					datasets: [{
						data: [260, 125, 54, 146],
						backgroundColor: [
							window.theme.primary,
							window.theme.warning,
							window.theme.danger,
							"#dee2e6"
						],
						borderColor: "transparent"
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Radar chart
			new Chart(document.getElementById("chartjs-radar"), {
				type: "radar",
				data: {
					labels: ["Speed", "Reliability", "Comfort", "Safety", "Efficiency"],
					datasets: [{
						label: "Model X",
						backgroundColor: "rgba(0, 123, 255, 0.2)",
						borderColor: window.theme.primary,
						pointBackgroundColor: window.theme.primary,
						pointBorderColor: "#fff",
						pointHoverBackgroundColor: "#fff",
						pointHoverBorderColor: window.theme.primary,
						data: [70, 53, 82, 60, 33]
					}, {
						label: "Model S",
						backgroundColor: "rgba(220, 53, 69, 0.2)",
						borderColor: window.theme.danger,
						pointBackgroundColor: window.theme.danger,
						pointBorderColor: "#fff",
						pointHoverBackgroundColor: "#fff",
						pointHoverBorderColor: window.theme.danger,
						data: [35, 38, 65, 85, 84]
					}]
				},
				options: {
					maintainAspectRatio: false
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Polar Area chart
			new Chart(document.getElementById("chartjs-polar-area"), {
				type: "polarArea",
				data: {
					labels: ["Speed", "Reliability", "Comfort", "Safety", "Efficiency"],
					datasets: [{
						label: "Model S",
						data: [35, 38, 65, 70, 24],
						backgroundColor: [
							window.theme.primary,
							window.theme.success,
							window.theme.danger,
							window.theme.warning,
							window.theme.info
						]
					}]
				},
				options: {
					maintainAspectRatio: false
				}
			});
		});
	</script>

</body>
</html>

