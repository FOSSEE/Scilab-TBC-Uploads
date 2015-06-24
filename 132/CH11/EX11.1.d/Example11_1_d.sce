//Example 11.1 (d)
//Program to Calculate the Voltage across each Component of the given Circuit
clear;
clc ;
close ;
//Given Circuit Data
V=10; //V
C=300*10^(-12); //F
L=220*10^(-6); //H
R=20; //Ohms
//Calculation
fr=1/(2*%pi*sqrt(L*C));
I=V/R;
Xl=2*%pi*fr*L;
Vl=I*Xl;
Xc=1/(2*%pi*fr*C);
Vc=I*Xc;
Vr=I*R;
//Displaying The Results in Command Window
printf("\n\t Voltage across the Inductance, Vl = %f V .",Vl);
printf("\n\t Voltage across the Capacitance, Vc = %f V .",Vc);
printf("\n\t Voltage across the Resistance, Vr = %f V .",Vr);