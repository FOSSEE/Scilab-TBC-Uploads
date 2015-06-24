//Chapter 9
//Example 9_15
//Page 226

clear;clc;

f=50;
v=132*1e3;
d1=4;
d2=4;
d3=8;
r=1e-2;

deq=(d1*d2*d3)^(1/3);
printf("Deq = %.2f m \n\n", deq);
e0=8.854*1e-12;
c=2*%pi*e0/log(deq/r);
printf("Capacitance of each conductor to nuetral = %.4f uF/km \n\n", c*1e9);
cn=c*1e9*100;
printf("Capacitance/phase for 100km line = %.4f uF/km \n\n", cn);
ic=v/sqrt(3)*(2*%pi*f)*cn/1e6;
printf("Charging current per phase= %.2f A \n\n", ic);


