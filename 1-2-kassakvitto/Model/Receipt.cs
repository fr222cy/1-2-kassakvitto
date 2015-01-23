using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_2_kassakvitto.Model
{
    public class Receipt
    {
          private double _subtotal;

          public double DiscountRate
          {
              get;

              private set;
          }
          public double MoneyOff
          {
              get;

              private set;
          }
          public double Total
          {
              get;

              private set;
          }

          public double Subtotal
          {
              get
              {
                  if(_subtotal < 1)
                  {
                      throw new ArgumentOutOfRangeException();
                  }
                  return _subtotal;
              }

              set
              {
                  _subtotal = value;
              }
          }


        public Receipt(double subtotal)
        {
                      
        }

        public void Calculate(double subtotal)
        {
           Subtotal = subtotal;  
           if (subtotal < 500)
           {
               DiscountRate = 0;
           }
           else if (subtotal < 1000)
           {
               DiscountRate = 0.05;
           }
           else if (subtotal < 5000)
           {
               DiscountRate = 0.10;
           }
           else
           {
               DiscountRate = 0.15;
           }

           MoneyOff = DiscountRate * Subtotal;
           Total = Subtotal - MoneyOff;

        }
    }
}