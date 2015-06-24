clear;
clc;

// Illustration 2.11
// Page: 129

printf('Illustration 2.11 -  Page: 129\n\n');

// solution
//*****Data*****//
// a-water   b-air
D = 25.4*10^-3; // [diameter of wetted wall tower, m]
Gy = 10; // [mass velocity, kg/square m.s]
T1 = 308; // [K]
P = 101.3; // [kPa]
p_a1 = 1.95; // [partial pressure of water vapor, kPa]
R = 8.314; // [cubic m.Pa/mole.K]
M_a = 18; // [gram/mole]
Cpa = 1.88; // [kJ/kg.K]
//*****//

// Properties of dry air at 308 K and 1 atm pressure are
u = 1.92*10^-5; // [kg/m.s]
row = 1.14; // [kg/cubic m]
D_ab = 0.242*10^-4; // [square m/s]
Sc = 0.696; // [Schmidt number]
Cp = 1.007; // [kJ/kg.K]
k = 0.027; // [W/m.K]
Pr = 0.7; // [Prandtl number]

Re = D*Gy/u; // [Renoylds number]
// From equation 2,74
Sh = 0.023*Re^0.83*Sc^0.44; // [Sherwood number]
// From Table 2.1
kg = Sh*D_ab/(R*T1*D)*1000; // [mole/square m.s.kPa]
printf("kg is %e\n",kg);
// To estimate the heat-transfer coefficient, we use the Dittus-Boelter equation for cooling, equation 2.80
Nu = 0.023*Re^0.8*Pr^0.3; // [Nusselt number]
// From Table 2.1
h = Nu*k/D; // [W/square m.K]
printf("h is %f\n",h);
T =373.15; // [K]
lambda_a = 40.63; // [kJ/mole]
Tc = 647.1; // [K]

// Solution of simultaneous equation 2.78 and 2.79
function[f]=F(e) 
    f(1) = kg*(p_a1 - exp(16.3872-(3885.7/(e(1)-42.98))))-e(2);
    f(2) = e(2)*M_a*Cpa*(T1-e(1))/(1-exp(-e(2)*M_a*Cpa/h)) + 1000*e(2)*lambda_a*((1-(e(1)/Tc))/(1-(T/Tc)))^0.38;
    funcprot(0);
endfunction

// Initial guess
e = [292 -0.003];
y = fsolve(e,F);
Ti = y(1);
Na = y(2);

printf("The temperature of the liquid water and the rate of water evaporation is %f K and %e mole/square m.s respectively",Ti,Na);