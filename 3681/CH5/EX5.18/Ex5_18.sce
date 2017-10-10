// Calculating the maximum flux and no load current of the transformer
clc;
disp('Example 5.18, Page No. = 5.99')
// Given Data
Ep = 400;// Primary winding voltage (in volts)
f = 50;// Frequency (in Hz)
A = 2.5*10^(-3);// Area of cross section (in meter square)
Sf = 0.9;// Stacking factor
Tp = 800;// Primary winding turns
li = 2.5;// Length of the flux path (in meter)
u0 = 4*%pi*10^(-7);// Permeability of free space
ur = 1000;// Relative ermeability
D = 7.8*10^(3);// Density of iron (in kg per meter cube)
FD_w = 2.6;// Working flux density (in W per kg)
// Calculation of the maximum flux
Ai = Sf*A;// Net iron area (in meter square)
Bm = Ep/(4.44*f*Ai*Tp);// Maximum flux density of core (in Wb per meter square)
Fm = Bm*Ai;// Maximum flux in the core (in Wb)
disp(Fm,'Maximum flux in the core (Wb)=');
// Calculation of the no load current
AT0 = li/(ur*u0)*Bm;// Magnetic mmf (in A)
Im = AT0/(2^(1/2)*Tp);// Magnetising current (in A)
V = Ai*li;// Volume of the core (in meter cube)
W = V*D;// Weight of core (in kg)
Pi = W*FD_w;// Iron loss (in W)
Il = Pi/Ep;// Loss component of no load current (in A)
I0 =(Im*Im+Il*Il)^(1/2);// No load current (in A)
disp(I0,'No load current (Ampere)=');
//in book answers are 0.00225 (Wb) and 1.77 (Ampere) respectively.  The answers vary due to round off error
