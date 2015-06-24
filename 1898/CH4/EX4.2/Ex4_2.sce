clear all; clc;

disp("Scilab Code Ex 4.2 : ")

//Given:
a_ab = 400; //mm^2
d_rod = 10; //mm
r_rod = d_rod/(2*1000); //radius in m
P = 80; //kN
E_st = 200*(10^9); //Pa
E_al = 70*(10^9); //Pa
l_ab = 400; //mm
l_bc = 600; //mm

//Calculations:

//Internal forces: tension = compression = 80kN.

//Displacement:

//delta =PL/AE
numerator1 = P*(10^3)*(l_bc/1000); 
denominator1 = (%pi*r_rod^2*E_st);
delta_cb = numerator1/denominator1; //to the right

numerator2 = -P*(10^3)*(l_ab/1000); 
denominator2 = (a_ab* 10^-6 *E_al);
delta_a = -numerator2/denominator2; //to the right

delta_c = delta_a+delta_cb;

//Display:



printf("\n\nThe displacement of C with respect to B     = +%1.6f m',delta_cb);
printf("\nThe displacement of B with respect to A     = +%1.6f m",delta_a);
printf('\nThe displacement of C relative to A         = +%1.5f m',delta_c);

//------------------------------------------------------------------END---------------------------------------------------------------------
