// Given:-
P1 = 1.00                                       // pressure of entering steam in Mpa
T1 = 593.00                                     // temperature of entering steam in kelvin
V1 = 30.00                                      // velocity of entering steam in m/s
P2 = 0.3                                        // pressure of exit steam in Mpa
T2 = 453.00                                     // temperature of exit steam in kelvin

// From table A-4, at T1 = 593 kelvin and P1 = 1 Mpa;
// and at T2 = 453 kelvin and P2 = .3 Mpa
h1 = 3093.9                                     // in kj/kg
s1 = 7.1962                                     // in kj/kg.k
h2 = 2823.9                                     // in kj/kg


// Interpolating in table A-4
h2s = 2813.3                                    // in kj/kg

// Calculations
V2squareby2 = h1 - h2 + (V1**2)/2000
V2squareby2s = h1 - h2s + (V1**2)/2000
eta = V2squareby2/V2squareby2s

// Results
printf( ' The nozzle efficiency is %.4f',eta)
