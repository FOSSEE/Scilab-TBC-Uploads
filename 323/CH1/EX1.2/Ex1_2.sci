//Chapter 1,Example 1.2,Pg 1.10
clc;
l=2000*10^3 //length of the cable in metres
d=0.7*10^-2 //diameter of the cable in metres
p=(1/58)*10^-6 //ohms per m for 1sq mm cross sectional area
A=(%pi*d^2)/4
R=(p*l)/A
printf("\n Resistance = %.2f ohms \n",R)

