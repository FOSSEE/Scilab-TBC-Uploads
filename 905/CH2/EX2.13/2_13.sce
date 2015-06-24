clear;
clc;

// Illustration 2.13
// Page: 134

printf('Illustration 2.13 -  Page: 134\n\n');

// solution
//*****Data*****//
// a-water    b-dry air
Gy = 10; // [kg/square m.s]
dp = 3.5*10^-3; // [diameter of spherical glass beads, m]
D = 25.4*10^-3; // [Internal diameter of tower, m]
Tair = 308; // [K]
Twater = 295; // [K]
P = 101.3; // [kPa]
M_a = 18; // [gram/mole]
M_b = 29; // [gram/mole]
R = 8.314; // [cubic m.Pa/mole.K]

// The properties of dry air at 308 K and 1 atm are (from example 2.12)
row = 1.14; // [kg/cubic m]
u = 1.92*10^-5; // [kg/m.s]
D_ab = 0.242*10^-4; // [square m/s]
Sc = 0.692; // [Schmidt number]
c = 0.04; // [mole/cubic m]
Gm = 0.345; // [kmole/square m.s]

Re = Gy*dp/u; // [Renoylds number]
if(Re<2500 & Re>10)
    
// Subsituting in equation 2.90
jd = 1.17*Re^-0.415;
printf("Renoylds number is %f\n\n",Re);
else()
end

Std = 0.052/(Sc^(2/3));
// From Table 2.1 
Sh = Std*Re*Sc; // [Sherwood number]
// From equation 2.94
e = 0.406+0.571*(dp/D); // [bed porosity]

printf('Illustration 2.13(a) -  Page: 134\n\n');
// Solution(a)
// Now Paout = 0.99*Pa
// Using equation 2.93 to calculate 'Z'
deff('[y] = f12(Z)','y = 0.99 - 1 + exp(-6*(1-e)*Sh*c*Z*D_ab/(Gm*dp^2))');
Z = fsolve(0.06,f12);
printf("The depth of packing required is %e m\n\n",Z);

printf('Illustration 2.13(b) -  Page: 136\n\n');
// Solution(b)
// From equation 2.95
deltaP = (150*(1-e)/Re + 1.75)*(1-e)*Gy^2*Z/(dp*row*e^3); // [Pa]
printf("The gas pressure drop through the bed is %f Pa\n\n",deltaP); 