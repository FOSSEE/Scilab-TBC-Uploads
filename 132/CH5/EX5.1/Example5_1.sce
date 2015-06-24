//Example 5.1
//Program to Calculate Collector and Base Currents
clear;
clc ;
close ;
//Given Circuit Data
alpha=0.98; //alpha(dc)
Ico=1*10^(-6); //Ampere
Ie=1*10^(-3); //Ampere
//Calculation
Ic=alpha*Ie+Ico; //Collector Current
Ib=Ie-Ic; //Base Current 
//Displaying The Results in Command Window
printf("\n\t The Collector Current is Ic= %f mA .",Ic/10^(-3));
printf("\n\t The Base Current is Ib= %f uA .",Ib/10^(-6));