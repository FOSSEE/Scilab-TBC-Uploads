clear all; clc;


disp("Scilab Code Ex 1.8 :")

//Given:
h_above_ab = 0.8; 
h_below_ab = 0.2; 
d_a = 0.2; 
d_b = 0.1; 
sp_w = 80; 

// Equation of Equilibrium:


a = %pi* (d_a^2);  // Area of cross section in m^2
p = sp_w * h_above_ab * a;
avg_comp_stress = p/a; // The average compressive stress in kN/m^2

//Display:

printf('\nThe internal Axial force P     = %.2f kN',p);
printf('\nThe average compressive stress = %.2f kN/m^2',avg_comp_stress);


//--------------------------------------------------------------------------------END------------------------------------------------------------------------------


