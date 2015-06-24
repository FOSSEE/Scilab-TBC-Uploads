//clear//
clear;
clc;

//Exapmle 9.1
//Given
Dt = 6; //[ft]
h = 2; //[ft]
n = 90/60; //[rps]
mu = 12*6.72*10^-4; //[lb/ft-s]
g = 32.17; //[ft/s^2]
rho = 93.5; //[lb/ft^3]
Da = 2; // [ft]

Nre = Da^2*n*rho/mu; 
//From curve A of Fig. 9.12
Np = 5.8
//Form Eq.(9.20)
P = Np*rho*n^3*Da^5/g  //[ft-lbf/s]
P = P/550 //[hp]
