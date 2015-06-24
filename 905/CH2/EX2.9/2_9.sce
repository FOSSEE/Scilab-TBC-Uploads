clear;
clc;

// Illustration 2.9
// Page: 123

printf('Illustration 2.9 -  Page: 123\n\n');

// solution
//*****Data*****//
// a-water    b-air
dp1 = 10^-3; // [diameter of spherical drop of water, m]
Tair = 323; // [K]
P = 101.3; // [kPa]
Twater = 293; // [K]
R = 8.314; // [cubic m.Pa/mole.K]
M_a = 18; // [gram/mole]
M_b = 29; // [gram/mole]
//*****//

dp2 = (1/2)^(1/3)*dp1; // [m]
dp = (dp1+dp2)/2; // [m]

row_p = 995; // [density of water, kg/cubic m]
row1b = 1.094; // [density of air, kg/cubic m]
u = 1.95*10^-5; // [kg/m.s]
row_pr = row_p-row1b; // [kg/cubic m]
g = 9.8; // [accleration due to gravity, square m/s]
// Combining equation 2.68 and 2.69
Ga = 4*dp^3*row1b*row_pr*g/(3*u^2); // [Galileo Number]

// Relationship between Re and Cd
// Re/Cd = Re^3/Ga = 3*row^2*vt^3/(4*g*u*row_pr)

// The following correlation is used to relate Re/Cd, to Ga
// ln(Re/Cd)^(1/3) = -3.194 + 2.153*ln(Ga)^(1/3) - 0.238*(ln(Ga)^(1/3))^2 + 0.01068*(ln(Ga)^(1/3))^3
// Therefore let A = (Re/Cd)
A = exp(-3.194 + 2.153*log(Ga^(1/3)) - 0.238*(log(Ga^(1/3)))^2 + 0.01068*(log(Ga^(1/3)))^3);

// Therefore 'vt' will be
vt = A*(4*g*row_pr*u/(3*row1b^2))^(1/3); // [Terminal velocity of particle, m/s]
printf("Terminal velocity of particle is %f m/s\n\n",vt); 

P_w = 2.34; // [vapor pressure of water, kPa]
y_w = P_w/P; // [mole fraction of water at the inner edge of the gas film]
M_avg = 18*y_w+29*(1-y_w); // [gram/mole]

row2b = P*M_avg/(R*Twater); // [kg/cubic.m]
delta_row = row2b - row1b; // [kg/cubic.m]

Tavg = (Tair+Twater)/2; // [K]
// At Temperature equal to Tavg density and viscosity are
row3 = 1.14; // [kg/cubic.m]
u1 = 1.92*10^-5; // [kg/m.s]

Grd = g*row3*delta_row*(dp^3)/(u1^2);

// Diffusivity of water at Tavg and 1 atm is
D_ab = 0.242*10^-4; // [square m/s]
Sc = u1/(row3*D_ab); // [Schmidt Number]
Re = dp*row3*vt/u1; // [Renoylds Number]

// From equation 2.65 Re is greater than  0.4*Grd^0.5*Sc^(-1/6)
// Therfore equation 2.64 can be used to calculate mass transfer coefficient

Sh = 2+0.552*(Re^0.5)*Sc^(1/3); // [Sherwood Number]
// From Table 2.1
// Sh = kc*P_bm*dp/(P*D_ab), since P_bm is almost equal to P
// Therefore 
// Sh = kc*dp/D_ab;
kc = Sh*D_ab/dp; // [m/s]

ca2 = 0; // [dry air concentration]
ca1 = P_w/(R*Twater); // [interface concentration, kmole/cubic.m]
// Average rate of evaporation 
wa = %pi*dp^2*M_a*kc*(ca1-ca2)*1000; // [g/s]

// Amount of water evaporated
m = row_p*%pi*dp1^3/12*1000; // [g]
// Time necessary to reduce the volume by 50%
t = m/wa; // [s]

D = t*vt; // [distance of fall, m]
printf("The distance of fall is %f m\n\n",D); 