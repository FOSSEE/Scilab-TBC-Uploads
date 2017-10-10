//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex11_3.sce

clc;
clear;
Ra=0.8;
Va=40;
Td=1.2;
Ka=600;
phi_p=0.004;

printf("\n (a)")
n=(Va/(Ka*phi_p))-(2*%pi*Ra*Td/(Ka*phi_p)^2);
N=n*60;
printf("\n  The speed of the motor=%d r.p.m \n",N)
//The book answer for part(a) is wrong value

printf("\n (b)")
n=0;
Td=(Va*Ka*phi_p)/(2*%pi*Ra);
printf("\n  The blocked rotor torque=%d Nm \n",Td)
