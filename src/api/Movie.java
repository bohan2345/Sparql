package api;

import java.util.List;

public class Movie {
	private String film;
	private String title;
	private List<String> language;
	private List<String> starring;
	private List<String> director;
	private int year;
	private Double imdbRating;
	private String book;
	private List<String> bookAuthor;
	private Double bookRating;
	private List<String> movieGenre;
	private String bookGenre;
	private int pages;
	private String description;
	private String isbn;

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public List<String> getMovieGenre() {
		return movieGenre;
	}

	public void setMovieGenre(List<String> movieGenre) {
		this.movieGenre = movieGenre;
	}

	public Double getBookRating() {
		return bookRating;
	}

	public void setBookRating(Double bookRating) {
		this.bookRating = bookRating;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public Double getImdbRating() {
		return imdbRating;
	}

	public void setImdbRating(Double imdbRating) {
		this.imdbRating = imdbRating;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public List<String> getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(List<String> bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getFilm() {
		return film;
	}

	public void setFilm(String film) {
		this.film = film;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<String> getDirector() {
		return director;
	}

	public void setDirector(List<String> director) {
		this.director = director;
	}

	public List<String> getStarring() {
		return starring;
	}

	public void setStarring(List<String> staring) {
		this.starring = staring;
	}

	public List<String> getLanguage() {
		return language;
	}

	public void setLanguage(List<String> language) {
		this.language = language;
	}
}
