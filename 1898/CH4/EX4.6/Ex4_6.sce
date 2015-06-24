clear all; clc;

disp("Scilab Code Ex 4.6 : ")

//Given:
P = 45; //kN
E_al = 70*10^3;
E_br = 105*10^3;
h = 0.5; //m
ri = 25/1000; //m
ro = 50/1000; //m
A = (%pi*(ro^2 -ri^2));
Ai = %pi*ri^2;

//Calculations:

//Equilibrium: Eqn1:F_al +F_br = P

//Compatibility:
coeff_F_br = (A*E_al)/(Ai*E_br); // delta_al = delta_brass

//Eqn2 : F_al- (coeff_F_br*F_br) = 0

//Solving equations 1 and 2 using matrices:

coeff_F = [1 1; 1 -coeff_F_br];
b = [P; 0];
F = coeff_F\b;

F_al =F(1);
F_br =F(2);

avg_stress_al = F_al/A; 
avg_stress_br = F_br/Ai; 

avg_stress_al = avg_stress_al/1000;
avg_stress_br = avg_stress_br/1000;

//Display:


printf("\n\nThe axial force experienced by Al     = %1.1f kN",F_al);
printf("\nThe axial force experienced by Brass  = %1.2f kN",F_br);
printf('\nThe average normal stress in Al       = %1.2f MPa',avg_stress_al);
printf('\nThe average normal stress in Al Brass = %1.2f MPa',avg_stress_br);

//---------------------------------------------------------------------END-------------------------------------------------------------
