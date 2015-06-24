
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 12

clear ;clc;

//Given data
RH1 = 0.3               // relative humidity of summer day atmospheric air
T1 = 313.15             // Temperature of air in summer day in K
V = 3                   // evaporative cooler rate in m^3/s
t = 10                  // cooler operation time in hours
M = 28.97               // molecular weight of air
R = 8.314               // gas constant

// data from psychometric chart for T = 40`C and RH = 0.3
SH1 = 0.0135            // in kg H2O/kg air
pw1 = 2.05              // in kPa
// Follow the constant wet bulb temperature line(23`C) from that point 
// till it intersects with RH = 0.8
SH2 = 0.0184            // in kg H2O/kg air
T2 = 27.3               // in degree C

ma = (101.325-pw1)*1e3*V*M/(R*1e3*T1)

mw = ma*(SH2-SH1)

q_wat = mw*3600*10      // quantity of water required for 10 hours in kg


// Output Results
mprintf('The temperature of the air leaving the cooler = %4.1f degree C' , T2);
mprintf('\n The specific humidity of air leaving cooler = %4.4f kg H2O/kg air' , SH2);
mprintf('\n Quantity of water required to operate cooler for 10 hours = %4.1f kg',q_wat);
