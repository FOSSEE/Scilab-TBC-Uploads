//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_1.sce.

clc;
clear;
Vc=60;
V_not=120;
t=20;
C=10e-6;
R=-t/(C*log(Vc/V_not));
printf("\n The  value of resistance=%1.3f mega_ohm",R*1e-6)



