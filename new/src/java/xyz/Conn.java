/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xyz;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
public class Conn {
    public Connection con;
    public Conn(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con= DriverManager.getConnection("jdbc:derby://localhost:1527/customer");
            System.out.println("Connection Successfull");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    public static void main(String args[]){
        new Conn();  
    }
}