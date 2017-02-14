/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;
import java.util.*;
import java.util.HashMap;
/**
 *
 * @author Suraj
 */
public class Cart {
    
    
    HashMap<String, Integer> cartItems;
    public Cart(){
     cartItems = new HashMap<>();
    
      
    }
    public HashMap getCartItems(){
        return cartItems;
    }
    public void order(String moviename, int movieprice){
        cartItems.put(moviename, movieprice);
    }
    public void total(String movieprice){
        //cartItems.put (movieprice);
    }
      
    
    public void deleteFromCart(String itemId){
        cartItems.remove(itemId);
    }
     
}
    
