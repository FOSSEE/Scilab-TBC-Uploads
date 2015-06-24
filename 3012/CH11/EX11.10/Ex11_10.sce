
// Given:-
// Analysis
V = 0.241                                                                        // volume of the mixture in m^3
T = 511.00                                                                       // temperature of the mixture in kelvin
n1 = 0.18                                                                        // number of moles of methane in kmol
n2 = 0.274                                                                       // number of moles of butane in kmol
Rbar = 8314                                                                      // universal gas constant in (N.m)/(kmol.K)

// Calculations
n = n1 + n2                                                                      // The total number of moles of mixture
y1 = n1/n                                                                        // mole fraction of methane
y2 = n2/n                                                                        // mole fraction of butane
vbar = V/(n)                                                                     // The specific volume of the mixture on a molar basis in m^3/kmol

// Part(a)
p = (Rbar*T/vbar)*10**-5                                                         // in bar
// Result
printf( ' The pressure in bar obtained using ideal gas equation is:  %.2f',p)

// Part(b)
// From table A-1
Tc1 = 191.00                                                                     // critical temperature for methane in kelvin 
Pc1 = 46.4                                                                       // critical pressure for methane in bar
Tc2 = 425.00                                                                     // critical temperature for butane in kelvin
Pc2 = 38.00                                                                      // critical pressure for butane in bar
Z = 0.88


// Calculations
Tc = y1*Tc1 + y2*Tc2                                                             // critical temperature in kelvin
Pc = y1*Pc1 + y2*Pc2                                                             // critical pressure in bar
TR = T/Tc                                                                        // reduced temperature of the mixture
vRdash= vbar*Pc/(Rbar*Tc)
p = ((Z*Rbar*T)/vbar)*10**-5                                                     // mixture pressure in bar
// Result
printf( ' Pressure obtained using Kay’s rule together with the generalized compressibility chart, is: %.2f ',p)

// Part(c)
// Table A-24 gives the following van der Waals constants values for methane
a1 = 2.293                                                                       // in (m^3/kmol)^2
b1 = 0.0428                                                                      // in m^3/kmol
// Table A-24 gives the following van der Waals constants values for butane
a2 = 13.86                                                                       // in (m^3/kmol)^2
b2 = 0.1162                                                                      // in m^3/kmol

a = (y1*a1**.5 + y2*a2**.5)**2                                                   // in bar*(m^3/kmol)^2
b = y1*b1+y2*b2                                                                  // in m^3/kmol
// From van der Waals equation
p = ((Rbar*T)/(vbar-b))*10**-5 - a/(vbar**2)
printf( ' The pressure in bar from van der Waals equation is:   %.2f',p)

// Part(d)
// For methane
TR1 = T/Tc1
vR1dash = (.241/.18)*10**5*Pc1/(Rbar*Tc1)
Z1 = 1.00
// For butane
TR2 = T/Tc2
vR2dash = (.88*10**5*Pc2)/(Rbar*Tc2)
Z2 = 0.8
Z = y1*Z1 + y2*Z2
// Accordingly, the same value for pressure as determined in part (b) using Kay’s rule results:
p = 70.4

// Result
printf( ' The pressure in bar obtained using the rule of additive pressures employing the generalized compressibility chart is:  %.2f',p)
