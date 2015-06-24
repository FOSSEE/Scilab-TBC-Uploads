clear;
clc;

// Illustration 7.8
// Page: 456

printf('Illustration 7.8 -  Page: 456\n\n');

// solution
//*****Data*****//
Ff = 1.61; // [flow rate of feed, kg/s]
Fs = 2.24; // [flow rate of solvent, kg/s]
t = 2*60; // [residence time in each mixer, s]
df = 998; // [density of feed, kg/cubic m]
uf = 0.89*10^-3; // [viscosity of feed, kg/m.s]
ds = 868; // [density of solvent, kg/cubic m]
us = 0.59*10^-3; // [viscosity of solvent, kg/m.s]
sigma = 0.025; // [interfacial tension, N/m]
g = 9.8; // [square m/s]
//*****//

Qf = Ff/df; // [volumetric flow rate of feed, cubic m/s]
Qs = Fs/ds; // [volumetric flow rate of solvent, cubic m/s]
// Volume fractions in the combined feed and solvent entering the mixer 
phiE = Qs/(Qs+Qf); 
phiR = 1-phiE;

printf('Illustration 7.8(a) -  Page: 457\n\n');
// Solution(a)

Q = Qf+Qs; // [total flow rate, cubic m/s]
Vt = Q*t; // [vessel volume, cubic m]
// For a cylindrical vessel,  H = Dt
// Therefore,    Vt = %pi*Dt^3/4
Dt = (4*Vt/%pi)^(1/3); // [ diameter, m]
H = Dt; // [height, m]
Di = Dt/3; // [m]
printf("The height and diameter of the mixing vessel are %f m and %f m respectively.\n",Dt,H);
printf("The diameter of the flat-blade impeller is %f m.\n\n",Di);

printf('Illustration 7.8(b) -  Page: 457\n\n');
// Solution(b)

// For the raffinate phase dispersed:
phiD = phiR;
phiC = phiE;
deltad = df-ds; // [kg/cubic m]
rowM = phiD*df+phiC*ds; // [kg/cubic m]
uM = us/phiC*(1 + 1.5*uf*phiD/(us+uf)); // [kg/m.s]
// Substituting in equation 7.34
ohm_min = sqrt(1.03*phiD^0.106*g*deltad*(Dt/Di)^2.76*(uM^2*sigma/(Di^5*rowM*g^2*deltad^2))^0.084/(Di*rowM))*60; // [rpm]
printf("The minimum rate of rotation of the impeller for complete and uniform dispersion.is %f rpm.\n\n",ohm_min);

printf('Illustration 7.8(c) -  Page: 457\n\n');
// Solution(c)

ohm = 1.2*ohm_min; // [rpm]

// From equation 7.37
Re = ohm/60*Di^2*rowM/uM; // [Renoylds number]
// Then according to Laity and Treybal (1957), the power number, Po = 5.7
Po = 5.7
// From equation 7.37
P = Po*(ohm/60)^3*Di^5*rowM/1000; // [kW]
// Power density
Pd = P/Vt; // [kW/cubic m]
printf("The power requirement of the agitator at 1.20 times the minimum rotation rate is %f kW.\n\n",P);