// Scilab Code Ex6.4 : Page-205 (2014)
clc; clear;
alpha = 1;    // For simplicity assume alpha to be unity
P = integrate('sqrt(alpha)*exp(-2*alpha*x)', 'x', 0, 1/alpha);    // Probability that the particle lies between 0 and 1/alpha
printf("\nThe probability that the particle lies between 0 and 1/alpha = %5.3f", P);
P = integrate('sqrt(alpha)*exp(-2*alpha*x)', 'x', 1/alpha, 2/alpha);    // Probability that the particle lies between 1/alpha and 2/alpha
printf("\nThe probability that the particle lies between 1/alpha and 2/alpha = %5.3f", P);

// Result
// The probability that the particle lies between 0 and 1/alpha = 0.432
// The probability that the particle lies between 1/alpha and 2/alpha = 0.059 