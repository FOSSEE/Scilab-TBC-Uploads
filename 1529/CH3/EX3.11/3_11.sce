//Chapter 3, Problem 11
clc;
R0=10;                     //resistance at 20◦C
T=20;                       //tempreture in ◦C 
T1=100;                     //tempreture rises
a=0.004;                   //temperature coefficient of resistance at 0◦C
Rt=R0*(1+(a*(T1-T)));           //calculating resistance at 100◦C
printf("Resistance at 100◦C = %f ohm",Rt);
