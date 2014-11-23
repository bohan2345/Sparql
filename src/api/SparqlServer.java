package api;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hp.hpl.jena.ontology.OntModel;
import com.hp.hpl.jena.ontology.OntModelSpec;
import com.hp.hpl.jena.query.Query;
import com.hp.hpl.jena.query.QueryExecution;
import com.hp.hpl.jena.query.QueryExecutionFactory;
import com.hp.hpl.jena.query.QueryFactory;
import com.hp.hpl.jena.query.ResultSet;
import com.hp.hpl.jena.query.ResultSetFormatter;
import com.hp.hpl.jena.rdf.model.ModelFactory;
/**
 * Servlet implementation class SparqlServer
 */
@WebServlet("/SparqlServer")
public class SparqlServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String JSONPATH0 = "/Users/shuaiwang/Documents/eclipse workspace/Sparql/WebContent/data/";
	static String JSONPATH = "/Users/bohan/Documents/workspace/Sparql/WebContent/data/";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SparqlServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x = request.getParameter("ex");
		new MovieGenreCount().get(JSONPATH0);
		new DirectorWithRating().get(JSONPATH0);
		new BookMovieRating().get(JSONPATH0);
		response.sendRedirect("example.jsp");
//		PrintWriter out = response.getWriter();
//		out.write(ex1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prefix = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>" +
				"PREFIX owl: <http://www.w3.org/2002/07/owl#>" +
				"PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>" +
				"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>"+
				"PREFIX hw: <http://www.semanticweb.org/bohan/ontologies/2014/9/hw#>";
		
		String sparql = request.getParameter("sparql");
		ByteArrayOutputStream o = new ByteArrayOutputStream();
		OntModel model1 = ModelFactory.createOntologyModel( OntModelSpec.OWL_MEM_MICRO_RULE_INF);
		model1.read( "http://localhost:8080/Sparql/movie_book.rdf", "RDF/XML" );
		Query query = QueryFactory.create(prefix + sparql);

		QueryExecution qexec = QueryExecutionFactory.create(query, model1);

		ResultSet results = qexec.execSelect();
//		ResultSetFormatter.out(results);
		PrintWriter out= response.getWriter();
		ResultSetFormatter.out(o,results);
			// TODO Auto-generated catch block
		String res = new String(o.toByteArray());

		response.setContentType("text/plain");

		out.write(res);
//		request.setAttribute("res", res);
//		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/sparql.jsp");
//		dispatcher.forward(request,response);
	}

}
