clear all; clc;

disp("Scilab Code Ex 12.10 : ")

//Given:
E = 200*10^6; //kN/m^2
I = 17*10^-6;//mm^4
l_ac = 2; //m
l_cF = 4; //m
l_Fb = 2; //m
l_cb = 6; //m
l_aF = 6; //m
l_ab = 8; //m
F = 16; //kN
R_b = (F*l_cb)/l_ab;
R_a = F - R_b;

mc = R_a*l_ac;
mf = R_b*l_Fb;
theta_ca = (0.5*l_ac*mc)/(E*I);

A1 = 0.5*l_aF*mf;
t1_ba = (l_Fb + l_aF/3)*(A1);

A2 = 0.5*l_Fb*mf;
t2_ba = (l_Fb*2*A2)/3;

t_ba = (t1_ba+t2_ba)/(E*I);

theta_c = (t_ba/l_ab)-(theta_ca);

//Display:

printf("\n\nThe slope at point C of the steel beam    = %1.5f rad',theta_c);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------

