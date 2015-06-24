//Example 7.4 (b)
//Program to Calculate Rb in the Biasing Circuit
clear;
clc ;
close ;
//Given Circuit Data
Icbo=10*10^(-6); //A
Ib=47.9*10^(-6); //A
Beeta=25;
//Calculation
Ic=Beeta*Ib+(Beeta+1)*Icbo;
//Displaying The Results in Command Window
printf("The Collector Current is :");
printf("\n\t Ic = %f mA .",Ic/10^(-3));