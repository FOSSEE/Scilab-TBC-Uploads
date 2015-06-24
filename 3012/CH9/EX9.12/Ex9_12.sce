// Given:-
Ta = 240.00                                                                      // in kelvin
pa = 0.8                                                                         // in bar
Va = 278.00                                                                      // in m/s
PR = 8.00                                                                        // pressure ratio across the compressor
T3 = 1200.00                                                                     // in kelvin
p5 = 0.8                                                                         // in bar

// From table A-22
ha = 240.02                                                                      // in kj/kg
h1 = ha + ((Va**2)/2)*10**-3                                                     // in kj/kg
// Interpolating in Table A-22 gives
pr1 = 1.070
pra = .6355

// Interpolating in Table A-22, we get
h2 = 505.5                                                                        // in kj/kg
// At state 3 the temperature is given as T3 = 1200 K. From Table A-22
h3 = 1277.79                                                                      // in kj/kg


// Interpolating in Table A-22 with h4, gives
pr4 = 116.8
// pr data from table A-22 gives
pr4 = 116.00
pr3 = 238.00
// From table A-22
h5 = 621.3                                                                        // in kj/kg

// The expansion through the nozzle is isentropic to
p5 = .8                                                                           // in bars

// Calculations
p1 = (pr1/pra)*pa                                                                 // in bars
// With the help of assumption, 'The turbine work output equals the work required to drive the compressor.',
h4 = h3+h1-h2                                                                     // in kj/kg
p2 = PR*p1                                                                        // in bars
// Using assumption 'There is no pressure drop for flow through the combustor', 
p3 = p2
p4 = p3*(pr4/pr3)                                                                 // in bars
pr5 = pr4*(p5/p4)
V5 = ((2*(h4-h5)*10**3))**(0.5)                                                   // the velocity at the nozzle exit in m/s

// Results
printf( ' The velocity at the nozzle exit in m/s is: %.2f', V5)
printf( ' pa in bars =  %.2f',pa)
printf( ' p1 in bars =  %.2f',p1)
printf( ' p2 in bars =  %.2f',p2)
printf( ' p3 in bars =  %.2f',p3)
printf( ' p4 in bars =  %.2f',p4)
printf( ' p5 in bars =  %.2f',p5)
