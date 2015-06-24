//Example 11.2
//Program to Calculate fr, Il, Ic, Line Current & Impedance of
//the Resonant Circuit at Resonance
clear;
clc ;
close ;
//Given Circuit Data
C=100*10^(-12); //F
L=100*10^(-6); //H
R=10; //Ohms
V=100; //V
//Calculation
fr=1/(2*%pi*sqrt(L*C));
Xl=2*%pi*fr*L;
Il=V/Xl;
Xc=1/(2*%pi*fr*C);
Ic=V/Xc;
Zp=L/(R*C);
I=V/Zp;
//Displaying The Results in Command Window
printf("\n\t The Calculated Values are :");
printf("\n\t fr= %f kHz.",fr/10^3);
printf("\n\t Il= %f A.",Il);
printf("\n\t Ic= %f A.",Ic);
printf("\n\t Zp= %f Ohms .",Zp);
printf("\n\t I= %f mA.",I/10^(-3));