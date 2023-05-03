/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package bankexamp;

import javax.ejb.Stateful;

/**
 *
 * @author Administrator
 */
@Stateful
public class BankTransact implements BankTransactLocal {

    int balance=10000;
    
    @Override
    public void deposit(int amount) {
        balance=balance+amount;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public int withdraw(int amount) {
         balance=balance-amount;
        return balance;
    }
    
}
