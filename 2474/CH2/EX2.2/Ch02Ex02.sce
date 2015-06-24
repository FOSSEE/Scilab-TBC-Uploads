// Scilab code Ex2.2: Pg.69-70 (2008)
clc; clear;
c = 3e+08;    // Velocity of light, m/s
m = 5e+04;    // Mass of rocket, kg
u_i = 0.8*c;    // Initial speed of rocket, m/s
p_i = (m*u_i)/(sqrt(1-(u_i/c)^2));    // Initial momentum of rocket, kg-m/s
u_r = 0.4*c;    // New velocity of rocket, m/s
p_n = (m*u_r)/(sqrt(1-(u_r/c)^2));    // New momentum of rocket, kg-m/s
x = p_n/p_i;    // Ratio of new momentum to initial momentum
p_r = x*p_i;     // Reduced momentum, kg-m/s
printf("\nThe initial momentum of rocket = %3.1e kg-m/s", p_i);
printf("\nThe reduced momentum of rocket = %3.1e kg-m/s", p_r);

// Result
// The initial momentum of rocket = 2.0e+013e kg-m/s
// The reduced momentum of rocket = 6.5e+012 kg-m/s