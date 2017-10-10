//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_7.sce

clc;
clear;
R=10;
L=0.1;
t1=0.01;
omega=100*%pi;
phi=omega*t1;
t=(asin(1)+atan((omega*L)/R))/omega;
Imax=((-omega*L*exp(-R*t/L))/(R^2+(omega*L)^2))-(sin((100*%pi*t)-(atan(omega*L/R)))/sqrt(R^2+(omega*L)^2));
t=0;
Iss=((-omega*L*exp(-R*t/L))/(R^2+(omega*L)^2))-(sind((100*%pi*t)-(atan(omega*L/R)))/sqrt(R^2+(omega*L)^2));
a=Imax/Iss;
printf("\n Ratio of maximum value of current to steady state value of current=%1.2f \n",a)
//Answer vary dueto round off error in 't' calculation



