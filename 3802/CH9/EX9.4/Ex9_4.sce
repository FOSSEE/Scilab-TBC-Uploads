//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_4.sce.

clc;
clear;
//From figure 9.26
EG=25;
P=45e3;
E=220;
I=P/(E*sqrt(3));
Xl=EG/(sqrt(3)*I);
printf("\n Leakage reactance=%1.4f ohm \n",Xl)

//From fig 9.26 armature reaction amphere is equal to the field current
If=1.925;
printf("\n Field amphere current=%1.3f A \n",If)
