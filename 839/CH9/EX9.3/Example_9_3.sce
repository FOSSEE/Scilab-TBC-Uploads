//clear//
clear;
clc;

//Example 9.3
//Given
Dt = 6; //[ft]
h = 2; //[ft]
n = 90/60; //[rps]
mu = 1200*6.72*10^-2; //[lb/ft-s]
g = 32.17; //[ft/s^2]
rho = 70 //[lb/ft^3]
Da = 2; // [ft]

Nre = Da^2*n*rho/mu;
//From Table 9.3
KL = 65;
//From Eq.(9.21)
Np = KL/Nre;
P = Np*rho*n^3*Da^5/g  //[ft-lbf/s]
P = P/550 //[hp]
