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


public class DirectorWithRating {
	
	public void get(String path) {

		String sparql = "SELECT (COUNT(*) AS ?count) ?dname " +
				"WHERE{" +
				"?director hw:directed ?movie ." +
				"?book hw:filmed ?movie ." +
				"?movie hw:imdbrating ?rating ." +
				"?director hw:person_name ?dname ." +
				"FILTER (?rating >= 7.5)}" +
				"GROUP BY (?dname)" +
				"ORDER BY DESC(?count) ";

		OntModel model1 = ModelFactory.createOntologyModel(OntModelSpec.OWL_MEM_MICRO_RULE_INF);
		model1.read(SOURCE, "RDF/XML");
		Query query = QueryFactory.create(prefix + sparql);

		QueryExecution qexec = QueryExecutionFactory.create(query, model1);

		ResultSet results = qexec.execSelect();
		try {
			OutputStream output = new FileOutputStream(path + "test3.json");
			ResultSetFormatter.outputAsJSON(output, results);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
