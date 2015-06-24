clc;
clear;

Idc=2; //direct current in mA 
q=1.6*10^(-19); // electron charge
B=3; //bandwidth in MHz

Isquare=2*Idc*10^(-3)*q*B*10^6;
I=sqrt(Isquare); //shot noise component

disp("the shot noise component(in amperes) is");
disp(I);
 
