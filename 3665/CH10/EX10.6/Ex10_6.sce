clc//
//
//

//Variable declaration
epsilon0=8.85*10^-12;
A=100*10^-4;    //area(m^2)
d=10^-2;    //diameter(m)
V=100;       //potential(V)

//Calculation
C=epsilon0*A/d;    //capacitance(F)
Q=C*V;        //charge on plates(coulomb)

//Result
printf("\n capacitance is %e F",C)
printf("\n charge on plates is %e coulomb",Q)
