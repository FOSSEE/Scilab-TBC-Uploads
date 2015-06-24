//Example 7.11
//Program to Calculate DC Bias Voltages and Currents 
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
Vb=(R2/(R1+R2))*Vcc;
Ve=Vb-Vbe;
Ie=Ve/Re;
Ic=Ie;
Vc=Vcc-Ic*Rc;
Vce=Vc-Ve;
//Displaying The Results in Command Window
printf("The Different Parameters are :");
printf("\n\t Vb = %f V .",Vb);
printf("\n\t Ve = %f V .",Ve);
printf("\n\t Ie = %f mA .",Ie/10^(-3));
printf("\n\t Ic = %f mA .",Ic/10^(-3));
printf("\n\t Vc = %f V .",Vc);
printf("\n\t Vce = %f V .",Vce);