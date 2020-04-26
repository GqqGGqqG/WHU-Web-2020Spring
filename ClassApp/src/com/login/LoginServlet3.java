package com.login;
import com.database.login.checkLogin;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menglanyingfei on 2018/1/12.
 */
@WebServlet(name = "LoginServlet3", value = "/LoginServlet3")
public class LoginServlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ����
        request.setCharacterEncoding("utf-8");
        // ��ȡ�������
        /*
            �õ�ҳ�洫�������ֶ��������֤��, ����֤��Ҫ������ͼƬ�ϵ�
            �ı���֤��Ƚ�, �����ͬ, ��֤������ɹ�!
         */
        String imageText = request.getParameter("image");
        // ͼƬ����֤��
        String text = (String) request.getSession().getAttribute("text");

        if (!text.equalsIgnoreCase(imageText)) {
            request.setAttribute("imageMess", "��֤���������!");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

        // ��ȡ�û���������
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String checkRes = checkLogin.checkWith(username, password);
        
        if (checkRes!=null) {
            // ���û���Ϣ���浽session��
            request.getSession().setAttribute("username", username);

            // ʹ��cookieʵ�ֻ�д�û���
            Cookie cookie = new Cookie("username", username);
            cookie.setMaxAge(60 * 60);
            // ͨ����Ӧͷ����cookie
            response.addCookie(cookie);
            // �ض����¼�ɹ�����
            response.sendRedirect(request.getContextPath() + "/studentMain.jsp");
            //response.sendRedirect(request.getContextPath() + "/jsp/success2.jsp");
        } else {
            request.setAttribute("error", "�û������������!");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
