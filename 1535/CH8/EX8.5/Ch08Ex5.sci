// Scilab Code Ex8.5: Page-172 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
L0 = 1;    // For simplicity assume length in spaceship's frame to be unity, m
L = 1/2*L0;    // Length as observed on earth, m
// Relativistic length contraction gives
// L = L_0*sqrt(1-v^2/c^2), solving for v
v = sqrt(1-(L/L0)^2)*c;    // Speed at which length of spaceship is observed as half from the earth frame, m/s
tau = 1;    // Unit time in the spaceship's frame, s
t = tau/sqrt(1-(v/c)^2);    // Time dilation of the spaceship's unit time, s
printf("\nThe speed at which length of spaceship is observed as half from the earth frame = %5.3fc", v);
printf("\nThe time dilation of the spaceship unit time = %1g*tau", t);

// Result
// The speed at which length of spaceship is observed as half from the earth frame = 0.866c
// The time dilation of the spaceship unit time = 2*tau
