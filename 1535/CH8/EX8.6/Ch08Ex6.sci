// Scilab Code Ex8.6: Page-172 (2010)
c = 3e+008;    // Speed of light in vacuum, m/s
v = 0.6*c;    // Velocity with which S2 frame moves relative to S1 frame, m/s
L_factor = 1/sqrt(1-(v/c)^2);    // Lorentz factor
t1 = 2e-007;    // Time for which first event occurs, s
t2 = 3e-007;    // Time for which second event occurs, s
x1 = 10;    // Position at which first event occurs, m
x2 = 40;    // Position at which second event occurs, m
delta_t = L_factor*(t2 - t1)+L_factor*v/c^2*(x1 - x2);    // Time difference between the events, s
delta_x = L_factor*(x2 - x1)-L_factor*v*(t2 - t1);    // Distance between the events, m
printf("\nThe time difference between the events = %3.1e s", delta_t);
printf("\nThe distance between the events = %2d m", delta_x);

// Result
// The time difference between the events = 5.0e-008 s
// The distance between the events = 15 m