//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_5.sce

clc;
clear;
V=100;
R=2;
L=10;
t=8;
T=L/R;
printf("\n Time constant=%d sec \n",T)
del=R/L;
printf("\n Damping ratio=%1.1f \n",del)
I=(V/R)*(1-exp(-t/T));
printf("\n The value of current of after 8 seconds of switching=%2.1f A \n",I)



