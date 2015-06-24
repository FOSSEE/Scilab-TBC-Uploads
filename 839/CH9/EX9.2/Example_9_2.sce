//clear//
clear;
clc;

//Example 9.2
//Given
Dt = 6; //[ft]
h = 2; //[ft]
n = 90/60; //[rps]
mu = 12*6.72*10^-4; //[lb/ft-s]
g = 32.17; //[ft/s^2]
rho = 93.5; //[lb/ft^3]
Da = 2; // [ft]

Nre = Da^2*n*rho/mu;
//Froude number
Nfr = n^2*Da/g;
//From Table 9.1 
a = 1;
b = 40.0;
//Using Eq.(9.19)
m = (a-log(Nre)/2.303)/b;
//Using Fig. 9.12, curve D,
Np = 1.07;
//Corrected valus of Np
Np =  Np*Nfr^m;

//Form Eq.(9.20)
P = Np*rho*n^3*Da^5/g //[ft-lbf/s]
P = P/550 //[hp]
