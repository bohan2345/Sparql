package api;

import static api.CrawlData.SOURCE;
import static api.CrawlData.prefix;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

import com.hp.hpl.jena.ontology.OntModel;
import com.hp.hpl.jena.ontology.OntModelSpec;
import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.ModelFactory;

public class BookMovieRating {
	public void get(String path) {

		String sparql = "SELECT ?mname ?bname ?mrating ?brating  " +
				"WHERE{" +
				"?author hw:wrote ?book ." +
				"?book hw:filmed ?movie ." +
				"?book hw:bookrating ?brating ." +
				"?movie hw:imdbrating ?mrating ." +
				"?movie hw:movie_title ?mname ." +
				"?book hw:book_title ?bname ." +
				"FILTER (?brating >=3.5 && ?mrating >=7.5)" +
				"} " +
				"ORDER BY DESC(?mrating)";

		OntModel model1 = ModelFactory.createOntologyModel(OntModelSpec.OWL_MEM_MICRO_RULE_INF);
		model1.read(SOURCE, "RDF/XML");
		Query query = QueryFactory.create(prefix + sparql);

		QueryExecution qexec = QueryExecutionFactory.create(query, model1);

		ResultSet results = qexec.execSelect();
		try {
			OutputStream output = new FileOutputStream(path + "test2.json");
			ResultSetFormatter.outputAsJSON(output, results);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
