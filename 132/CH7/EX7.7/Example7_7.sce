//Example 7.7
//Program to Calculate
//(a)Ib
//(b)Ic
//(c)Ie
clear;
clc ;
close ;
//Given Circuit Data
Vcc=10; //V
Rc=2*10^3; //Ohms
Rb=1*10^6; //Ohms
Re=1*10^3; //Ohms
Beeta=100;
//Calculation
Ib=Vcc/(Rb+(Beeta+1)*Re);
Ic=Beeta*Ib;
Ie=Ic+Ib;
//Displaying The Results in Command Window
printf("\n\t The Collector Current Ic = %f mA .",Ic/10^(-3));
printf("\n\t The Base Current Ib = %f uA .",Ib/10^(-6));
printf("\n\t The Emitter Current Ie = %f mA .",Ie/10^(-3));