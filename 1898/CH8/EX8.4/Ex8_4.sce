clear all; clc;

disp("Scilab Code Ex 8.4 : ")

//Given:
y_c = 125/1000; //m
x_c = 1.5; //m
y_b = 1.5; //m
x_b = 6; //m
udl = 50; //kN/m
l_udl = 2.5; //m
l = 250/1000; //m
width = 50/1000; //m 


//Internal Loadings:
N = 16.45; //kN
V = 21.93; //kN
M = 32.89; //kNm

//Stress Components:

//Normal Force:
A = l*width;
sigma1 = N/(A*1000);

//Shear Force:
tou_c = 0;

//Bending Moment:
c = y_c;
I = (1/12)*(width*l^3);
sigma2 = (M*c)/(I*1000);

//Superposition:
sigmaC = sigma1+sigma2;

//Display:


printf('\n\nThe stress due to normal force at C     = %1.2f MPa',sigma1);
printf('\nThe stress due to shear force at C      = %1.2f MPa',tou_c);
printf('\nThe stress due to bending moment at C   = %1.2f MPa',sigma2);
printf('\nThe resultant stress at C               = %1.1f MPa',sigmaC);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
