clear all; clc;

disp("Scilab Code Ex 8.2 : ")

//Given:
P = 15000; //N
a = 40; //mm
b = 100; //mm

//Stress Components:

//Normal Force:
A = a*b;
sigma = P/A;

//Bending Moment:
I = (a*b^3)/12; //I = (1/12)*bh^3
M = P*(b/2);(b/2);
c = b/2;
sigma_max =(M*c)/I;

//Superposition:
x = ((sigma_max-sigma)*b)/((sigma_max+sigma)+(sigma_max-sigma));
sigma_b = (sigma_max-sigma);
sigma_c = (sigma_max + sigma);

//Display:

printf("\n\nThe state of stress at B    = %1.1f MPa (tensile)',sigma_b);
printf('\nThe state of stress at C    = %1.1f MPa (compressive)',sigma_c);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------

 
