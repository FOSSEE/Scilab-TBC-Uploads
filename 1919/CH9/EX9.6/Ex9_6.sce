
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 6

clear ;clc;

//Given data
V = 20*40*6             // dimensions of auditorium in cubic meters
RH = 0.6                // relative humidy
P = 101.325             // pressure of auditorium in kPa
T = 303.15              // Temperature auditorium in K
Ps_20 = 2.339           // saturation pressure of water at 20 degree C
Ps_25 = 3.169           // saturation pressure of water at 25 degree C
Ps_30 = 4.246           // saturation pressure of water at 30 degree C
M = 18                  // molecular weight of water
R = 8.314               // gas constant

// Calculations
pw = RH*Ps_30           // partial pressure of water at 30 degree C

SH = 0.622*pw/(P-pw)    // specific humidity of air

mw = pw*V*M/(R*T)       // mass of water vapor in the auditorium

ps = pw                 // at dew point from steam table T = 21.3 degree C

// Output Results
mprintf('(a) Partial pressure of water at 30 degree C = %4.4f kPa' , pw);
mprintf('\n (b) Specific humidity of air = %4.3f kg H20/kg air' , SH);
mprintf('\n (c) Mass of water vapor in the auditorium = %4.2f kg' , mw);
mprintf('\n (d) Dew point  = %4.4f kPa' , ps);

