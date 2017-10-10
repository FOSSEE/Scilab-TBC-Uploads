//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_3(b).sce.

clc;
clear;
R=1;
L=1;
C=0.1;
//case (b)
s=0;
//Z=R+(L*s)+(1/(C*s))
Z=0;  //Z=s/(s^2+s+10)
//voltage across the resistancce and inductance are zero

Vc=100/(s^2+s+10);//simplified form of (10s/(s^2+s+10))/(0.1s)
printf("\n Voltage across the capacitance=%d volt",Vc)
