//Example 8.3 (c)
//Program to find the Q Point of the Amplifier
clear;
clc ;
close ;
//Given Circuit Data
Vcc=15; //V
R1=75*10^3; //Ohms
R2=7.5*10^3; //Ohms
Rc=4.7*10^3; //Ohms
Re=1.2*10^3; //Ohms
//Calculation
Vb=Vcc*R2/(R1+R2);
Ve=Vb;
Ie=Ve/Re;
Vce=Vcc-(Rc+Re)*Ie;
//Displaying The Results in Command Window
printf("\n\t The Different Parameters of the Amplifier are Ie = %f mA and Vce = %f V .",Ie/10^(-3),Vce);