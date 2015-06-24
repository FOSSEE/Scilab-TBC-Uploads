// Given:-
V = 0.25             // volume of tank in m3
v = 1.673            // specific volume in m3/kg obtained using table A-2

// State 1
T1 = 100.0            // initial temperature in degree celcius
u1 = 2506.5           // specific internal energy in state 1 in KJ/Kg obtained from table A-2

// State 2
p2 = 1.5              // final pressure in bars
T2 = 273.0            // temperature in state 2 in degree celcius obtained from table A-4
u2 = 2767.8           // specific internal energy in state 2 in KJ/Kg obtained from table A-4

// Calculations
m = V/v               // mass of the system in kg
DeltaU = m*(u2-u1)    // change in internal energy in KJ
W = - DeltaU          // from energy balance

// Results
printf( ' The temperature at the final state in is %.2f degree celcius.',T2)
printf( ' The work during the process is %f KJ.',W);
