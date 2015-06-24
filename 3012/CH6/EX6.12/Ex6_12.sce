// Given:-
P1 = 3.00                                  // pressure of air entering in bar
T1 = 390.00                                // temperature of air entering in kelvin
P2 = 1.00                                  // pressure of exit air
Wcvdot = 74.00                             // work developed in kj/kg

// From table A-22,at 390k
h1 = 390.88                                // in kj/kg
pr1 = 3.481

// From interpolation table A-22
h2s = 285.27                               // in kj/kg

// calculations
pr2 = (P2/P1)*pr1
Wcvdots = h1 - h2s
eta = Wcvdot/Wcvdots

// Result
printf( ' The turbine efficiency is %.4f ',eta)
