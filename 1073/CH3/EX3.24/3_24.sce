clc;
clear;
//Example 3.24
//1.For initial conditions:
T=360;           //[K]
T1=280;         //[K]
T2=320;         //[K]
dT1=T-T1;       //[K]
dT2=T-T2;       //[K]
//Q1=m1_dot*Cp1*(T2-T1)
Cp1=4.187           //Heat capacity 
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
m1_by_UA=dTlm/(Cp1*(T2-T1)) 
//For final conditions :
//m2_dot=m1_dot
//U2=U1
//A2=5*A1
deff('x=f(t)','x=m1_by_UA*Cp1*(t-T1)-5*((dT1-(T-t))/log(dT1/(T-t)))')
T=fsolve(350.5,f)
printf("\nOutlet temperature of water is %f K\n",T);
