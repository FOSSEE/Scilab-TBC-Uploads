// Scilab Code Ex8.4: Page-172 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
v = 0.6*c;    // Speed with which the rocket leaves the earth, m/s
u_prime = 0.9*c;    // Relative speed of second rocket w.r.t. the first rocket, m/s
u = (u_prime+v)/(1+(u_prime*v)/c^2);    // Speed of second rocket for same direction of firing as per Velocity Addition Rule, m/s
printf("\nThe speed of second rocket for same direction of firing = %5.3fc", u);
u = (-u_prime+v)/(1-(u_prime*v)/c^2);    // Speed of second rocket for opposite direction of firing as per Velocity Addition Rule, m/s
printf("\nThe speed of second rocket for opposite direction of firing = %5.3fc", u);

// Result
// The speed of second rocket for same direction of firing = 0.974c
// The speed of second rocket for opposite direction of firing = -0.652c