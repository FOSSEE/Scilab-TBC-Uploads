//Example 7.6
//Program to Calculate
//(a)Minimum Collector Current
//(b)Maximum Collector Current
clear;
clc ;
close ;
//Given Circuit Data
Vcc=20; //V
Rc=2*10^3; //Ohms
Rb=200*10^3; //Ohms
Beeta1=50;
Beeta2=200;
//Calculation CASE-1: Minimum Collector Current
Ibmin=Vcc/(Rb+Beeta1*Rc);
Icmin=Beeta1*Ibmin;
//Calculation CASE-2: Maximum Collector Current
Ibmax=Vcc/(Rb+Beeta2*Rc);
Icmax=Beeta2*Ibmax;
//Displaying The Results in Command Window
printf("\n\t The Minimum Collector Current Ic(min) = %f mA .",Icmin/10^(-3));
printf("\n\t The Maximum Collector Current Ic(max) = %f mA .",Icmax/10^(-3));