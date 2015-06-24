//Example 7.14
//Program to Calculate 
//(a)Ic
//(b)Vce
clear;
clc ;
close ;
//Given Circuit Data
Vcc=12; //V
Vee=15; //V
Rc=5*10^3; //Ohms
Re=10*10^3; //Ohms
Rb=10*10^3; //Ohms
Beeta=100;
//Calculation
Ie=Vee/Re;
Ic=Ie;
Vce=Vcc-Ic*Rc;
//Displaying The Results in Command Window
printf("The Parameters are :");
printf("\n\t Ic = %f mA .",Ic/10^(-3));
printf("\n\t Vce = %f V .",Vce);