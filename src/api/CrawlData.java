package api;

import java.util.ArrayList;
import java.util.List;

import com.hp.hpl.jena.ontology.OntModel;
import com.hp.hpl.jena.ontology.OntModelSpec;
import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.QuerySolution;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.ModelFactory;

public class CrawlData {
	private static String prefix = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>" +
			"PREFIX owl: <http://www.w3.org/2002/07/owl#>" +
			"PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>" +
			"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>"+
			"PREFIX hw: <http://www.semanticweb.org/bohan/ontologies/2014/9/hw#>";
	private static String SOURCE = "http://localhost:8080/Sparql/movie_book.rdf";
	public List<Movie> getMoives(String sparql) {
		
		OntModel model1 = ModelFactory.createOntologyModel( OntModelSpec.OWL_MEM_MICRO_RULE_INF);
		model1.read( SOURCE, "RDF/XML" );
		model1.write(System.out);
		Query query = QueryFactory.create(prefix + sparql);

		QueryExecution qexec = QueryExecutionFactory.create(query, model1);

		ResultSet results = qexec.execSelect();
		ResultSetFormatter.out(System.out, results, query);
		List<Movie> movies = new ArrayList<>();
//		while (results.hasNext()) {
//			QuerySolution tuple = results.next();
//			String name = tuple.get("actor").toString();
//			System.out.println(name);
////			String film = tuple.get("film").toString();
////
////			String title = tuple.get("title").toString();
////			List<String> titles = new ArrayList<>();
////			titles.add(title);
////
////
////			String language = tuple.get("language").toString();
////			List<String> languages = new ArrayList<String>();
////			languages.add(language);
////
////			Movie movie = new Movie();
////			movie.setFilm(film);
////			movie.setTitle(titles.get(0));
////			movie.setLanguage(languages);
////			movies.add(movie);
//		}
		qexec.close();
		System.out.println("success!");
		return movies;
	}
}
