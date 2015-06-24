//====================================================================================================================================================================
// chapter 8 example 10

clc;
clear;

// Variable declaration
p   = 5.32*10^3;        // density of germanium
Nav = 6.023*10^26;      // Avagadros number
AW  = 72.59;            // atomic wt
ni  = 1.5*10^19         // carrier density
ue  = 0.36
uh  = 0.18
e   = 1.6*10^-19

// calculations
N   = (p*Nav)/AW        // no of germanium atoms per unit volume
Nd  = N*10^-6           // no of pentavalent impurity atoms/m^3
f   = Nd/ni
nh  = ni^2/Nd           // hole conc
sigma = e*((Nd*ue)+(nh*uh))

// Result
mprintf('The factor by which the majority conc. is more than the intrinsic carrier conc = %d\n Hole concentration = %3.1e /m^3\n Conductivity = %d /ohm-m',f,nh,sigma)

//====================================================================================================================================================================
