//Chapter 3, Problem 10
clc;
R0=1000;                     //resistance at 0◦C
T=80;                       //tempreture in ◦C 
a=-0.0005;                   //temperature coefficient of resistance at 0◦C
Rt=R0*(1+(a*T));           //calculating resistance at 80◦C
printf("Resistance at 80◦C = %f ohm",Rt);
