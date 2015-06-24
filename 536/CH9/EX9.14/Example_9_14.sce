clc;
clear;

printf("\n Example 9.14\n");

A=10; //Area of the surface
P_r=1000e3; //Power radiated
T1=1500; //First Temperature
T2=1600; //Second Temperatue
sigma=5.67e-8;

E=P_r/A; //The emissive Power
printf("\n The emissive Power when T=1500 K = %d kW",E*1e-3);
//From equation 9,118:
e=E/(sigma*T1^4);
printf("\n Emissivity when T=1500 K = %.3f",e);
E2=e*sigma*T2^4;
printf("\n The Emissive power when T=1600 K = %.1f kW",E2*1e-3); 