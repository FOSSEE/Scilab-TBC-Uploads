//Example 2.4
//Program to Obtain Output Voltage Vo from Given A.C. Equivalent of an Amplifier using a Transistor
clear;
clc ;
close ;
//Given Circuit Data
//Input Side
Vs=10*10^(-3);//i.e. 10 mV
Rs=1*10^3;//i.e. 1 kOhms
//Output Side
Ro1=20*10^3;//i.e. 20 kOhms
Ro2=2*10^3;//i.e. 2 kOhms
//Calculation
i=Vs/Rs;//Input Current
Io=100*i;//Output Current
Il=Io*Ro1/(Ro1+Ro2);//Using Current Divider Rule
Vo=Il*Ro2;//Output Volatge
//Displaying The Results in Command Window
printf("\n\t The Output Voltage Vo = %f Volts.",Vo);