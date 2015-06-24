// Given:-
T1 = 480.0                                                                        // temperature of steam entering the turbine in degree celcius
p1 = 8.0                                                                          // pressure of steam entering the turbine in MPa
Pcond = 0.008                                                                     // condenser pressure in MPa
etat = 0.85                                                                       // turbine efficiency
Wcycledot = 100.0                                                                 // net power output of the cycle


// Analysis
// With the help of steam tables
h1 = 3348.4                                                                       // in kj/kg
h2 = 2832.8                                                                       // in kj/kg
s2 = 6.8606                                                                       // in kj/kg.k
h4 = 173.88                                                                       // in kj/kg
// With s3s = s2, the quality at state 3s is x3s=  0.8208; using this, we get
h3s = 2146.3                                                                      // in kj/kg

// Calculations
// The specific enthalpy at state 3 can be determined using the efficiency of the second-stage turbine
h3 = h2 - etat*(h2-h3s)

// State 6 is saturated liquid at 0.7 MPa. Thus,
h6 = 697.22                                                                        // in kj/kg
// For determining specific enthalpies at states 5 and 7 ,we have
p5 = 0.7                                                                           // in MPa
p4 = 0.008                                                                         // in MPa
p7 = 8.0                                                                           // in MPa
p6 = 0.7                                                                           // in MPa
v4 = 1.0084e-3                                                                     // units in m^3/kg,obtained from steam tables
v6 = 1.1080e-3                                                                     // units in m^3/kg,obtained from steam tables

// Calculations
h5 = h4 + v4*(p5-p4)*10**6*10**-3                                                  // in kj/kg
h7 = h6 + v6*(p7-p6)*10**3                                                         // in kj/kg

// Applying mass and energy rate balances to a control volume enclosing the open heater, we find the fraction y of the flow extracted at state 2 from
y = (h6-h5)/(h2-h5)

// Part(a)
wtdot = (h1-h2) + (1-y)*(h2-h3)                                                     // the total turbine work output, units in KJ/Kg
wpdot = (h7-h6) + (1-y)*(h5-h4)                                                     // The total pump work per unit of mass passing through the first-stage turbine,in KJ/kg
qindot = h1 - h7                                                                    // in kj/kg
eta = (wtdot-wpdot)/qindot

// Results
printf( ' The thermal efficiency is: %.2f',eta)

// Part(b)
m1dot = (Wcycledot*3600*10**3)/(wtdot-wpdot)

// Results
printf( ' The mass flow rate of steam entering the first turbine stage, is: %.2f kg/h.',m1dot)
