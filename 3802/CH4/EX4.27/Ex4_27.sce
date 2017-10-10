//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_27.sce.

clc;
clear;
l=4e3;
b=2*75e-2;
a=2.5e-2;
epsilon_not=8.854e-12;
C=(%pi*epsilon_not*l)/log(b/a);
printf("\n Capacitance of the transmission line=%1.4f micro farad",C*1e6)
