
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 13

clear ;clc;

//Given data
mw3 = 1000              // cooling tower supply rate in kg/min
T1 = 303.15             // Temp of air entering cooling tower in K
RH1 = 0.3               // relative humidity of air entering cooler
T2 = 308.15             // Temp of air leaving cooling tower in K
RH2 = 0.8               // relative humidity of air leaving cooler
T3 = 318.15             // Temp of water entering cooling tower in K
T4 = 300.15             // Temp of water leaving cooling tower in K

// subscript 1 and 2 denotes the state of air entering and leaving the cooling tower respectively
// subscript 3 and 4 denotes the state of water entering and leaving the cooling tower respectively

// data from psychometric chart for T = 30 degree C and RH = 0.3
SH1 = 0.0078            // in kg H2O/kg air
h1 = 51                 // in kJ/kg air
// data from psychometric chart for T = 35 degree C and RH = 0.8
SH2 = 0.029             // in kg H2O/kg air
h2 = 110                // in kJ/kg air
hw3 = 188.45            // in kJ/kg
hw4 = 113.25            // in kJ/kg

// mass balance for H2O: 
//mw3-mw4 = ma*(SH2-SH1)

// energy balance gives:
// mw3*hw3 - mw4*hw4 = ma*(h2-h1)

// x(1) = ma; x(2)= mw4;
function[f] =F(x)
    f(1) = mw3-x(2)-x(1)*(SH2-SH1);
    f(2) = mw3*hw3 - x(2)*hw4 -x(1)*(h2-h1);
endfunction
x = [10 10];
y = fsolve(x,F)

ma = y(1);                      // air flow rate in kg/min
mw4 = y(2);

wat_mak = mw3-mw4;              // make up water required

// Output Results
mprintf('Make up water required = %4.2f kg/min' , wat_mak);
mprintf('\n Air flow rate = %4.1f kg/min' , ma);
