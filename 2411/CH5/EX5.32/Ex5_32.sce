// Scilab Code Ex5.32: Page-301 (2008)
clc; clear;
L = 1;    // Assume the length of the box to be unity, m
L1 = 0.4*L;    // Lower limit, m
L2 = 0.6*L;    // Upper limit, m
x = (L1+L2)/2;    // Mean position of particle, m
delta_x = L2 - L1;    // Uncertainty in position of the particle, m
for n = 1:1:3
    P = 2/L*sin(n*%pi*x/L)^2;    // Probability density, per m
    printf("\nFor n = %d, the probability, P = %3.1f", n, P*delta_x);
end

// Result
// For n = 1, the probability, P = 0.4
// For n = 2, the probability, P = 0.0
// For n = 3, the probability, P = 0.4 