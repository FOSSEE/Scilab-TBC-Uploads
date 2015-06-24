clear;
clc;

// Illustration 2.14
// Page: 138

printf('Illustration 2.14 -  Page: 138\n\n');

// solution
// a-oxygen     b-water
// To design the deaerator, We will use commercially available microporous polypropylene hollow fibers in a module
// Given data:
m = 40000; // [kg/hr]
Twater = 298; // [K]
v = 0.1; // [superficial velocity, m/s]
P = 101.3; // [kPa]
V = 40*10^-3; // [Flow rate of nitrogen, cubic m/min]
d = 2.90*10^-4; // [Outside diameter of fibres, m]
pf = 0.4; // [Packing factor]
a = 46.84*100; // [surface area per unit volume, m^-1]
R = 8.314; // [cubic m.Pa/mole.K]
// *****//

dw = 1000; // [density of water, kg/cubic m]
Ql = m/(3600*1000); // [volumetric water flow rate, cubic m/s]
// Shell diameter
D = (4*Ql/(%pi*v))^0.5; // [Shell diameter, m]

// the properties of dilute mixtures of oxygen in water at 298 K
u = 0.9; // [cP]
// Diffusivity from equation 1.53
D_ab = 1.93*10^-9; // [square m/s]
Sc = 467; // [Schmidt number]

Re = d*v*dw/(u*10^-3); // [Renoylds number]

// Substituting in equation (2-97) gives
Sh = 0.53*(1-1.1*pf)*((1-pf)/pf)^-0.47*(Re^0.53*Sc^0.33);

kl = Sh*D_ab/d; // [mass-transfer coefficient on the shell side, m/s]

// From the specified BFW flow rate
L = m/(3600*18); // [kmole/s]
// From ideal gas law
V1 = V*P/(Twater*R*60); // [kmole/s]
// From the solubility of oxygen in water at 298 K,
M = 4.5*10^4;
A = L/(M*V1); // [Absorption factor]
printf("Absorption factor is %f\n",A);

// For 99% removal of the dissolved oxygen
// x_in/x_out = b = 100
b = 100;
c = 55.5 // [molar density, kmole/cubic m]
// Substituting in equation 2.99 yields
V_T = (L*log(b*(1-A)+A))/(kl*a*c*(1-A)); // [cubic m]

// The module length, Z is
Z = V_T/(%pi*D^2/4);
printf("The shell diameter and module length is %f m and %f m respectively\n\n",D,Z);   