//Chapter 15, Problem 27
clc;
pf=0.8;                     //power factor
phi=acos(0.8);
VI=200e3;                   //power
P=VI*pf; 
Q=VI*sin(phi);                  //reactive power
printf("Power output P = %d kW\n\n",P/1000);
printf("Reactive power Q = %d Kvar",Q/1000);
