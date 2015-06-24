clear all; clc;

disp("Scilab Code Ex 12.12 : ")

//Given:
E = 200; //kN/m^2
I = 50*10^6;//mm^4
l_ab = 4; //m
l_bc = 4; //m
l_ac = l_ab+l_bc;
R_a = -25; //kN
R_b = 50; //kN
R_c = 25; //kN

mb = R_a*l_ab;

//Moment-Area Theorem:

t_ca = (l_ab*0.5*l_ac*mb*(10^3)^3)/(E*I);
t_ba = (l_ab*0.5*l_ab*mb*(10^3)^3)/(E*I*3);

del_c = -t_ca + 2*t_ba;

//Display:

printf("\n\nThe displacement at point C for the steel overhanging beam    = %1.1f mm',del_c);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------



