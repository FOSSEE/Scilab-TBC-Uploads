
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 10

clear ;clc;

//Given data
RH = 0.6                // relative humidity moist air
T1 = 313.15             // Temp of air entering cooling device in K
T2 = 293.15             // temperature at air required to leave in K
P = 101.325             // pressure of entering air in kPa
V = 300                 // volumatric flow rate of air in m^3/min
M = 28.97               // molecular weight of air
R = 8.314               // gas constant

// data from psychometric chart
SH1 = 0.0284            // in kg H2O/kg air
pw1 = 4.4               // in kPa
h1 = 115                // in kJ/kg air
SH2 = 0.0148            // in kg H2O/kg air
h2 = 58                 // in kJ/kg air
hw3 = 83.95             // in kJ/kg at T = 20`C

// at TDB = 40 `C;  RH =  1 
ma1 = (101.325-pw1)*1e3*V*M/(R*1e3*T1)

// masss balance for H2O: ma1*SH1 = ma2*SH2 + mw3
mw3 = ma1*(SH1-SH2)         // amount of water condensed in kg/min

// Energy balance: ma1*h1 = ma2*h2 + mw3*hw3 + Qc
Qc = ma1*(h1-h2) - mw3*hw3      // in kJ/min
Qc = Qc*1e-3/60               // units conversion kJ/min to MW


// Output Results
mprintf('The amount of water condensed = %4.1f kg/min' , mw3);
mprintf('\n The rate of cooling required = %4.1f MW' , Qc);
