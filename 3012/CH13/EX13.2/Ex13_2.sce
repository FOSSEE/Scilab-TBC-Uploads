
// Given:-
// Part(a)
// The chemical equation
// a CH4 + b*(O2 + 3.76N2)  --  9.7CO2 + .5CO + 2.95O2 + 86.85N2 + cH2O
// Calculations
// Applying conservation of mass 
a = 9.7 + 0.5
c = 2.0*a
b = ((9.7)*(2.0)+(0.5)+((2.0)*(2.95))+c)/2.00
Ma = 28.97                                                                      // molar mass of air
MCH4 = 16.04                                                                    // molar mass of methane
// On a molar basis, the air–fuel ratio is
AFbar = (b*(1+3.76))/a
// On a mass basis
AF = AFbar*(Ma/MCH4)

// Results
printf( ' The air-fuel ratio on a molar basis is:  %f',AFbar)
printf( ' The air-fuel ratio on a mass basis is:  %.2f',AF)

// Part(b)
// The balanced chemical equation for the complete combustion of methane with the theoretical amount of air is
// CH4 + 2(O2 + 3.76N2)  --  CO2 + 2H2O + 7.52N2
// The theoretical air–fuel ratio on a molar basis is
// Calculations
AFbartheo = 2.00*(1+3.76)/1.0
// The percent theoretical air is
Ta = AFbar/AFbartheo
// Result
printf( ' The percent theoretical air is:  %.2f',Ta*100)

// Ppart(c)
// The mole fraction of the water vapor is
yv = 20.4/(100+20.4)
pv = yv*1
// Interpolating in Table A-2,
T = 57                                                                          // in degree celcius
// Result
printf( ' The dew point temperature of the products, in C, if the mixture were cooled at 1 atm is:  %f',T);
