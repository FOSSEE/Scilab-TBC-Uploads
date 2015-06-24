// Given:-
T1 = 300.00                                                                     // in kelvin
AV = 5.00                                                                       // volumetric flow rate in m^3/s
p1 = 100.00                                                                     // in kpa
pr = 10.00                                                                      // compressor pressure ratio
T3 = 1400.00                                                                    // turbine inlet temperature in kelvin
Wt_ms = 706.9                                                                   // kJ/kg
Wc_m = 279.7                           
// Analysis
// At state 1, the temperature is 300 K. From Table A-22,
h1 = 300.19                                                                     // in kj/kg
pr1 = 1.386


// Interpolating in Table A-22,
h2 = 579.9                                                                      // in kj/kg
// From Table A-22
h3 = 1515.4                                                                     // in kj/kg
pr3 = 450.5

// Interpolating in Table A-22, we get
h4 = 808.5                                                                      // in kj/kg

// calculations
Wtbym = 0.8*Wt_ms
Wcbym = Wc_m/0.8
h2 = 300.19 + Wcbym

//pr2 = pr*pr1
//pr4 = pr3*1/pr


// Part(a)
//eta = ((h3-h4)-(h2-h1))/(h3-h2)                                                 // thermal efficiency
Qinbym = h3 - h2
n = (Wtbym-Wcbym)/Qinbym
// Result
printf( '\n The thermal efficiency is : %.3f ',n)

// Part(b)
//bwr = (h2-h1)/(h3-h4)                                                           // back work ratio
bwr = Wcbym/Wtbym
// Result
printf( '\n The back work ratio is : %.3f',bwr)

// Part(c)
R = 8.314                                                                       // universal gas constant, in SI units
M = 28.97                                                                       // molar mass of air in grams
// Calculations
//mdot = AV*p1/((R/M)*T1)                                                         // mass flow rate in kg/s
Wcycledot = 5.807*(Wcbym-Wtbym)                                              // The net power developed
// Result
printf( '\n The net power developed, is : %.f kW .',-Wcycledot)
