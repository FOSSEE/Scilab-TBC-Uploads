// Scilab Code Ex8.1: Page-171 (2010)
L_0 = 1;    // For simplicity, we assume classical length to be unity, m
c = 1;    // For simplicity assume speed of light to be unity, m/s
L = (1-1/100)*L_0;    // Relativistic length, m
// Relativistic length contraction gives
// L = L_0*sqrt(1-v^2/c^2), solving for v
v = sqrt(1-(L/L_0)^2)*c;    // Speed at which relativistic length is 1 percent of the classical length, m/s
printf("\nThe speed at which relativistic length is 1 percent of the classical length = %5.3fc", v);

// Result
// The speed at which relativistic length is 1 percent of the classical length = 0.141c 