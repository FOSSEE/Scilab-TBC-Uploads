//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex15_3.sce

clc;
clear;
M.S.C.P=1000;
h=2.8;
x=2.5;
E=(M.S.C.P*h)/(h^2+x^2)^(3/2);
printf("\n Illumination=%2.2f lux \n",E)

