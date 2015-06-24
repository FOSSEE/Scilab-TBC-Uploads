//Chapter 2, Problem 14
clc;
V=12;               //voltage
R=40;               //resistance
t=2*60;             //time period
I=V/R;              //calculating current using Ohms law
P=V*I;              //calculating power
E=P*t;              //calculating energy 
printf("Current flowing in load = %f A\n\n\n",I);
printf("Power consumed = %f W\n\n\n",P);
printf("Energy dissipated = %f J",E);
