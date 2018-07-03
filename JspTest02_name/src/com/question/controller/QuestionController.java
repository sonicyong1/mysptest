package com.question.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.question.dto.ExamDto;
import com.question.model.ExamBiz;
import com.question.model.ExamBizImpl;

@WebServlet("/question.do")
public class QuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		ExamBiz biz = new ExamBizImpl();
		
		if(command.equals("q02")) {
			// "exam02" 를 console에 출력하고, 다시 question01.html로 돌아가 주세요.
			System.out.println("exam02");
			response.sendRedirect("question01.html");
		}else if(command.equals("q03")) {
			//question02.jsp로 이동시켜 주세요.
			response.sendRedirect("question02.jsp");
		}else if(command.equals("q04")) {
			HttpSession session = request.getSession();
			String scopeTest = (String) session.getAttribute("scopeTest");
			session.setAttribute("scopeTest", "Hello, scope");
			String result = (String)session.getAttribute("scopeTest");
			System.out.println(result);
			
			response.sendRedirect("question02.jsp");
		}else if(command.equals("q05")) {
			request.setAttribute("reqScope", "question05 answer?");
			RequestDispatcher dispatch = request.getRequestDispatcher("question02.jsp");
			dispatch.forward(request, response);
		}else if(command.equals("q06")) {
			request.setAttribute("list", biz.selectAll());
			RequestDispatcher dispatch = request.getRequestDispatcher("question03.jsp");
			dispatch.forward(request, response);
		}else if(command.equals("q07")) {
			String name = request.getParameter("name");
			int score = Integer.parseInt(request.getParameter("score"));
			
			int res = biz.insert(new ExamDto(0,name,score));
			
			if(res > 0) {
				request.setAttribute("list", biz.selectAll());
				RequestDispatcher dispatch = request.getRequestDispatcher("question03.jsp");
				dispatch.forward(request, response);
			}
			
		}else if(command.equals("q10")) {

			System.out.println("수고하셨습니다.");
			
			PrintWriter out = response.getWriter();
			out.println("<h1>수고하셨습니다.</h1>");

		}
	}

}
