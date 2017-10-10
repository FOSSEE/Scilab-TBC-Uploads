//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_11.sce.

clc;
clear;
q=1e-6;
l=2e-2;
E=1e5;

printf("\n (a)")
theta=90;
p=l*q;
T_max=p*E*sind(theta);
printf("\n   The maximum torque=%1.1f*10^-3 Nm\n",T_max*1e3)

printf("\n (b)")
U_180=-p*E*cosd(180);                         //U is the potential energy for theta=180 degree and 0 degree
U_0=-p*E*cosd(0);
W=(U_180)-(U_0);
printf("\n   The work done=%1.1f*10^-3 J",W*1e3)

