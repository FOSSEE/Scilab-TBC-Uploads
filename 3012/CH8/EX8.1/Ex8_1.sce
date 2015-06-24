// Given:-
p1 = 8.0                                            // pressure of saturated vapor entering the turbine in MPa
p3 = 0.008                                          // pressure of saturated liquid exiting the condenser in MPa
Wcycledot = 100.00                                  // the net power output of the cycle in MW

// Analysis
// From table A-3
h1 = 2758.0                                         // in kj/kg
s1 = 5.7432                                         // in kj/kg.k
s2 = s1
sf = 0.5926                                         // in kj/kg.k
sg = 8.2287                                         // in kj/kg.k
hf = 173.88                                         // in kj/kg
hfg = 2403.1                                        // in kj/kg
v3 = 1.0084e-3                                      // in m^3/kg

// State 3 is saturated liquid at 0.008 MPa, so
h3 = 173.88                                         // in kj/kg

// Calculations
x2 = (s2-sf)/(sg-sf)                                // quality at state 2
h2 = hf + x2*hfg
p4 = p1
h4 = h3 + v3*(p4-p3)*10**6*10**-3                   // in kj/kg

// Part(a)
//Mass and energy rate balances for control volumes around the turbine and pump give, respectively
wtdot = h1 - h2
wpdot = h4-h3

// The rate of heat transfer to the working fluid as it passes through the boiler is determined using mass and energy rate balances as
qindot = h1-h4

eta = (wtdot-wpdot)/qindot                           // thermal efficiency)

// Result for part a
printf( ' The thermal efficiency for the cycle is %.2f',eta)

// Part(b)
bwr = wpdot/wtdot                                    // back work ratio

// Result
printf( ' The back work ratio is %f',bwr)

// Part(c)
mdot = (Wcycledot*10**3*3600)/((h1-h2)-(h4-h3))       // mass flow rate in kg/h

// Result 
printf( ' The mass flow rate of the steam is %.2f kg/h .',mdot)
 
// Part(d)
Qindot = mdot*qindot/(3600*10**3)                     // in MW

// Results
printf('The rate of heat transfer,Qindot , into the working fluid as it passes through the boiler, is %.2f MW.',Qindot)

// Part(e)
Qoutdot = mdot*(h2-h3)/(3600*10**3)                   // in MW

// Results
printf( ' The rate of heat transfer,Qoutdot from the condensing steam as it passes through the condenser, is %.2f MW.',Qoutdot)

// Part(f)
// From table A-2
hcwout= 146.68                                       // in kj/kg
hcwin= 62.99                                         // in kj/kg
mcwdot= (Qoutdot*10**3*3600)/(hcwout-hcwin)          // in kg/h

// Results
printf( ' The mass flow rate of the condenser cooling water is %.2f kg/ h.',mcwdot)
