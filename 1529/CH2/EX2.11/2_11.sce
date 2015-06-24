//Chapter 2, Problem 11
clc;
V=240;              //voltage
R=30;               //resistance
I=V/R;              //calculating current using Ohms law
P=I*V;              //calculating power
printf("Current = %d A\n\n\n",I);
printf("Power = %f kW",P/1000);
