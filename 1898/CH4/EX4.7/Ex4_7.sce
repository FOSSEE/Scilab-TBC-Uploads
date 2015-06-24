clear all; clc;

disp("Scilab Code Ex 4.7 : ")

//Given:
P = 15; //kN
a_ab = 25; //mm^2
a_ef =a_ab;
a_cd = 15; //mm^2
l_ef = 0.5; //m
l_ce = 0.4; //m
l_ac = 0.4; //m

//Calculations:

//Equilibrium:
//In the y direction ;   F_a +F_c +F_e = P
//of moments: -F_a(l_ac)+ P(l_ac/2) +F_e(l_ce) = 0

//Compatibility equation for displacemnts:
coeff_Fc = (1/a_cd); //coefficient of Fc
coeff_Fa = (0.5/a_ab); //coefficient of Fc
coeff_Fe = (0.5/a_ef); //coefficient of Fc

//Using matrices to solve the 3 Equations:
A = [1 1 1; -l_ac 0 l_ce; coeff_Fa -coeff_Fc coeff_Fe];
b = [P ; -P*(l_ac/2); 0];
F = A\b;


F_a = F(1);
F_b = F(2);
F_c = F(3);

//Display:


printf("\n\nThe force in rod AB       = %1.2f kN',F_a);
printf('\nThe force in rod CD       = %1.2f kN',F_b);
printf('\nThe force in rod EF       = %1.2f kN',F_c);

//--------------------------------------------------------------------END--------------------------------------------------------------------------

