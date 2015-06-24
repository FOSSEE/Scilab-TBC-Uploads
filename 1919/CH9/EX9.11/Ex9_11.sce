
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 11

clear ;clc;

//Given data
RH1 = 0.8               // relative humidity moist air entering
T1 = 308.15             // Temp of air entering cooling device in K
P = 101.325             // pressure of entering air in kPa
RH4 = 0.4               // relative humidity moist air leaving
T4 = 293.15             // temperature at air required to leave in K
m = 2                   // flowrate dry air in kg/s


// data from psychometric chart
SH1 = 0.029             // in kg H2O/kg air
h1 = 110                // in kJ/kg air
SH4 = 0.0055            // in kg H2O/kg air
h4 = 34                 // in kJ/kg air
SH2 = SH4
RH2 = 1
h2 = 19                 // in kJ/kg air
T2 = 278.15             // in K
hw3 = 20.97             // at 5 degree C in kJ/kg

// masss balance for H2O: ma1*SH1 = ma2*SH2 + mw3
mw3 = m*(SH1-SH2)         // amount of water condensed in kg/s

// Energy balance: ma1*h1 = ma2*h2 + mw3*hw3 + Qc
Qc = m*(h1-h2) - mw3*hw3      // in kJ/s

Qh = m*(h4-h2)


// Output Results
mprintf('The amount of water condensed in refrigeration unit = %4.3f kg/s' , mw3);
mprintf('\n The rate of cooling required in refrigeration unit  = %2.0f kW' , Qc);
mprintf('\n The rate of heating required in refrigeration unit  = %2.0f kW' , Qh);
