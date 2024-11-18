package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryprovider;

/**
 * Servlet implementation class deleteservlet
 */
public class deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = factoryprovider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			Note note = (Note)s.get(Note.class, noteId);
			s.delete(note);
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	

}
