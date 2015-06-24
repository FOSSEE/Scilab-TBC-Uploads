// Given:-
// Part(a)
v = 1.00/998.21                                                             // specific volume of water in m^3/kg
T = 293.00                                                                  // given temperature in kelvin
beta = 206.6e-6                                                             // volume expansivity in /K
k = 45.90e-6                                                                // isothermal compressibility in /bar
// Interpolating in Table A-19
cp = 4.188                                                                  // in kj/kg.k
// Calculations
cpv = (v*T*beta**2.00/k)*10**2                                              // in kj/kg.k
cv = cp-cpv                                                                 // in kj/kg.k
errorPercentage = 100*(cp-cv)/cv
// Result
printf( ' The percentage error is:  %.2f',errorPercentage)

// Part(b)
// Calculations
K = cp/cv                                                                   // specific heat ratio
c = ((K*v/k)*10**5)**0.5                                                      // velocity of sound in m/s
// Result
printf( ' The velocity of sound is:  %.2f m/s',c)
