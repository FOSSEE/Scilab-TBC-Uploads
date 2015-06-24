clear all; clc;

disp("Scilab Code Ex 4.8 : ")

//Given:
r_o = 10; //mm
r_i = 5; //mm
l = 60; //mm
a_t = (%pi)*(r_o^2 - r_i^2); //Area of thread
a_b = (%pi*(r_i^2));// Area of bolt
one_turn =20/20;
E_am = 45; //GPa
E_al = 75; //GPa

//calculations:

//Equilibrium:
// In Y direction: F_b - F_t = 0

//Compatibility:
half_turn = one_turn/2;
coeff_Ft = l/(a_t*E_am*10^3); // delta = PL/AE
coeff_Fb = l/(a_b*E_al*10^3);

//Solving the two simultaneous equations for F_b and F_t:
A = [1 -1; coeff_Fb coeff_Ft];
b = [0 ; half_turn];
F = A\b;

F_b =F(1);
F_t = F(2);

stress_b = F_b/a_b;
stress_t = F_t/a_t;

F_b = F_b/1000; //in kN
F_t = F_t/1000; //in kN

//Display:


printf('\n\nThe force experienced by threads       = %1.2f kN',F_t);
printf('\nThe force experienced by the bolt      = %1.2f kN',F_b);
printf('\nThe stress in the screw                = %1.1f MPa',stress_t);
printf('\nThe stress in the bolt                 = %1.1f MPa',stress_b);

//------------------------------------------------------------------------END-----------------------------------------------------------------------------
