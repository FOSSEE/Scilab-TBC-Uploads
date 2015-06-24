// Scilab Code Ex9.14: Probability of electron moving in 1D box : Page-207 (2010)
a = 2e-010;    // Width of 1D box, m
x1 = 0;    // Position of first extreme of the box, m
x2 = 1e-010;    // Position of second extreme of the box, m
P = integrate('2/a*(sin(2*%pi*x/a))^2', 'x', x1, x2);    // The probability of finding the electron between x = 0 and x = 1e-010
printf("\nThe probability of finding the electron between x = 0 and x = 1e-010 = %3.1f", P);

// Result
// The probability of finding the electron between x = 0 and x = 1e-010 = 0.5 