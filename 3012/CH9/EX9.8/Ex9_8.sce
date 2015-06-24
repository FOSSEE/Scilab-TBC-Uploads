// Given:-
// Analysis
// States 1, 2, and 3 are the same as in Example 9.4:
h1 = 300.19                                                                     // in kj/kg
h2 = 579.9                                                                      // in kj/kg
h3 =  1515.4                                                                    // in kj/kg
// The temperature at state b is the same as at state 3, so   
hb = h3

pa = 300.00                                                                     // in kpa
p3 = 1000.00                                                                    // in kpa
// From table A-22
pr3 = 450.5

// Interpolating in Table A-22, we get
ha = 1095.9                                                                     // in kj/kg
p4 = 100.00                                                                     // in kpa
pb = 300.00                                                                     // in kpa
// Interpolating in Table A-22, we obtain
h4 = 1127.6                                                                     // in kj/kg

// Calculions
pra = pr3*(pa/p3)
prb = pra
pr4 = prb*(p4/pb)
// Since the regenerator effectiveness is 100%,
hx = h4
eta = ((h3-ha)+(hb-h4)-(h2-h1))/((h3-hx)+(hb-ha))                               // thermal efficiency

// Result
printf( ' The thermal efficiency is : %.2f ', eta)
