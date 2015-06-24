clear;
clc;

// Illustration 9.13
// Page: 548

printf('Illustration 9.13 -  Page: 548\n\n');

// solution
//*****Data*****//
// w-water a-proteins
T = 293; // [K]
d = 2; // [diameter of tube, cm]
dw = 1; // [g/cubic cm]
uw = 0.01; // [cP]
Da = 4*10^-7; // [Diffusivity of proteins, square cm/s]
vo = 1.5*100; // [m/s]
Qm = 250*10^-3/3600*100; // [water permeance, cm/s.atm]
cR = 40; // [g/L]

printf('Illustration 9.13(a) -  Page: 549\n\n');
// Solution(a)

v = 25*10^-3/3600*100; // [cm/s]

Re = d*vo*dw/uw; // [Renoylds number]
Sc = uw/(dw*Da); // [Schmidt number]
Sh = 0.0048*Re^0.913*Sc^0.346; // [Sherwood number]
ks = Sh*Da/d;
// From equation 9.87
cS = cR*exp(v/ks); // [g/L]

// From figure 9.12
pi1 = 2; // [osmotic pressure, atm]
// For 100% rejection deltapi = pi1 because pi2 = 0
// Therefore
deltapi = pi1; // [atm]
// From equation 9.83
deltaP = deltapi+(v/Qm);
printf("The required pressure differential to produce a water transmembrane volume flux of 25 L/square m.h when the membrane is clean is %f atm.\n\n",deltaP);


printf('Illustration 9.13(b) -  Page: 549\n\n');
// Solution(b)

// Membrane permeance is reduced fivefold by fouling
Qm = Qm/5; // [cm/s.atm]
// Here deltaP remains same
// Equations 9.83 and 9.87, and the osmotic pressure data of Figure 9.12 must be solved simultaneously by trial and error to calculate new values for these three variables.
// The results are
cS2 = 213; // [g/L]
deltapi2 = 1.63; // [atm]
v2 = 6.53*10^-4; // [cm/s]
printf("The water flux if the applied pressure differential remains the same as calculated in part (a) is %f L/square m.hr.",v2*1000*10^-2*3600);
