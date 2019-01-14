var canvas = $('#chart-portions');
var chart;
var charttype = 'pie';
var period = 'today';



function TodayPie() {
	chart = new Chart(canvas, {
		type: 'pie',
		data: {
			labels: ["Starchy Carbs", "Fruit and Veg", "Protien", "Dairy", "Fats"],
			datasets: [{
				label: 'Portions eaten today',
				data: [5, 6, 2, 1, 1],
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)'
				],
				borderWidth: 1
			}]
		}
	});
} TodayPie();


//var days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
//var weekly = $('#chart-weekly')
//var WeeklyChart = new Chart(weekly, {
//	type: 'line',
//	data: {
//		labels: days,
//		datasets: [{
//				label: 'Starchy Carbs',
//				backgroundColor: 'rgba(255, 99, 132, 1)',
//				borderColor: 'rgba(255, 99, 132, 1)',
//				data: [5, 6, 4, 7, 8, 7, 6],
//				fill: false
//			}, {
//				label: 'Fruit and Veg',
//				backgroundColor: 'rgba(54, 162, 235, 1)',
//				borderColor: 'rgba(54, 162, 235, 1)',
//				data: [6, 7, 8, 9, 6, 7, 6],
//				fill: false
//			}, {
//				label: 'Protien',
//				backgroundColor: 'rgba(255, 206, 86, 1)',
//				borderColor: 'rgba(255, 206, 86, 1)',
//				data: [1, 3, 4, 2, 1, 3, 2],
//				fill: false
//			}
//		]
//	},
//	options: {
//		scales: {
//			yAxes: [{
//				ticks: {
//					beginAtZero: true
//				}
//			}]
//		}
//	}
//})