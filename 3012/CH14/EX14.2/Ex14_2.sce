
// Given:-
// Applying conservation of mass, the overall balanced chemical reaction equation is
// CO + .5O2    ------    zCO + (z/2)O2 + (1-z)CO2

// At 2500 K, Table A-27 gives
log10K = -1.44
// Part(a)
p = 1.0                                                                         // in atm
// Calculations
K = (10.0)**(log10K)                                                            // equilibrium constant
// Solving equation K = (z/(1-z))*(2/(2 + z))^.5 *(p/1)^.5 gives
z = 0.129
yCO = 2.0*z/(2.0 + z)
yO2 = z/(2.0 + z)
yCO2 = 2.0*(1.0 - z)/(2.0 + z)

// Results
printf( ' Part(a) mole fraction of CO is: %.3f ',yCO)
printf( ' Mole fraction of O2 is:  %.3f',yO2)
printf( ' Mole fraction of CO2 is:  %.3f',yCO2)

// Part(b)
p = 10.0                                                                          // in atm
// Solving equation K = (z/(1-z))*(2/(2 + z))^.5 *(p/1)^.5 gives
z = 0.062
yCO = 2.0*z/(2.0 + z)
yO2 = z/(2.0 + z)
yCO2 = 2.0*(1.0 - z)/(2.0 + z)

// Results
printf( ' Part(b) mole fraction of CO is:  %.3f',yCO)
printf( ' Mole fraction of O2 is:  %.3f',yO2)
printf( ' Mole fraction of CO2 is: %.3f ',yCO2)
