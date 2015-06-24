//Chapter 2, Problem 19
clc;
P1=3000;                //power in watts
P2=150;                 //power in watts
t1=20;                  //time in hours
t2=30;                  //time in hours
n1=2;                   //no of fires
n2=6;                   //no of light
m=14;                   //cost per unit
E1=P1*t1;
w1=n1*E1;
E2=P2*t2;
w2=n2*E2;
T=w1+w2;
c=m*(T/1000);
printf("\nIf the cost of electricity is 14 p per unit\n")
printf("\n the weekly cost of electricity to the business = %f p",c);
printf("\n\t\t\t\t\t\t= %.2f euro",c/100);
