//Chapter 2
//page no 55
//given
clc;
clear ;
NA=10^22;           //acceptors/m*m*m
ND=1.2*10^21;       //donors/m*m*m
T=298;             //in Kelvin
k=1.38*10^-23;      //Boltzman Constant in J/K
q=1.6*10^-19;      //  charge of electron  in C
Vt=k*T/q;      //thermal voltage  in V
printf("\n VT is  %0.1f mV \n",Vt*1000);     // result
n_i=2.4*10^17;      //carrier/m^3 for silicon 
VB=Vt*log(NA*ND/n_i^2);// barrier voltage in V
printf("\n Barrier Voltage of Silicon VB is  %0.0f mV ",VB*1000);     //result
