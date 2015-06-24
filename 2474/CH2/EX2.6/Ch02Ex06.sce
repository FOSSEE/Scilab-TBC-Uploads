// Scilab code Ex2.6: Pg.79 (2008)
clc; clear;
R = 1.50e+011;    // Radius of earth's orbit, m
c = 3e+08;     // Velocity of light, m/s
sigma = 1.36e+03;    // Solar constant, W/m^2
P = 4*%pi*R^2*(sigma);    // Total power radiated by the sun, J/s
t = 1;    // Time, sec
// Since P = E/t, solving for E, we get
E = P*t;    // Energy radiated by Sun per second, J
m = E/c^2;    // Amount of mass lost by sun, kg
printf("\nThe rate at which the sun loses mass per second = %3.1e kg/s",m);

// Result
// The rate at which the sun loses mass per second = 4.3e+009 kg/s 