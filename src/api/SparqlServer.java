package api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		// TODO Auto-generated method stub
		System.out.println("get");
		String x = request.getParameter("ex");
		new MovieGenreCount().get(JSONPATH);
		new DirectorWithRating().get(JSONPATH0);
		new BookMovieRating().get(JSONPATH);
		response.sendRedirect("example.jsp");
//		PrintWriter out = response.getWriter();
//		out.write(ex1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post");
		response.addHeader("Access-Control-Allow-Origin", "*");
		response.addHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
		PrintWriter out = response.getWriter();
		String sparql = request.getParameter("sparql");
		List<Movie> movies = new CrawlData().getMoives(sparql);
		out.println(sparql);
		out.flush();
		out.close();
	}

}
