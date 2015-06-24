clear all; clc;

disp("Scilab Code Ex 12.16 : ")

//Given:
k = 45; //kN/m
F = 3; //kN
E = 200*10^6; //kPa
l_ab = 3; //m
l_ac = 1; //m
l_cb = 2; //m
I = 4.687*10^-6; //m^4
R_a = (F*l_cb)/(l_ab);
R_b = F-R_a;

//Calculations:
nu_a = (R_a)/k;
nu_b = (R_b)/k;

nu_c1 = nu_b + (l_cb/l_ab)*(nu_a - nu_b);
nu_c2 = ((F*l_ac*l_cb)*(l_ab^2 - l_ac^2 - l_cb^2))/(6*E*I*l_ab);

nu_c = nu_c1 + nu_c2;
nu_C = nu_c*1000;

//Display:

printf('\n\nThe vertical displacement of the force at C   = %1.3f mm',nu_C);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


