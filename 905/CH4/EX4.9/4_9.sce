clear;
clc;

// Illustration 4.9
// Page: 264

printf('Illustration 4.9 -  Page: 264\n\n');

// solution//
// From examples 4.4, 4.6 and 4.7

Do = 5*10^-3; // [m]
Ml = 18.63; // [molecular weight of water, gram/mole]
Mg = 44.04; // [molecular weight of carbon dioxide, gram/mole]
rowg = 1.923; // [kg/cubic m]
rowl = 986; // [kg/cubic m]
vo = 18.48; // [m/s]
hl = 0.0173; // [m]
ug = 1.45*10^-5; // [kg/m.s]
phie = 0.274;
A = 0.101; // [Ah/Aa]
Dg = 0.085; // [square cm/s]
Dl = 1.91*10^-5; // [square cm/s]
Aa = 0.614; // [square m]
Qg = 1.145; // [cubic m/s]
t = 0.5; // [m]
h2q = 0.391; // [m]
rw = 0.34; // [m]
ql = 0.000815; // [cubic m/s]
g = 9.8; // [square m/s]
G = 2.202/44.04; // [kg/s]
L = 0.804/18.63; // [kg/s]

Refe = rowg*vo*hl/(ug*phie);

cg =rowg/Mg; // [kmole/cubic m]
cl = rowl/Ml; // [kmole/cubic m]

// For the low concentrations prevailing in the liquid phase, the ethanol-   // water solution at 303 K obeys Henry's law, and the slope of the equilibriu// m curve is m = 0.57
m = 0.57;
// From equation 4.53
a1 = 0.4136;
a2 = 0.6074;
a3 = -0.3195;
Eog = 1-exp(-0.0029*Refe^a1*(hl/Do)^a2*A^a3/((sqrt(Dg*(1-phie)/(Dl*A)))*m*cg/cl+1));
// From equation 4.62
Deg = 0.01; // [square m/s]
Peg = 4*Qg*rw^2/(Aa*Deg*(t-h2q)); // [Peclet number]
// Since Peclet number is greater than 50, therefore vapor is unmixed
// From equation 4.60
Del = 0.1*sqrt(g*h2q^3); // [square m/s]
// From equation 4.59
Pel = 4*ql*rw^2/(Aa*hl*Del);
N = (Pel+2)/2;
lambda = m*G/L;
// From equation 4.58
Emg = ((1+lambda*Eog/N)^N -1)/lambda*(1-0.0335*lambda^1.073*Eog^2.518*Pel^0.175);
// From example 4.8
E = 0.05;
// Substituting in equation 4.63
Emge = Emg*(1-0.8*Eog*lambda^1.543*E/m);
printf("The entrainment corrected Murphree tray efficiency for the ethanol is %f.\n\n",Emge);
