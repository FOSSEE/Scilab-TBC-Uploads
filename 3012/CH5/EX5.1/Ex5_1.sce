// Given :-
W = 410.00                             // net work output in kj claimed 
Q = 1000.00                            // energy input by heat transfer in kj
Tc = 300.00                            // temperature of cold reservoir in kelvin
TH = 500.00                            // temperature of hot reservoir in kelvin

// Calculations 
eta = W/Q                              // thermal efficiency
etamax = 1-(Tc/TH)

// Results
printf( ' Eta = %.4f',eta)
printf( ' Etamax  = %.4f',etamax)
printf( ' Since eta is more than etamax, the claim is not authentic')
