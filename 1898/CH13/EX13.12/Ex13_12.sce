clear all; clc;

disp("Scilab Code Ex 13.12 : ")

//Given:
L = 1600; //mm
K = 2;
l = 80; //mm
b = 40; //mm
e = 20; //mm
c = 40; //mm

//Calculations:
I1 = (1/12)*(l*b^3);
A = l*b;
r = sqrt(I1/A);
sl_ratio = (K*L)/(r);

//Eqn 13.26:
sigma_allow = (378125)/(sl_ratio^2);

I2 = (1/12)*(b*l^3);
coefficient = (1/A) + (e*c)/I2;
sigma_max = sigma_allow;
P = sigma_max/coefficient;
P = P/1000;

//Display:

printf('\n\nThe load that can be supported if the column is fixed at its base  = %1.2f kN',P);

//------------------------------------------------------------------------END-----------------------------------------------------------------------------------
