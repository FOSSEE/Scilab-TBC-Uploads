//page no. 36
//Example no 1-18
clc;
clear;

disp('Solution (i) is ');
x=620// difference in particle momentum In nm
h=6.63*10^-34// planks constant In J/s
//p=h/(4*%pi*x);
//m*v=h/(4*%pi*x);
m=9.11*10^-31 //In kg // mass of electron
v=h /(4*%pi* x *10^-9*m);// electron velocity
printf("\n The uncertanity in electron velocity is %0.0f m/s  \n",v);// result
