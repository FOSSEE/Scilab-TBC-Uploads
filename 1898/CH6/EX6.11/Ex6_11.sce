clear all; clc;

disp("Scilab Code Ex 6.11 : ")

//Given:
l = 4.5; //m
R1 = 1.5; //kN
R2 = 3; //kN
uvl = 2; //kN/m

//Shear diagram:
x = sqrt((2*R1*l)/(uvl));
M = (R1*x) - (0.5*uvl*x^3)/(3*l);

//Display:

    
 printf('\n\nV becomes zero at x = %1.1fm',x);
 printf('\nThe magnitude of the maximum moment = %1.1f kNm',M);
     
//-----------------------------------------------------------------END--------------------------------------------------------------------------




