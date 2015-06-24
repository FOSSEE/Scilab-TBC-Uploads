//Example 11.3
//Program to Calculate Impedance, Q and Bandwidth of the 
//Resonant Circuit 
clear;
clc ;
close ;
//Given Circuit Data
C=100*10^(-12); //F
L=150*10^(-6); //H
R=15; //Ohms
//Calculation
fr=1/(2*%pi*sqrt(L*C));
Zp=L/(R*C);
Q=2*%pi*fr*L/R;
df=fr/Q; //Bandwidth
//Displaying The Results in Command Window
printf("\n\t The Calculated Values are :");
printf("\n\t Impedance, Zp= %f kOhms.",Zp/10^3);
printf("\n\t Quality Factor, Q= %f .",Q);
printf("\n\t Bandwidth, df= %f kHz .",df/10^3);