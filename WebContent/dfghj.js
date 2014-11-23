window.HW = {};
window.HW.flag = 0;
$.ajax({
	url : "http://localhost:8080/Sparql/data/test1.json",
	contentType : "application/json",
	success : function(data) {
		window.HW.test1 = data;
		window.HW.flag++;
		if (flag == 3) {
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
		if (flag == 3) {
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
		if (flag == 3) {
			init();
		}
	}
});

function init() {
	console.log(window.HW.test1);

	if ($('#director_movie_count').length) {
		var data = window.HW.test1;
		Morris.Bar({
			element : 'director_movie_count',
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
			labels : [ 'A' ]
		});

	}

	if ($('#director_movie_count').length) {

		Morris.Bar({
			element : 'best-book',
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
			labels : [ 'A' ]
		});

	}

	if ($('#best-director').length) {

		Morris.Bar({
			element : 'best-director',
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
			labels : [ 'A' ]
		});

	}

	if ($('#best-actor').length) {

		Morris.Bar({
			element : 'best-actor',
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
			labels : [ 'A' ]
		});

	}
}

$(document).ready(function() {
	pageSetUp();
});
