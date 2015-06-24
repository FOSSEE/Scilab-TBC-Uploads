clear all; clc;

disp("Scilab Code Ex 12.21 : ")

//Given:
l = 3; //m
l_af = l/2; //m
P = 8; //kN
w = 6; //kN/m

//Compatibility Equation:
EI_nu_b1 = (w*l^4)/8 + (5*P*l^3)/48; //nu_b = (wl^4)/8EI + (5Pl^3)/48EI
EI_nu_b2 = (l^3)/3;

B_y = EI_nu_b1 / EI_nu_b2;

//Display:

printf("\n\nThe reactions at roller support B    = %1.2f kN',B_y);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------
