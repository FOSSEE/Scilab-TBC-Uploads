// Given:-
v = 2450.00                                    // volume of gaseous products in cm^3
P = 7.00                                       // pressure of gaseous product in bar
T = 867.00                                     // temperature of gaseous product in degree celcius
T0 = 300.00                                    // in kelvin
P0 = 1.013                                     // in bar

// From table A-22
u = 880.35                                     // in kj/kg
u0 = 214.07                                    // in kj/kg
s0T = 3.11883                                  // in kj/kg.k
s0T0 = 1.70203                                 // in kj/kg.k

// Calculations

e = (u-u0) + (P0*(8.314/28.97)*(((T+273)/P)-(T0/P0))) - T0*(s0T-s0T0-(8.314/28.97)*log(P/P0))  // kj/kg

// Results
printf( ' The specific exergy of the gas is %.3f kJ/kg.',e)
