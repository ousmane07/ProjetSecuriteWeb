package sn.isi.securiteweb.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sn.isi.securiteweb.dao.impl.ComptesDaoImpl;
import sn.isi.securiteweb.dao.impl.UserDaoImpl;
import sn.isi.securiteweb.entities.Compte;
import sn.isi.securiteweb.entities.User;

import java.io.IOException;

@WebServlet(name = "Compte", value = "/compte")
public class CompteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/addcompte.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ComptesDaoImpl comptesDaoImpl = new ComptesDaoImpl();


        String username = request.getParameter("username");
        String password = request.getParameter("password");



        if (username.equals("") || password.equals("")){
            request.setAttribute("error", "veuillez renseigner tous les champs");
            String View_PATH = null;
            this.getServletContext().getRequestDispatcher(View_PATH + "addcompte.jsp");
        }else{

            ComptesDaoImpl comptesDaoImp = new ComptesDaoImpl();

            Compte compte = new Compte();
            compte.setUsername(username);
            compte.setPassword(password);

            int result = comptesDaoImp.add(compte);
            if (result == 1){
                request.setAttribute("success", "crée");
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/registercompte-success.jsp");
                dispatcher.forward(request, response);
            }else {
                request.setAttribute("error", "une erreur");
            }

        }
        response.sendRedirect("/register-success.jsp");

    }

    }

