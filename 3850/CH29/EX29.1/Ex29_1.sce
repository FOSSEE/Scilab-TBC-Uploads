
//To Calculate the Electric Field at a point

//Example 29.1

clear;

clc;

AC=5*10^-2;//The length of AC in metres

PC=12*10^-2;//The length of PC in metres

AP=sqrt(AC^2+PC^2);//Length of AP by Pythagoras Theorem

Theta=acos(AC/AP);//Measure of angle PAC

Q1=10*10^-6;//First Charge in Coloumbs

Q2=-10*10^-6;//Second Charge in Coloumbs

K=9*10^9;//Value of constant (1/(4*pi*ε0))

EA=Q1*K/AP^2;//Electric Field at P due to First Charge

EB=-Q2*K/AP^2;//Electric Field at P due to First Charge

E=(EA+EB)*cos(Theta);//Magnitude of resultant Electric Field

printf("elctric field at point P=%.1f*10^6 N/C",E/10^6);
