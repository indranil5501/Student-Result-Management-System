/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;
import java.sql.*;
/**
 *
 * @author indra
 */

public class ConnectionProvider{
    public static Connection getCon()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhosl:3306/project1","root","asdfghjkl123");
            return con;
        }catch(Exception e){
            System.out.println(e);
            return null;
            
        }
    }
    
}
