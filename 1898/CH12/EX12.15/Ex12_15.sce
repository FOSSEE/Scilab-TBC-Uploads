clear all; clc;

disp("Scilab Code Ex 12.15 : ")

//Given:
w = 4; //kN/m
l = 10; //m
l_bc =3; //m

//Calculations:
EI_theta_B = (w*l^3)/(24); //ThetaB1 = (wL^3)/(24EI)
EI_nu_B = (w*l^4)/(30); //nuB = (wL^4)/(30EI)

nu_C = EI_nu_B + (EI_theta_B*l_bc);

//Display:

printf('\n\nThe displacement at end C of the cantilever beam, in terms of EI   = %1.0f/EI kNm^3',nu_C);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------



