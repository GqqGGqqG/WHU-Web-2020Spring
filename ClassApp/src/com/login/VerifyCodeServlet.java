package com.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * ��������ͼƬ��֤��
 * Created by menglanyingfei on 2018/1/12.
 */
@WebServlet(name = "VerifyCodeServlet", value = "/VerifyCodeServlet")
public class VerifyCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //��������
        VerifyCode vc = new VerifyCode();
        //��ȡͼƬ����
        BufferedImage bi = vc.getImage();
        //���ͼƬ���ı�����
        String text = vc.getText();
        // ��ϵͳ���ɵ��ı����ݱ��浽session��
        request.getSession().setAttribute("text", text);
        //����������ͼƬ
        vc.output(bi, response.getOutputStream());

    }
}