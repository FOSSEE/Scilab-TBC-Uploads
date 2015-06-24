
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 9

clear ;clc;

//Given data
P1 = 2.5                // entering pressure of superheated steam in MPa
T1 = 523.15             // entering temperature of superheated steam in K
P2 = 0.5                // pressure at fraction of steam is extracted in MPa
P_C =  10               // condenser pressure of steam in kPa

// Steam at 2.5 MPa and 523.15 K
h7 = 2880.1             // in kJ/kg
s7 = 6.4085             // in kJ/kg K

// Steam at 0.5 MPa
h3 = 640.23               // in kJ/kg
hfg = 2108.5              // in kJ/kg
vf = 0.001010            // in m^3/kg
sf = 1.8607               // in kJ/kg K
sfg = 4.9606              // in kJ/kg K

s8 = s7
X8 = (s8-sf)/sfg
h8 = h3 + X8*hfg         // in kJ/kg 

// Steam at 10 kPa
h1 = 191.83              // in kJ/kg
hfg = 2392.8             // in kJ/kg
vf = 0.001010            // in m^3/kg
sf = 0.6493              // in kJ/kg K
sfg = 7.5009             // in kJ/kg K

s9 = s7
X9 = (s9-sf)/sfg
h9 = h1 + X9*hfg             // in kJ/kg

h2_h1 = vf*(P2*1e3-P_C)      // h2_h1 = h2-h1   in kJ/kg

h2 = h1 + h2_h1              // in kJ/kg

// material and energy balances
// h3 = (1-Y)*h2 + Y*h8   where Y = m8/m3
deff('y=rate(Y)', 'y = h3 - (1-Y)*h2 - Y*h8 ') 
Y = fsolve(0,rate)

h4_h3 = vf*(P1*1e3-P_C)      // h4_h3 = h4-h3   in kJ/kg

h4 = h3 + h4_h3              // in kJ/kg

n = ((h7-h4)-(1-Y)*(h9-h1))/(h7-h4)

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

