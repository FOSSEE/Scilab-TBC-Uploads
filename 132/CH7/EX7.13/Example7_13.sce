//Example 7.13
///Program to Calculate Ic and Vce of the given Circuit Specifications
clear;
clc ;
close ;
//Given Circuit Data
Vcc=12; //V
Vbe=0.3; //V
R1=40*10^3; //Ohms
R2=5*10^3; //Ohms
Re=1*10^3; //Ohms
Rc=5*10^3; //Ohms
Beeta=60;
//Calculation
Vth=(R2/(R1+R2))*Vcc;
Rth=R1*R2/(R1+R2);
Ib=(Vth-Vbe)/(Rth+Beeta*Re);
Ic=Beeta*Ib;
Vce=Vcc-Ic*(Rc+Re);
//Displaying The Results in Command Window
printf("The Different Parameters are :");
printf("\n\t Ic = %f mA .",Ic/10^(-3));
printf("\n\t Vce = %f V .",Vce);