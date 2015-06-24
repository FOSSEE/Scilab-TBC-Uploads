// Given:-
p1 = 3.0                                              // entry pressure in Mpa
p2 = 0.5                                              // exit pressure in Mpa
T1 = 320.0                                            // entry temperature in degree celcius
T0 = 25.0                                             // in degree celcius
p0 = 1.0                                              // in atm

// From table A-4
h1 = 3043.4                                           // in kj/kg
s1 = 6.6245                                           // in kj/kg.k
h2 = h1                                               // from reduction of the steady-state mass and energy rate balances
s2 = 7.4223                                           // Interpolating at a pressure of 0.5 MPa with h2 = h1, units in kj/kg.k

// From table A-2
h0 = 104.89                                           // in kj/kg
s0 = 0.3674                                           // in kj/kg.k

// Calculations 
ef1 = h1-h0-(T0+273)*(s1-s0)                          // flow exergy at the inlet
ef2 = h2-h0-(T0+273)*(s2-s0)                          // flow exergy at the exit
// From the steady-state form of the exergy rate balance
Ed = ef1-ef2                                          // the exergy destruction per unit of mass flowing is

// Results 
printf( ' The specific flow exergy at the inlet is %.2f kJ/kg.',ef1)
printf( ' The specific flow exergy at the exit is %.2f kJ/kg.',ef2)
printf( ' The exergy destruction per unit of mass flowing is %.2f kJ/kg.',Ed)
