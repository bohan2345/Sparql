package api;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.hp.hpl.jena.ontology.OntModel;
import com.hp.hpl.jena.ontology.OntModelSpec;
import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.ModelFactory;

public class CrawlData {
	public static String prefix = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>" +
			"PREFIX owl: <http://www.w3.org/2002/07/owl#>" +
			"PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>" +
			"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>"+
			"PREFIX hw: <http://www.semanticweb.org/bohan/ontologies/2014/9/hw#>";
	public static String SOURCE = "http://localhost:8080/Sparql/movie_book.rdf";
	public List<Movie> getMoives(String sparql) {
		
		OntModel model1 = ModelFactory.createOntologyModel( OntModelSpec.OWL_MEM_MICRO_RULE_INF);
		model1.read( SOURCE, "RDF/XML" );
		Query query = QueryFactory.create(prefix + sparql);

		QueryExecution qexec = QueryExecutionFactory.create(query, model1);

		ResultSet results = qexec.execSelect();
//		OutputStream
		OutputStream output = null;
		try {
			output = new FileOutputStream("/Users/shuaiwang/Documents/eclipse workspace/Sparql/WebContent/data/test1.json");
			ResultSetFormatter.outputAsJSON(output, results);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		System.out.println("===========================================================");
//		System.out.println(results);
		
		
		
//		ResultSetFormatter.out(System.out, results, query);
		List<Movie> movies = new ArrayList<>();
		qexec.close();
		System.out.println("success!");
		return movies;
	}
}
