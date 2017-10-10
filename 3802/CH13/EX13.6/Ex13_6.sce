//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_6.sce

clc;
clear;
R=20;
L=0.5;
V=100;
R_S=10;
t1=0;
t2=50e-3;
Req=R+R_S;
T1=L/Req;//Time constant1
T2=L/R;//Time constant2   
I=V/Req;
printf("\n Steady state current=%1.3f A \n",I)
i=I*exp(-t2/T2);
printf("\n The value of current after 50 ms=%0.2f A \n",i)


