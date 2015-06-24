// Scilab Code Ex1.5 : Page-25 (2010)
m = 0.3;    // Mass attached to the string, kg
g = 9.8;    // Acceleration due to gravity, metre per sec square
x = 0.15;    // Stretchness produced in the spring, m
F = m*g;    // Restoring force acting on the mass, N
k = F/x;    // Spring constant, newton per metre
A = 0.1;    // Amplitude of the string, m
omega = sqrt(k/m);    // Angular frequency of oscillation, rad per sec
v0 = omega*A;    // Maximum velocity during the oscillations, m/s
printf("\nThe spring constant = %4.1f newton per metre", k);
printf("\nThe amplitude of oscillation = %2.1f m", A);
printf("\nThe maximum velocity during oscillations = %3.2f m/s", v0);

// Result 
// The spring constant = 19.6 newton per metre
// The amplitude of oscillation = 0.1 m
// The maximum velocity during oscillations = 0.81 m/s 
