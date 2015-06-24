// Given:-
P1 = 30.0                                            // pressure of steam entering the turbine in bar
T1 = 400.0                                           // temperature of steam entering the turbine in degree celcius
V1 = 160.0                                           // velocity of steam entering the turbine in m/s
T2 = 100.0                                           // temperature of steam exiting in degree celcius
V2 = 100.0                                           // velocity of steam exiting in m/s
Wcvdot = 540.0                                       // work produced by turbine in kJ/kg of steam
Tb = 350.0                                           // temperature of the boundary in kelvin

// From table A-4 and table A-2
h1 = 3230.9                                          // specific enthalpy at entry in Kj/kg
h2 = 2676.1                                          // specific enthalpy at exit in kj/kg

// Calculations

// Reduction in mass and energy balance equations results in 
Qcvdot = Wcvdot + (h2 - h1)+ (V2**2-V1**2)/(2*(10**3))  // heat transfer rate

// From table A-2
s2 = 7.3549                                             // in kj/kg.k
// From table A-4
s1 = 6.9212                                             // in kj/kg.k

// From entropy and mass balance equations
sigmadot = -(Qcvdot/Tb) + (s2-s1)

// Results
printf( 'The rate at which entropy is produced within the turbine per kg of steam  flowing is %.2f kJ/kg.k',sigmadot)
