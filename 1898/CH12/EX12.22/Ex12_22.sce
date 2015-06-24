clear all; clc;

disp("Scilab Code Ex 12.22 : ")

//Given:
l = 8; //m
l_ab = l/2; //m
l_bc = l/2; //m
l_af = l_ab/2; //m
b = 12/1000; //m
w = 24; //kN/m
E = 200*10^6; //Kn/m^2
I = 80*10^-6;// m^4

//Compatibility Equation:
nu_b = (5*w*l^4)/(768*E*I); //nu_b = (5wl^4)/768EI
nu_b_byBy = (l^3)/(48*E*I); //nu_b' = (Pl^3)/48EI

B_y = (nu_b-b)/nu_b_byBy;

C_y = ((w*l_ab*l_af) - (B_y*l_ab))/l;

A_y = (w*l_ab - B_y - C_y);

//Display:

printf('\n\nThe reaction at A    = %1.0f kN',A_y);
printf('\nThe reaction at B    = %1.0f kN',B_y);
printf('\nThe reaction at C    = %1.0f kN',C_y);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------

