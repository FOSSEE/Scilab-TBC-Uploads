
// Given:-
// Part(a)
// For combustion of liquid octane with the theoretical amount of air, the chemical equation is
// C8H18(l) + 12.5 O2 + 47N2   ------ 8 CO2 + 9 H2O(g) + 47N2
// with enthalpy of formation data from Table A-25
hfbarC8H18 = -249910.0                                                            // in kj/kmol
hfbarCO2 = -393520.0
hfbarH2O = -241820.0

// Calculations
RHS = hfbarC8H18 -(8*hfbarCO2 + 9*hfbarH2O)                                     // in kj/kmol
// at temperature 2400k
LHS1 = 5089337.0                                                                  // in kj/kmol
// at temperature 2350 k
LHS2 = 4955163.0                                                                  // in kj/kmol
// Interpolation between these temperatures gives
Tp = 2400.00 + ((2400.0-2350.0)/(LHS1-LHS2))*(RHS-LHS1)
// Result
printf( ' The temperature in kelvin with theoretical amount of air is:  %.2f', Tp)

// Part(b)
// For complete combustion of liquid octane with 400% theoretical air, the chemical equation is
// C8H18(l) + 50O2 + 188N2  -------  8CO2 + 9H2O + 37.5O2 + 188N2

// Proceeding iteratively as part(a)
Tp = 962                                                                        // in kelvin

// Result
printf( ' The temperature in kelvin using 400 percent theoretical air is: %.2f ',Tp)
