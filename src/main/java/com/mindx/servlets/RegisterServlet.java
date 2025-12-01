package com.mindx.servlets;

import com.mindx.model.User;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@WebServlet(name="RegisterServlet", urlPatterns={"/register"})
public class RegisterServlet extends HttpServlet {

    private Map<String, User> getUserStore(ServletContext ctx) {
        Object o = ctx.getAttribute("USER_STORE");
        if (o == null) {
            Map<String, User> store = new ConcurrentHashMap<>();
            ctx.setAttribute("USER_STORE", store);
            return store;
        }
        return (Map<String, User>) o;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String fullname = req.getParameter("fullname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String matric = req.getParameter("matric");
        String password = req.getParameter("password");
        String confirm = req.getParameter("confirmPassword");


        if (fullname == null || username == null || email == null ||
            matric == null || password == null ||
            fullname.isBlank() || username.isBlank() || email.isBlank() ||
            matric.isBlank() || password.isBlank()) {

            req.setAttribute("error", "Please fill all required fields.");
            req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
            return;
        }

        if (!password.equals(confirm)) {
            req.setAttribute("error", "Passwords do not match.");
            req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
            return;
        }

        Map<String, User> users = getUserStore(getServletContext());


        if (users.containsKey(username.toLowerCase())) {
            req.setAttribute("error", "Username already exists. Choose another.");
            req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
            return;
        }


        boolean matricExists = users.values().stream()
                .anyMatch(u -> u.getMatric().equalsIgnoreCase(matric));

        if (matricExists) {
            req.setAttribute("error", "Matric Number already registered.");
            req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
            return;
        }


        User u = new User(username.toLowerCase(), password, fullname, email, matric);
        users.put(username.toLowerCase(), u);


        HttpSession session = req.getSession(true);
        session.setAttribute("user", username.toLowerCase());
        session.setAttribute("profile_fullname", fullname);
        session.setAttribute("profile_email", email);
        session.setAttribute("profile_matric", matric);


        resp.sendRedirect(req.getContextPath() + "/jsp/profile.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
    }
}
