window.HW = {};
window.HW.flag = 0;
$.ajax({
	url : "http://localhost:8080/Sparql/data/test1.json",
	contentType : "application/json",
	success : function(data) {
		window.HW.test1 = data;
		window.HW.flag++;
		if (window.HW.flag == 3) {
			init();
		}
	}
});

$.ajax({
	url : "http://localhost:8080/Sparql/data/test2.json",
	contentType : "application/json",
	success : function(data) {
		window.HW.test2 = data;
		window.HW.flag++;
		if (window.HW.flag == 3) {
			init();
		}
	}
});

$.ajax({
	url : "http://localhost:8080/Sparql/data/test3.json",
	contentType : "application/json",
	success : function(data) {
		window.HW.test3 = data;
		window.HW.flag++;
		if (window.HW.flag == 3) {
			init();
		}
	}
});

function init() {
	console.log(window.HW.test1);

	if ($('#top_10_books').length) {
		var data = window.HW.test1;
		Morris.Bar({
			element : 'top_10_books',
			data : [ {
				x : data.results.bindings[0].genre.value,
				a : data.results.bindings[0].count.value
			}, {
				x : data.results.bindings[1].genre.value,
				a : data.results.bindings[1].count.value
			}, {
				x : data.results.bindings[2].genre.value,
				a : data.results.bindings[2].count.value
			}, {
				x : data.results.bindings[3].genre.value,
				a : data.results.bindings[3].count.value
			}, {
				x : data.results.bindings[4].genre.value,
				a : data.results.bindings[4].count.value
			}, {
				x : data.results.bindings[5].genre.value,
				a : data.results.bindings[5].count.value
			}, {
				x : data.results.bindings[6].genre.value,
				a : data.results.bindings[6].count.value
			}, {
				x : data.results.bindings[7].genre.value,
				a : data.results.bindings[7].count.value
			}, {
				x : data.results.bindings[8].genre.value,
				a : data.results.bindings[8].count.value
			}, {
				x : data.results.bindings[9].genre.value,
				a : data.results.bindings[9].count.value
			} ],
			xkey : 'x',
			ykeys : [ 'a' ],
			labels : [ 'A' ],
			xLabelAngle: 60
		});

	}

	if ($('#top_10_movies').length) {

		Morris.Bar({
			element : 'top_10_movies',
			data : [ {
				x : 'some director',
				a : 1.4
			}, {
				x : 'some director',
				a : 2.2
			}, {
				x : 'some director',
				a : 3
			}, {
				x : 'some director',
				a : 4
			}, {
				x : 'some director',
				a : 5
			}, {
				x : 'some director',
				a : 6
			}, {
				x : 'some director',
				a : 7
			}, {
				x : 'some director',
				a : 8
			}, {
				x : 'some director',
				a : 9
			}, {
				x : 'some director',
				a : 2
			} ],
			xkey : 'x',
			ykeys : [ 'a' ],
			labels : [ 'A' ],
			xLabelAngle: 60
		});

	}

	if ($('#moive_book_compare').length) {

		Morris.Bar({
			element : 'moive_book_compare',
			data : [ {
				x : 'some director',
				a : 1.4
			}, {
				x : 'some director',
				a : 2.2
			}, {
				x : 'some director',
				a : 3
			}, {
				x : 'some director',
				a : 4
			}, {
				x : 'some director',
				a : 5
			}, {
				x : 'some director',
				a : 6
			}, {
				x : 'some director',
				a : 7
			}, {
				x : 'some director',
				a : 8
			}, {
				x : 'some director',
				a : 9
			}, {
				x : 'some director',
				a : 2
			} ],
			xkey : 'x',
			ykeys : [ 'a' ],
			labels : [ 'A' ],
			xLabelAngle: 60
		});

	}

}

$(document).ready(function() {
	pageSetUp();
});
