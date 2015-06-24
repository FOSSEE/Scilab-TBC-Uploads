// Given:-
// State 
P1 = 10*(10**5)                        // initial pressure in pascal
T1 = 400.0                             // initial temperature in degree celcius
v1 = 0.3066                            // specific volume in state 1 in m3/kg obtained from table A-4
u1 = 2957.3                            // specific internal energy in state 1 in KJ/Kg obtained from table A-4

// State 2

v2 = 0.1944                            // specific volume in state 2 in m3/kg obtained from table A-3
w2to3 = 0                              // work in process 2-3


// State 3 
v3 = v2
vf3 = 1.0905*(10**(-3))                // specific volume of fluid in state 3 from table A-2
vg3 = 0.3928                           // specific volume of gas in state 3 from table A-2
uf3 = 631.68                           // specific internal energy for fluid in state 3 from table A-2
ug3 = 2559.5                           // specific internal energy for gas in state 3 from table A-2

// Calculations
w1to2 = (P1*(v2-v1))/1000              // work in KJ/Kg in process 1-2
W = w1to2 + w2to3                      // net work in KJ/kg
x3 = (v3-vf3)/(vg3-vf3)
u3 = uf3+x3*(ug3-uf3)                  // specific internal energy in state 3 in Kj/Kg
q = (u3-u1) + W                        // heat transfer in Kj/Kg

// Results
printf( ' The work done in the overall process is %f KJ/kg.',W);
printf( ' The heat transfer in the overall process is %f KJ/kg.',q);
