clc();
clear;
//To determine the uncertainity in determining the position of this electron
m=9.1*10^-31;                         //mass of electron
v=6*10^3;                             //speed of electron
p=m*v;                                //uncertainity in momentum in kg.m/s
h=6.626*10^-34;                       //plancks constant
deltap=0.00005*p;                     //uncertainity in p is 0.00005 of p
deltax=(h/(4*%pi*deltap))*10^3       //uncertainity in position
printf("The uncertainity in position is %f mm",deltax);