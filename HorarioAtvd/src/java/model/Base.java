/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;
import java.util.ArrayList;

/**
 *
 * @author Ana Julia
 */
public class Base {
  
    private static ArrayList<Contato> contatoList;
    public static  ArrayList<Contato> getContatoList(){
        if(contatoList == null){
            contatoList = new ArrayList<>();
            contatoList.add(new Contato("Ana Julia", "13999999999",new Data (13,12,2001)));
          
        }
        return contatoList;
    }
    
}

