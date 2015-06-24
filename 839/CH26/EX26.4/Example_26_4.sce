//clear//
clear;
clc;

//Example 26.4
//Given
F = 10; //[gal/day-ft^3]
Do = 300*10^-6; //[m]
Di = 200*10^-6; //[m]
vi = 0.5; //[cm/s]
rho = 1; //[g/cm^3]
mu = 0.01; //[g/cm-s], assumed
f = 0.97;

//Solution
//For 10 gal/day-ft^2
Jw = F*231*16.3871/(24*3600*929); //[cm/s]
Nre = Do*100*vi*rho/mu;
Ds = 1.6*10^-5; //[cm^2/s]
Nsc = mu/(rho*Ds);

//Using Eq.(12.69), Analogously to mass transfer
Nsh = (0.35+0.56*Nre^0.52)/Nsc^-0.3;
kc = Nsh*Ds/(Do*100); //[cm/s]
//From Eq.(26.49)
gama = Jw*f/kc;
disp('A concentration differnce of 12 percent will not be significant till good flow distribution is maintained');

