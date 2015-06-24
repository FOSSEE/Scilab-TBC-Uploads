//Chapter 2, Problem 16
clc;
V=240;              //supply voltage
I=13;               //current
t=30;               //time in hours
P=V*I;              //power
E=P*t;              //energy
printf("Energy used per week = %.1f kWh\n\n",E/1000);
printf("hence weekly cost of electricity = %.2f £ euro",(E*12.5/1000)/100);
