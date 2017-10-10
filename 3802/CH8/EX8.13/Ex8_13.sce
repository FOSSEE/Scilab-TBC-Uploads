//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_13.sce.

clc;
clear;
Il=2;
Z=864;
If=0.6;
V=220;
Ra=0.8;
a=2;
p=2;
phi=5.4e-3;
T=25;

Ia=Il-If;
E1=V-(Ia*Ra);
n1=(E1*a)/(2*Z*phi*p);
N1=n1*60;
printf("\n  Motor speed at no load=%4.0f r.p.m \n",N1)

Ia=(T*a*%pi)/(p*phi*Z);
Il=Ia+If;
printf("\n  Motor current at full load torque=%2.3f A \n",Il)
E2=V-(Ia*Ra);
n2=(E2*a)/(2*Z*phi*p);
N2=n2*60;
printf("\n  Motor speed at full load=%4.0f r.p.m \n",N2)

speed_reg=((N1-N2)/N2)*100;
printf("\n  Speed regulation=%1.3f percentage",speed_reg)
//There is a error in the regulation calculation in the book 
//The book answer 9.95% is wrong
