clear all; clc;


disp("Scilab Code Ex 1.7 :")

//Given :
m_lamp = 80; //Mass of lamp in Kg.
d_ab = 10; // Diameter of AB in mm.
d_bc = 8; // Diameter of BC in mm.
ab_h = 60 *(%pi/180); // In degrees - Angle made by AB with the horizontal.
w = m_lamp*9.81; //N
a_bc = (%pi/4)*(d_bc^2); //m^2 Area of cross section of rod BC
a_ab = (%pi/4)*(d_ab^2); //m^2 Area of cross section of rod AB



// Equations of equilibrium: Solving equilibrium equations simultaneously ,using matrices ,in the x and y directions to obtain force in BC and force in BA.


a = [(4/5) -(cos(ab_h)) ; (3/5) (sin(ab_h))];
b = [0 ; w];
f = zeros(1)

f = a\b;
f_bc = f(1); // Force in BC in N.
f_ba = f(2); //Force in BA in N.
avg_normal_stress_a = f_ba / a_ab; //Mpa Average Normal Stress in AB
avg_normal_stress_c = f_bc/ a_bc;// Mpa   Average Normal Stress in BC


// Displaying results:


printf('\n\nThe Weight of lamp  = %.2f N',w);
printf('\nThe Net force in BC = %.2f N',f_bc);
printf('\nTheNet force in BA  = %.2f N',f_ba);
printf('\nThe Average Normal Stress in AB when subjected to load = %.2f MPa',avg_normal_stress_a);
printf('\nThe Average Normal Stress in BC when subjected to load = %.2f MPa',avg_normal_stress_c);

//------------------------------------------------------------------END----------------------------------------------------------------------------------





