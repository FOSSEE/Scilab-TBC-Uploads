//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_18.sce.
clc;
clear;
Q1=3e-6;
Q2=2e-6;
a=9e9;             //a=(1/(4*%pi*epsilon_not))

x=1;y=2;z=3;

//V=-a*((Q1/(sqrt((x-1)^2+(y-1)^2+(z-1)^2)))+(Q2/(sqrt((x-1)^2+(y-3)^2+(z-2)^2))));

dV_dx=-a*((Q1*(x-1)/((x-1)^2+(y-1)^2+(z-1)^2)^(3/2))+(Q2*(x-1)/((x-1)^2+(y-3)^2+(z-2)^2)^(3/2)));   //differentietion of potential with respect to x

dV_dy=-a*((Q1*(y-1)/((x-1)^2+(y-1)^2+(z-1)^2)^(3/2))+(Q2*(y-3)/((x-1)^2+(y-3)^2+(z-2)^2)^(3/2)));   //differentietion of potential with respect to y

dV_dz=-a*((Q1*(z-1)/((x-1)^2+(y-1)^2+(z-1)^2)^(3/2))+(Q2*(z-2)/((x-1)^2+(y-3)^2+(z-2)^2)^(3/2)));     //differentietion of potential with respect to z

//E=-(del_V)
printf("\n E=(%gi)+(%4.0fj)+(%5.0fk) V/m",-dV_dx,-dV_dy,-dV_dz)
