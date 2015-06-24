//Chapter 3, Problem 9
clc;
Rt=27;              //resistance at 35◦C
a0=0.0038;          //temperature coefficient of resistance at 0◦C
T=35;               //tempreture
R0=Rt/(1+(a0*T));   //calculating resistance at 0◦C
printf("Resistance at 0 deg = %f ohm",R0);
