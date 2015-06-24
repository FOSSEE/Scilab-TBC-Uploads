//Example 7.10
//Program to Calculate Rb in the Biasing Circuit
clear;
clc ;
close ;
//Given Circuit Data
Vcc=9; //V
Vce=3; //V
Re=500; //Ohms
Ic=8*10^(-3); //A
Beeta=80;
//Calculation
Ib=Ic/Beeta;
Rb=(Vcc-(Beeta+1)*Ib*Re)/Ib;
//Displaying The Results in Command Window
printf("The Base Resistance is :");
printf("\n\t Rb = %f kOhms .",Rb/10^3);