/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import entity.Productlist;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Minh PC
 */
public class ProductServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("ProductManagermentPU");
        EntityManager em = factory.createEntityManager();
        
        Query q2 = em.createNamedQuery("Productlist.findAll", Productlist.class);
        List<Productlist> allProduct = q2.getResultList();
        
        int categoryId = request.getParameter("categoryId") == null ? 0 : 
                Integer.valueOf(request.getParameter("categoryId"));
        if (categoryId == 0) {
            //select all
            request.setAttribute("productLists", allProduct);
        }else{
            //selecte products b categoryID
            List<Productlist> filteredProducts = (List<Productlist>)allProduct.stream()
                    .filter(p -> p.getId().getId() == categoryId)
                    .collect(Collectors.toList());
            request.setAttribute("productLists", filteredProducts);
        }
        //ProductList tag
        RequestDispatcher dispatcher2 = getServletContext().getRequestDispatcher("/product_list.jsp");
        dispatcher2.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    

}
