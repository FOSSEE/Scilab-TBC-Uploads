//Example 7.5
//Program to Calculate
//(a)Ie
//(b)Vc
clear;
clc ;
close ;
//Given Circuit Data
Vcc=10; //V
Rc=500; //Ohms
Rb=500*10^3; //Ohms
Beeta=100;
//Calculation
Ib=Vcc/(Rb+Beeta*Rc);
Ic=Beeta*Ib;
Ie=Ic;
Vce=Vcc-Ic*Rc;
Vc=Vce;
//Displaying The Results in Command Window
printf("The Different Parameters are :");
printf("\n\t Ie = %f mA .",Ie/10^(-3));
printf("\n\t Vc = %f V .",Vc);