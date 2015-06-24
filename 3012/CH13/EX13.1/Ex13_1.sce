
// Given:-
// Part(a)
// The combustion equation can be written in the form of 
// C8H18 + a(O2 + 3.76N2) - b CO2 + c H2O + d N2
// Using conservation of mass principle
b = 8.00
c = 18.00/2.00
a = (2.00*b+c)/2.00
d = 3.76*a

// The air–fuel ratio on a molar basis is
AFbar = a*(1+3.76)/1.00
Ma = 28.97                                                                      // molar mass of air
MC8H18 = 114.22                                                                 // molar mass of C8H18
// The air–fuel ratio expressed on a mass basis is
AF = AFbar*(Ma/MC8H18)

// Result
printf( ' The air–fuel ratio on a molar basis is:  %f', AFbar);
printf( ' The air–fuel ratio expressed on a mass basis is:  %.2f',AF)

// Part(b)
// For 150% theoretical air, the chemical equation for complete combustion takes the form
// c8H18 + 1.5*12.5*(O2 + 3.76N2) --  b CO2 + c H2O + d N2 + e O2
// Using conservation of mass
// Calculations
b = 8.00
c =18.00/2.00
e = (1.5*12.5*2 - c -2*b)/2.00
d = 1.5*12.5*3.76
// The air–fuel ratio on a molar basis is
AFbar = 1.5*12.5*(1+3.76)/1
// The air–fuel ratio expressed on a mass basis is
AF = AFbar*(Ma/MC8H18)

// Results
printf( ' The air–fuel ratio on a molar basis is:  %f', AFbar)
printf( ' The air–fuel ratio expressed on a mass basis is:  %.2f',AF)
