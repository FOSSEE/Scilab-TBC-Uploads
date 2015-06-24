// Given:-
Tc = 273.00                                                                        // temperature of cold region in kelvin
Th = 299.00                                                                        // temperature of hot region in kelvin
mdot = 0.08                                                                        // mass flow rate in kg/s

// Analysis
// At the inlet to the compressor, the refrigerant is a saturated vapor at 0C, so from Table A-10
h1 = 247.23                                                                        // in kj/kg
s1 = 0.9190                                                                        // in kj/kg.k

// The pressure at state 2s is the saturation pressure corresponding to 26C, or
p2 = 6.853                                                                         // in bars
// The refrigerant at state 2s is a superheated vapor with
h2s = 264.7                                                                        // in kj/kg
// State 3 is saturated liquid at 26C, so
h3 = 85.75                                                                         // in kj/kg
h4 = h3                                                                            // since The expansion through the valve is a throttling process

// Part(a)
Wcdot = mdot*(h2s-h1)                                                              // The compressor work input in KW
printf( ' The compressor power, in kW, is:  %.2f',Wcdot)

// Part(b)
Qindot = mdot*(h1-h4)*60/211                                                       // refrigeration capacity in ton
printf( ' The refrigeration capacity in tons is:  %.2f',Qindot)

// Part(c)
beta1 = (h1-h4)/(h2s-h1)
printf( ' The coefficient of performance is:  %.2f',beta1)

// Part(d)
betamax = Tc/(Th-Tc)
printf( ' The coefficient of performance of a Carnot refrigeration cycle operating between warm and cold regions at 26 and 0C, respectively is:  %.2f',betamax);
