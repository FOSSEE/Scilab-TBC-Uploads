
// Given:-
yCO = 0.298
p = 1                                                                           // in atm
pref = 1                                                                        // in atm
// With this value of K, table A-27 gives
T = 2881

// Calculations
// Solving yCO = 2z/(2 + z)
z = 2*yCO/(2 - yCO)
K = (z/(1-z))*(z/(2 + z))**.5*(p/pref)**.5

// Result
printf( ' The temperature T of the mixture in kelvin is:  %f',T);
