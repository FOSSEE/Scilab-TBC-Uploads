// Given:-
mdot = 0.08                                                                      // mass flow rate in kg/s
// Analysis
// At the inlet to the compressor, the refrigerant is a saturated vapor at 10C, so from Table A-10,
h1 = 241.35                                                                      // in kj/kg
s1 = .9253                                                                       // in kj/kg.k
// Interpolating in Table A-12 gives
h2s = 272.39                                                                     // in kj/kg.k
// State 3 is a saturated liquid at 9 bar, so
h3 = 99.56                                                                       // in kj/kg
h4 = h3                                                                          // since The expansion through the valve is a throttling process

// Part(a)
Wcdot = mdot*(h2s-h1)                                                            // The compressor power input in KW
// Result
printf( ' \nThe compressor power in kw is:  %.2f',Wcdot)

// Part(b)
Qindot = mdot*(h1-h4)*60/211                                                     // refrigeration capacity in tons
// Result
printf( ' \nThe refrigeration capacity in tons is:  %.2f',Qindot)

// Part(c)
beta1 = (h1-h4)/(h2s-h1)
// Result
printf( ' \nThe coefficient of performance is:  %.2f',beta1)
