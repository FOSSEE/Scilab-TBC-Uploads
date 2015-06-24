
// Given:-
AV1 = 142.0                                                                       // in m^3/min
T1 = 5.0                                                                          // in degree celcius
omega1 = 0.002
AV2 = 425.0                                                                       // in m^3/min
T2 = 24.0                                                                         // in degree celcius
psi2 = 0.5
p = 1.0                                                                           // in bar


// Part(a)
// From the psychrometric chart, Fig. A-9.
va1 = 0.79                                                                        // in m^3/kg
va2 = 0.855                                                                       // in m^3/kg
omega2 = 0.0094
// Calculations
ma1dot = AV1/va1                                                                  // in kg/min
ma2dot = AV2 /va2                                                                 // in kg/min
omega3 = (omega1*ma1dot+omega2*ma2dot)/(ma1dot + ma2dot)                    
// Result
printf( '\n The humidity ratio is:  %.4f',omega3);

// Part(b)
// Reduction of the energy rate balance gives
// (ha + omega*hv)3 = [ma1dot*(ha + omega*hv)1 + ma2dot*(ha + omega*hv)2]/(ma1dot+ma2dot)
// With (ha + omega*hv)1 = 10kj/kg and (ha + omega*hv)2 = 47.8kj/kg from figure A-9
LHS = (ma1dot*10+ma2dot*47.8)/(ma1dot + ma2dot)

// This value for the enthalpy of the moist air at the exit, together with the previously determined value for omega3, fixes the state of the exiting moist air. From inspection of Fig. A-9,
T3 = 19.0                                                                         // in degree celcius
// Result
printf( '\n The temperature of the exiting mixed stream in degree celcius T3 is :  %.2f',T3)
