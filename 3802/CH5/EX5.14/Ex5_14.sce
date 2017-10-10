//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_14.sce.

clc;
clear;
V=200;
i=0.2;
T=3e-3;
t=3e-3;

R=(V/i)*(1-exp(-t/T));
I=V/R;
printf("\n The final steady state value of current=%1.3f A \n",I)

L=R*T;
printf("\n Inductance=%1.3f H \n",L)
printf("\n Resistance=%3.0f ohm \n",R)

E=(L*I^2)/2;
printf("\n Energy stored when current reached its final value=%1.3f J",E)
