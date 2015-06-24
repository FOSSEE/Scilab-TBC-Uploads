// Given:-
nN2 = 0.79                                                                       // initial moles of nitrogen in kmol
pN2 = 2.0                                                                        // initial pressure of nitrogen in bars
TN2 = 250.0                                                                      // initial temperature of nitrogen in kelvin
nO2 = 0.21                                                                       // initial moles of oxygen in kmol
pO2 = 1.0                                                                        // initial pressure of oxygen in bars
TO2 = 300.0                                                                      // initial temperature of oxygen in kelvin

// Part(a)
MN2 = 28.01                                                                      // molar mass of nitrogen in kg/kmol
MO2 = 32.0                                                                       // molar mass of oxygen in kg/kmol
// Calculations
// With the help of table A-20
cvbarN2 = MN2*0.743                                                              // in kj/kmol.K
cvbarO2 = MO2*0.656                                                              // in kj/kmol.K
T2 = (nN2*cvbarN2*TN2+nO2*cvbarO2*TO2)/(nN2*cvbarN2+nO2*cvbarO2)
// Result
printf( 'The final temperature of the mixture in kelvin is:  %f',T2);

// Part(b)
// Calculation
p2 = ((nN2+nO2)*T2)/(nN2*TN2/pN2 + nO2*TO2/pO2)
// Result
printf( 'The final pressure of the mixture in bar is:  %f',p2);

// Part(c)
Rbar = 8.314                                                                     // universal gas constant
// Calculations
cpbarN2 = cvbarN2 + Rbar
cpbarO2 = cvbarO2 + Rbar
yN2 = nN2/(nN2+nO2)                                                              // mole fraction of N2
yO2 = nO2/(nN2+nO2)                                                              // mole fraction of O2
sigma = nN2*(cpbarN2*log(T2/TN2)-Rbar*log(yN2*p2/pN2)) + nO2*(cpbarO2*log(T2/TO2)-Rbar*log(yO2*p2/pO2))
// Result
printf( 'The amount of entropy produced in the mixing process, in kJ/K is:  %f',sigma);
