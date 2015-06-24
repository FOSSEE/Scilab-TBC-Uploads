// Given:-
// At inlet 1:-
p1= 7.0                                        // pressure in bar
T2= 200.0                                      // temperature in degree celcius
m1dot= 40.0                                    // mass flow rate in kg/s

// At inlet 2:-
p2= 7.0                                        // pressure in bar
T2= 40.0                                       // temperature in degree celcius
A2= 25.0                                       // area in cm^2

// At exit:-
p3= 7.0                                        // pressure in bar
AV3= 0.06                                      // Volumetric flow rate through wxir in m^3/s

// From table A-3
v3 = (1.108)*(10**(-3))                        // specific volume at the exit in m^3/kg

// from table A-2
v2= (1.0078)*(10**(-3))                        // specific volume in state 2 in m^3/kg

// Calculation:-
m3dot= AV3/v3                                  // mass flow rate at exit
m2dot = m3dot-m1dot                            // mass flow rate at inlet 2
V2= (m2dot*v2)/(A2*(10**(-4)))

// Results:-
printf( ' The mass flow rate at the inlet 2 is %.2f kg/s.',m2dot)
printf( ' The mass flow rate at the exit is %.2f kg/s.',m3dot)
printf( ' The velocity at the inlet is %.2f m/s.', V2)
