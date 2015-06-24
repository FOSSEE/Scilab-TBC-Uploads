//Chapter 15, Problem 2
clc;
f1=50;                      //frequency in hertz
L1=40e-3;                   //inductance
V=240;                      //voltage
V2=100;                      //voltage
f2=1000;                     //frequency in hertz
Xl=2*%pi*f1*L1;                 //inductive reactance
Xl2=2*%pi*f2*L1;                 //inductive reactance
I=V/Xl;                          //current 
I2=V2/Xl2;                          //current 
printf("(a) Inductive reactance, Xl = .2%f ohm \nCurrent I = %.2f A\n\n",Xl,I);
printf("(b) Inductive reactance, Xl = %.1f ohm \nCurrent I = %.3f A\n\n",Xl2,I2);
