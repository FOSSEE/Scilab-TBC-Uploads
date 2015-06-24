clear all; clc;

disp("Scilab Code Ex 12.14 : ")

//Given:
w = 5; //kN/m
l_ab = 4; //m
l_bc = 2; //m
P = 10; //kN
M = w*l_ab; //kNm

//Calculations:
EI_theta_B1 = (w*l_ab^3)/(24); //ThetaB1 = (wL^3)/(24EI)
EI_nu_C1 = l_bc*EI_theta_B1;

EI_theta_B2 = (M*l_ab)/(3); //
EI_nu_C2 = l_bc*EI_theta_B2;

EI_nu_C3 = (P*l_bc^3)/(3); //nuC3 = (PL^3)/(24EI)

nu_C = -EI_nu_C1 + EI_nu_C2 + EI_nu_C3;

//Display:

printf('\n\nThe displacement at end C of the overhanging beam, in terms of EI   = %1.1f/EI kNm^3',nu_C);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


