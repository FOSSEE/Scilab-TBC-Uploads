//clear//
clear;
clc;

//Example 25.1
//Given
ya = 0.002;
T = 20+273; //[K]

//Solution
//(a)
M = 86.17;
//from Perry's Chemical Engineers' Handbook, 6th ed.
Pprime = 120; //[mm Hg]
fs = Pprime; //[mm Hg]
rho_L = 0.615; //[g/cm^3], at normal boiling point(68.7 C)
P = 760; //[mm Hg]
p = ya*P; //[mm Hg]
f = p; //[mm Hg]
V = M/rho_L; //[cm^3/g mol]
//Let
A = T/V*log10(fs/f); 
//From Fig. 25.4, volume adsorbed
V_ads = 31/100; //[cm^3 liquid/g carbon]
W = V_ads*rho_L; //[g/g carbon]
disp('g/g carbon',W,'The equilibrium capacity for the bed is')

//(b)
T = 40+273; //[K]
Pprime = 276; //[mm Hg]
fs = Pprime; //[mm Hg]  
A = T/V*log10(fs/f);
//From Fig. 25.4, volume adsorbed
V_ads = 27/100; //[cm^3 liquid/g carbon]
W = V_ads*rho_L; //[g/g carbon]
disp('g/g carbon',W,'The equilibrium capacity for the bed is')

