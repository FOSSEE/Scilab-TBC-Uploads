//Chapter 7
//page no 214
//given
clc;
clear all;
//Vc=Vdin-Vdinq
Vc=5;           //in mV  Vdin-Vdinq=Vc
Irset =1.8*10^-3*(Vc*10^-3);     //in A
printf("\n Irset %0.0f microA",Irset*10^6) ;
Vs=1.5;              //Voltage at signal level below Vcc in V
Radj=Vs/Irset;                 //in Ohm
printf("\n Radj %0.0f kohm",Radj*10^-3) ;

