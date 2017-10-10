//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex11_4.sce

clc;
clear;
P=200;
V=100;
N=1500;
Ka=525;
Ra=2;
Pl=15;

Pd=P+Pl;
n=N/60;
Td=Pd/(2*%pi*n);
//n=(Va/(Ka*phi_p))-(2*%pi*Ra*Td/(Ka*phi_p)^2);
//from this equation we get phi^2-o-0.0076*phi+2.5e-6=0;
a=1;
b=-0.0076;//a,b,c are coefficient values taken from the above second order equation
c=2.5e-6;
phi_p=(-b+sqrt(b^2-(4*a*c)))/(2*a);
printf("\n The magnetic flux=%1.3f mWb \n",phi_p*1000)
