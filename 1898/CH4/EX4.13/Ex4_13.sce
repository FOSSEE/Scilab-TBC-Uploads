clear all; clc;

disp("Scilab Code Ex 4.13 : ")

//Given:
sigma_allow = 115; //MPa

//Determinng the stress concentration factor:

r_n =10/20;
w_h = 40/20;
k = 1.4; //from graph
sigma_avg = sigma_allow/k;
P =sigma_avg*20*10;
P = P/1000;

//Display:

printf("\n\nThe largest axial force that the bar can carry      = %1.2f kN",P);

//------------------------------------------------------------------------------END---------------------------------------------------------------------
