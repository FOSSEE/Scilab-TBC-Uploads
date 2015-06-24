clear all; clc;

disp("Scilab Code Ex 4.9 : ")

//Given:
l_ab = 800 + 400;//mm
P = 20; //kN
d = 5/1000; //m
area = (%pi/4)*d^2; //Cross sectional area
l_bbdash = 1/1000;//m
E = 200; //GPa

//Calculations:

//Compatibility
delta_p = (P*10^3*0.4)/(area*E*10^9); //delta = PL/AE
delta_b = delta_p-l_bbdash;
F_b = (delta_b*area*E*10^9)/(l_ab/1000);
F_b = F_b/1000;

//Equilibrium:
F_a = P - F_b;

//Display:

printf("\n\nThe reaction at A      = %1.1f kN',F_a);
printf('\nThe reaction at B       = %1.1f kN',F_b);

//------------------------------------------------------------END--------------------------------------------------------------------
