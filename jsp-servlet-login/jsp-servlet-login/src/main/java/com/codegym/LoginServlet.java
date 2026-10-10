package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang=\"en\">");
            out.println("<head><meta charset=\"UTF-8\"><title>Login Result</title></head>");
            out.println("<body style=\"font-family: Arial, sans-serif; text-align: center; margin-top: 100px;\">");

            if ("admin".equals(username) && "admin".equals(password)) {
                out.println("<h1 style=\"color: green;\">Welcome admin to website</h1>");
            } else {
                out.println("<h1 style=\"color: red;\">Login Error</h1>");
            }

            out.println("<p><a href=\"index.jsp\">Go back</a></p>");
            out.println("</body></html>");
        }
    }
}
