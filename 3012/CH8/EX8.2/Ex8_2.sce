// Given:-
etat= .85                                   // given that the turbine and the pump each have an isentropic efficiency of 85%
// Analysis
// State 1 is the same as in Example 8.1, so
h1 = 2758.0                                 // in kj/kg
s1 = 5.7432                                 // in kj/kg.k
// From example 8.1 
h1 = 2758.0                                 // in kj/kg
h2s = 1794.8                                // in kj/kg
// State 3 is the same as in Example 8.1, so
h3 = 173.88                                 // in kj/kg

// Calculations
h2 = h1 - etat*(h1-h2s)                     // in kj/kg
wpdot = 8.06/etat                           // where the value 8.06 is obtained from example 8.1

h4 = h3 + wpdot

// Part(a)
eta = ((h1-h2)-(h4-h3))/(h1-h4)             // thermal efficiency

// Result for part (a)
printf( ' Thermal efficiency is:  %.3f',eta)

// Part(b)
Wcycledot = 100                             // given,a net power output of 100 MW
// Calculations
mdot = (Wcycledot*(10**3)*3600)/((h1-h2)-(h4-h3))
// Result for part (b)
printf( ' The mass flow rate of steam, in kg/h, for a net power output of 100 MW is %.3f kg/h.  ',mdot)

// Part(c)
Qindot = mdot*(h1-h4)/(3600 * 10**3)
// Result
printf( ' The rate of heat transfer Qindot into the working fluid as it passes through the boiler, is %.3f MW.',Qindot)

// Part(d)
Qoutdot = mdot*(h2-h3)/(3600*10**3)
// Result
printf( ' The rate of heat transfer  Qoutdotfrom the condensing steam as it passes through the condenser, is   %.3f MW.',Qoutdot)

// Part(e)
// From table A-2
hcwout = 146.68                             // in kj/kg
hcwin = 62.99                               // in kj/kg
mcwdot = (Qoutdot*10**3*3600)/(hcwout-hcwin)
// Result
printf( ' The mass flow rate of the condenser cooling water, is:  %.3f kg/h.',mcwdot)
