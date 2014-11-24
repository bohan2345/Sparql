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

	if ($('#top_10_movies').length) {
		var data = window.HW.test1;
		var data2 = window.HW.test2;
		var data3 = window.HW.test3;
		
		Morris.Bar({
			element : 'top_10_movies',
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
			labels : [ 'number' ],
			xLabelAngle: 60
		});

	}

	if ($('#movies_and_books').length) {

		Morris.Bar({
			element : 'movies_and_books',
			data : [ {
				x : data2.results.bindings[0].mname.value,
				a : data2.results.bindings[0].mrating.value,
				b:  data2.results.bindings[0].brating.value * 2
			}, {
				x : data2.results.bindings[1].mname.value,
				a : data2.results.bindings[1].mrating.value,
				b:  data2.results.bindings[1].brating.value* 2
			}, {
				x : data2.results.bindings[2].mname.value,
				a : data2.results.bindings[2].mrating.value,
				b:  data2.results.bindings[2].brating.value* 2
			}, {
				x : data2.results.bindings[3].mname.value,
				a : data2.results.bindings[3].mrating.value,
				b:  data2.results.bindings[3].brating.value* 2
			}, {
				x : data2.results.bindings[4].mname.value,
				a : data2.results.bindings[4].mrating.value,
				b:  data2.results.bindings[4].brating.value* 2
			}, {
				x : data2.results.bindings[5].mname.value,
				a : data2.results.bindings[5].mrating.value,
				b:  data2.results.bindings[5].brating.value* 2
			}, {
				x : data2.results.bindings[6].mname.value,
				a : data2.results.bindings[6].mrating.value,
				b:  data2.results.bindings[6].brating.value* 2
			}, {
				x : data2.results.bindings[7].mname.value,
				a : data2.results.bindings[7].mrating.value,
				b:  data2.results.bindings[7].brating.value* 2
			}, {
				x : data2.results.bindings[8].mname.value,
				a : data2.results.bindings[8].mrating.value,
				b:  data2.results.bindings[8].brating.value* 2
			}, {
				x : data2.results.bindings[9].mname.value,
				a : data2.results.bindings[9].mrating.value,
				b:  data2.results.bindings[9].brating.value* 2
			} ],
			xkey : 'x',
			ykeys : [ 'a' , 'b'],
			labels : [ 'Movie rating', 'Book rating' ],
			xLabelAngle: 45,
			gridTextSize: 10,
			ymin:7.6,
			ymax:9.2
			
		});

	}

	if ($('#movies_by_director').length) {

		Morris.Bar({
			element : 'movies_by_director',
			data : [ {
				x : data3.results.bindings[0].dname.value,
				a : data3.results.bindings[0].count.value
			}, {
				x : data3.results.bindings[1].dname.value,
				a : data3.results.bindings[1].count.value
			}, {
				x : data3.results.bindings[2].dname.value,
				a : data3.results.bindings[2].count.value
			}, {
				x : data3.results.bindings[3].dname.value,
				a : data3.results.bindings[3].count.value
			}, {
				x : data3.results.bindings[4].dname.value,
				a : data3.results.bindings[4].count.value
			}, {
				x : data3.results.bindings[5].dname.value,
				a : data3.results.bindings[5].count.value
			}, {
				x : data3.results.bindings[6].dname.value,
				a : data3.results.bindings[6].count.value
			}, {
				x : data3.results.bindings[7].dname.value,
				a : data3.results.bindings[7].count.value
			}, {
				x : data3.results.bindings[8].dname.value,
				a : data3.results.bindings[8].count.value
			}, {
				x : data3.results.bindings[9].dname.value,
				a : data3.results.bindings[9].count.value
			} ],
			xkey : 'x',
			ykeys : [ 'a' ],
			labels : [ 'Number of Movies' ],
			xLabelAngle: 45,
			gridTextSize: 10,
		});

	}

}

$(document).ready(function() {
	pageSetUp();
});
