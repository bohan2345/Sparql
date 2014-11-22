package api;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;


public class DirectorWithRating {
	private OutputStream output = null;
	public String path = "/Users/shuaiwang/Documents/eclipse workspace/Sparql/WebContent/data/test1.json";
	public OutputStream getOutputStream() {
		try {
			output = new FileOutputStream("/Users/shuaiwang/Documents/eclipse workspace/Sparql/WebContent/data/test1.json");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return output;
	}
}
