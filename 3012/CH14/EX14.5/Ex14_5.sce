
// Given:-
// Applying the conservation of mass principle, the overall dissociation reaction is described by
// CO2  ---  zCO2 + (1-z)CO + ((1-z)/2)O2

p = 1.0                                                                           // in atm
pref = 1.0                                                                        // in atm
// At 3200 K, Table A-27 gives
log10k = -.189
// Solving k = ((1-z)/2)*((1-z)/(3-z))^.5 gives
z = 0.422

// Calculations
k = 10**log10k
// From tables A-25  and A-23
hfbarCO2 = -393520.0                                                              // in kj/kmol
deltahbarCO2 = 174695-9364                                                        // in kj/kmol
hfbarCO = -110530.0                                                               // in kj/kmol
deltahbarCO = 109667-8669                                                         // in kj/kmol
hfbarO2 = 0                                                                       // in kj/kmol
deltahbarO2 = 114809-8682                                                         // in kj/kmol
hfbarCO2r =  -393520.0                                                            // in kj/kmol
deltahbarCO2r = 0                                                                 // in kj/kmol

Qcvdot = 0.422*(hfbarCO2 + deltahbarCO2) + 0.578*(hfbarCO + deltahbarCO) + 0.289*(hfbarO2 + deltahbarO2)- (hfbarCO2r + deltahbarCO2r)  

// Result
printf( ' The heat transfer to the reactor, in kJ per kmol of CO2 entering is:  %f', Qcvdot);
