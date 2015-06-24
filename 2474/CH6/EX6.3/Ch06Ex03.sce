// Scilab code Ex6.3: Pg.236 (2008)
clc; clear;

// Part (a)
// Since the probability of finding the electron in specified region = (si_1_x)^2, where si_1_x = sqrt(2/L)*sin((%pi*x)/L) Putting (%pi*x)/L = u & noting the limits, we get
u_o = 0;    // Lower limit
u_1 = %pi/4;    // Upper limit
P_1_x = 2/%pi*integrate('sin(u)^2','u',u_o,u_1);    // Probability of electron in specified region
printf("\nThe probability of electron in the specified region = %5.3f", P_1_x);

// Part (b)
// For simplicity assume length of well be unity
L = 1;    // Length of well, m
del_x = 0.01*L;    // Length of narrow region, m
x = 5*L/8;    // Centre of narrow region, m
P_x = 2/L*sin((%pi*x)/L)^2;    // Probability of electron
P = P_x*del_x;    // Probability of finding electron in very narrow region
printf("\nThe probability of finding the electron in very narrow region = %5.3f", P);

// Result
// The probability of electron in the specified region = 0.091
// The probability of finding the electron in very narrow region = 0.017 