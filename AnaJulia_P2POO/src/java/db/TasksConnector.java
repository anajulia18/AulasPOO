/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.*;
import java.util.ArrayList;
import web.AnaJuliaDBListener;

/**
 *
 * @author Ana Julia
 */
public class TasksConnector {
    public static ArrayList<String> getTasks() throws Exception {
        ArrayList<String> list = new ArrayList<>();
        Connection con = AnaJuliaDBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from AnaJulia_tasks");
        while(rs.next()) {
            list.add(rs.getString("title"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    public static void addTask(String descritarefa) throws Exception {
        Connection con = AnaJuliaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into AnaJulia_tasks values('"+descritarefa+"')");
        stmt.close();
        con.close();
    }
    public static void removeTask(String descritarefa) throws Exception {
        Connection con = AnaJuliaDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from AnaJulia_tasks where title = '" + descritarefa +"'");
        stmt.close();
        con.close();
    }
}