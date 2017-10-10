//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_1.sce

clc;
clear;
L=2.5;
s=-1; //complex frequency , which is taken from the coefficient value of time in the given exponential term
Z=L*s;
printf("\n Impedence=%1.1f ohm \n",Z)
Y=1/Z;
printf("\n Admittance=%0.1f mho \n",Y)
//Voltage cannot be determined since it involves equation in the result
