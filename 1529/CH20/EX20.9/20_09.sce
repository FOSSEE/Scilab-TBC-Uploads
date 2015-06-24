//Chapter 20, Problem 9
clc;
P=5000;                     //power
Vl=400;                     //line voltage
Il=8.6;                     //line current
pf=P/(sqrt(3)*Vl*Il);       //power factor
printf("Power factor = %.3f ",pf);
