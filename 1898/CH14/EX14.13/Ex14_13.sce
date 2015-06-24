clear all; clc;

disp("Scilab Code Ex 14.13 : ")

//Given:
del_T = 60; //degree celcius
alpha = 12*10^-6; //per degree celcius
E = 200*10^6; //kN/m^2
A = 250*10^-6; //m^2
L = 4; //m

//Virtual Work Equation:
n = 1.155; //kN
N = -12; //kN

del_bh = (n*N*L)/(A*E) + (n*alpha*del_T*L);
del_bh = del_bh*1000;

//Display:

printf('\n\nThe horizontal displacement of joint B of the truss   = %1.2f mm',del_bh);

//---------------------------------------------------------------------END--------------------------------------------------------------------------------------------
