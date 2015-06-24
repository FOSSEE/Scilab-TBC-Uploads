//Example 7.12
//Program to Calculate Re and Vce of the given Circuit Specifications
clear;
clc ;
close ;
//Given Circuit Data
Vcc=15; //V
R1=200; //Ohms
R2=100; //Ohms
Rc=20; //Ohms
Ic=100*10^(-3); //A
//Calculation
Ie=Ic;
Vb=(R2/(R1+R2))*Vcc;
Ve=Vb;// Neglecting Vbe
Re=Ve/Ie;
Vce=Vcc-(Rc+Re)*Ic;
//Displaying The Results in Command Window
printf("\n\t The Emitter Resistance is Re = %f Ohms .",Re);
printf("\n\t The Collector to Emitter Voltage is Vce = %f V.",Vce);