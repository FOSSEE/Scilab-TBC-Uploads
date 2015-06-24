clear all; clc;

disp("Scilab Code Ex 12.13 : ")

//Given:
w = 2; //kN/m
L = 8; //m
P = 8; //kN

//Calculations:
EI_theta_A1 = (3*w*L^3)/(128); //ThetaA1 = (3wL^3)/(128EI)
EI_nu_C1 = (5*w*L^4)/(768); //NuC1 = (5wL^4)/(768EI)

EI_theta_A2 = (P*L^2)/(16); //theta_A2 = (PL^2)/(16EI)
EI_nu_C2 = (P*L^3)/(48); //nu_C2 = (PL^3)/(48EI)

theta_A = EI_theta_A1 + EI_theta_A2;
nu_C = EI_nu_C1 + EI_nu_C2;

//Display:

printf('\n\nThe slope at A in terms of EI                = %1.0f/EI  kNm^2',theta_A);
printf('\nThe displacement at point C in terms of EI   = %1.0f/EI  kNm^3',nu_C);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------

