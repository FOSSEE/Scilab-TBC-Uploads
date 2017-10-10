//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_20(c).sce.

clc;
clear;
Ra=35;
J=6e-5;
K=0.325;

T=(J*Ra)/K^2;
t=-T*log(1-0.98);           //(1-0.98)=0.02
printf("\n  Time for the motor to run with 2 percentage of its final speed=%1.3f sec \n",t)
