// 22-3
clc;
clear;
//Power P
P=40*10^3 //Watt
n1=100; //rpm
n2=400; //rpm
//Speed factor Ks
Ks=0.9+0.001*n2;
//Clutch power Pc
Pc=P*n2/(n1*Ks)*10^-3;

  // printing data in scilab o/p window
printf("\nThe Speed factor is %0.1f ",Ks);
printf("\nThe clutch poweris %0.0f KW",Pc);
