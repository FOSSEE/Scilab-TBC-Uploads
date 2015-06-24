// Scilab Code Ex1.3 : Page-24 (2010)
A1 = 40;    // First amplitude of oscillation, cm
An_plus_1 = 4;    // Amplitude after 100 oscillations, cm
n = 100;    // Number of oscillations
T = 2.5;    // Time period of oscillations, s
t = T/4;    // Time taken to reach the first amplitude from the mean position, s
// Now A1 = x0*exp(-lambda*t) and An_plus_1 = x0*exp(-lambda*(t+nT))
// A1/An_plus_1 = exp(n*lambda*T), solving for lambda
lambda = log(A1/An_plus_1)/(n*T);    // Damping constant. per sec
printf("\nDamping constant = %3.2e per sec", lambda);

// Result 
// Damping constant = 9.21e-003 per sec 
