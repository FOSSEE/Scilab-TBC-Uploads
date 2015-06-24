clear ;
clc;
// Example 5.2
printf('Example 5.2\n\n');
printf('Page No. 113\n\n');

// given
T1 = 10;// in degree celcius
T2 = 70;// in degree celcius
d = 25*10^-3;// Inside diameter in m
v = 1.5;// veocity in m/s

Tm = (T1+T2)/2;// Arithmetic Mean  temperature in degree celcius
// At Tm, All physical properties of water is calculated by using steam table

//(a)Heat absorbed by water 
p = 992;// Density of water in kg/m^3 At Tm
A = (%pi*d^2)/4;// Area in m^2
m = p*v*A;// Mass flow rate in kg/s
h_70 = 293*10^3;// Specific enthalpy of water in J/kg  at 70 degree celcius(from  steam table)
h_10 = 42*10^3;// Specific enthalpy of water in J/kg at 10 degree celcius(from  steam table)
Q = m*(h_70 - h_10);// in W
printf(' Heat absorbed by water is %.0f W \n',Q)

//(b) Film heat transfer
//At Tm, the following properites of water are found by using steam table
u = 650*10^-6;// viscosity in Ns/m
Cp = 4180;//Specific heat in J/kg-s
K = 0.632;// Thermal conductivity in W/m-s


Re = (d*v*p)/u;//Reynolds Number // answer wrongly calculated in the text book
Pr = (Cp*u)/K;// Prandtl Number
Re_d = (Re)^0.8;
Pr_d = (Pr)^0.4;

// By Dittus-Boelter Equation
//Nu = 0.0232 * Re^0.8 Pr^0.4 = (hd)/K
Nu = 0.0232 * Re_d * Pr_d;// Nusselt Number
h = (Nu*K)/d;//W/m^2-K
printf('The film heat transfer coefficient is %.0f W/sq.m K\n',h)// Deviation in answer due to direct substitution and wrongly calculated in the text book


