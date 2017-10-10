//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_14.sce

clc;
clear;
//From Ex_13.2 
Id=300e-3;
t=6e-3;
V=12;
R=60;
Ir=V/R;
Ic1=0.15*exp(-125*t); // it Obtain, after the simplification of loop equation
I=Ir+Ic1;
printf("\n Current drawn from the load after 6 ms=%3.0f mA \n",I*1e3)
Ic2=Id-Ir;
t=log(Ic2/0.15)/-125;
printf("\n The time when current drawn from the source is 0.3 A=%1.3f ms \n",t*1e3)


