//Chapter 4, Problem 2
clc;
r=0.02;                           //Internal resistance in ohm
emf=2.0;                            //e.m.f
I1=5;                               // Current in ampere
I2=50;
V1=emf-(I1*r);                      //Calculating Voltage
V2=emf-(I2*r);
printf("Terminal p.d when 5A current = %f V\n\n\n",V1);
printf("Terminal p.d when 50A current = %f V\n\n\n",V2);
