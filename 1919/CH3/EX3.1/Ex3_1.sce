// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 1

clear ;clc;

//Given data
N = 10          // total moles of methane in kmol
P = 6           // Pressure of Methane in MPa
T = 300         // Temperature of methane in K
Pc = 4.64        // Critical pressure constant of Methane in MPa
Tc = 190.6      // critical Temperature constant of Methane in K
R = 8.314       // Gas constant
// Vander waals constants 
a = 228.5       // units kPa(m^3/kmol)^2
b = 0.0427      // units m^3/kmol

P = P*1000      // unit conversion from Mpa to kpa
Pc = Pc*1000    // unit conversion from Mpa to kpa

// for ideal gas
V = N*R*T/P             // in m^3

// Van der waals equation of state 
deff('y=Vander(v0)', 'y = (P+a/(v0^2))*(v0-b) - R*T')
v = fsolve(0.5*V,Vander)    // Solving for volume with 0.5V as initial guess

v_tot = v * 10              // total volume of the tank for 10 kmol

// Redlich-Kwong equation of state:
a = (0.4278*(R^2)*(Tc^2.5))/Pc
b = 0.0867*R*Tc/Pc
P_RK = (R*T/(v-b)) - a/(v*(v+b)*T^0.5)
P_RK = P_RK/1000    // units conversion from kPa to MPa

mprintf('Total volume of the tank = %4.1f cubic meters' ,v_tot)
mprintf('\n Redlich-Kwong constant a  = %6.2f',a)
mprintf('\n Redlich-Kwong constant b  = %6.4f',b)
mprintf('\n Pressure from Redlich-Kwong equation = %4.3f MPa',P_RK)



