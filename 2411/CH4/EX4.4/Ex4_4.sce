// Scilab Code Ex4.4: Page-235-236 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
// Part (a)
v = 0.98*c ;    // Speed of the rigid bar, m/s
L2 = 1.5;    // Length of the rigid bar in S_prime frame, m
L1 = L2*sqrt(1-v^2/c^2);    // Apparent length of rod from Lorentz transformation, m
theta2 = 45;    // Angle which the bar makes w.r.t. x-aixs in S_prime frame, degree
theta1 = atand(tand(theta2)/sqrt(1-v^2/c^2));    // Orientation of bar relative to S frame, degree
printf("\nThe orientation of the %d m bar relative to S frame = %4.1f degree", L2, theta1);
// Part(b)
v = 0.6*c ;    // Speed of the rigid bar, m/s
L2 = 5;    // Length of the rigid bar in S_prime frame, m
L1 = L2*sqrt(1-v^2/c^2);    // Apparent length of rod from Lorentz transformation, m
theta2 = 30;    // Angle which the bar makes w.r.t. x-aixs in S_prime frame, degree
theta1 = atand(tand(theta2)/sqrt(1-v^2/c^2));    // Orientation of bar relative to S frame, degree
printf("\nThe orientation of the %d m bar relative to S frame = %4.1f degree", L2, theta1);

// Result
// The orientation of the 1 m bar relative to S frame = 78.7 degree
// The orientation of the 5 m bar relative to S frame = 35.8 degree 