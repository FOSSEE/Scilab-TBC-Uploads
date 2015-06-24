//Chapter 20, Problem 6
clc;
Il=15;                          //line current
Vl=415;                         //3 phase supply
f=50;                           //supply frequency
Ip=Il/sqrt(3);                  //phase current
Xc=Vl/Ip;                       //capacitive reactance
C=1/(2*%pi*f*Xc);               //capacitance 
printf("Capacitance = %.3f uF",C*10^6);
