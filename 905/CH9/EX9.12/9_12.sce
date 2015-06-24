clear;
clc;

// Illustration 9.12
// Page: 545

printf('Illustration 9.12 -  Page: 545\n\n');

// solution
//*****Data*****//
// A-NaCl
vo = 0.05; // [superficial velocity of water in the shell, m/s]
T = 298; // [K]
Pf = 70; // [bar]
Pp = 3; // [pressure at permeate side, bar]
p = 1.1*10^-5; // [water permeance, g/square cm.s.bar]
R1 = 0.97; // [salt rejection]
R = 8.314;
xAf = 0.02; // [fraction of NaCl in feed side]
xAp = 0.0005; // [fraction of NaCl in permeate side]
MA = 58.5; // [gram/mole]
//*****//

printf('Illustration 9.12(a) -  Page: 545\n\n');
// Solution(a)

deltaP = Pf-Pp; // [bar]
// Density of both feed and permeate is 1 g/cc
df = 1000; // [kg/cubic m]
dp = df;
// Bulk feed salt concentration 
csf = xAf*2*1000/MA; // [kmole/cubic m]
// Bulk permeate salt concentration
csp = xAp*2*1000/MA; // [kmole/cubic m]

// From equation 9.76
pif = R*T*csf/100; // [osmotic pressure at feed side, bar]
pip = R*T*csp/100; // [osmotic pressure at permeate side, bar]
deltapi = pif-pip; // [bar]

Y = deltaP-deltapi; // [bar]
// Transmembrane flux of water
nH2O = p*Y*10^-3/(df*(10^-4*1/(60*60*24))); // [cubic m/square m.day]

printf("The transmembrane flux of water is %f cubic m/square m.day.\n\n",nH2O);

printf('Illustration 9.12(b) -  Page: 546\n\n');
// Solution(b)

// Properties of water are
dw = 1000; // [kg/cubic m]
uw = 0.9*10^-3; // [kg/m.s]
DA = 1.6*10^-9; // [Diffusivity of NaCl in water, square m/s]
d = 290*10^-6; // [outside diameter of fibres, m]
phi = 0.4;
// For a superficial velocity of 5 cm/sec
Re = dw*vo*d/uw; // [Renoylds number]
Sc = uw/(dw*DA); // [Schmidt number]
Sh = 8.63; // [Sherwood number]
// Therefore 
ks = Sh*DA/d; // [m/s]
// From equation 9.81
t = nH2O*R1/(ks*24*60*60);
printf("The concentration polarization factor is %f.\n\n",t);