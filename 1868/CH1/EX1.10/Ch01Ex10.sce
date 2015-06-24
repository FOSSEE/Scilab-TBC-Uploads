// Scilab code Ex1.10: Pg 30-31 (2005)
clc; clear;
// For simplification assume velocity of light equal to unity
c = 1;                     // Velocity of light, m/s
ux = 0.75*c;                // Velocity of pack leader alpha, m/s
gama = 1/(sqrt(1 - (ux/c)^2));
u_x = 0;                   // Velocity component of beta measured in S frame, m/s
U_x = (u_x - ux)/(1 - u_x*ux/c^2);        // Velocity component of beta along X-axis measured in S' frame, (Velocity Addition Rule), m/s
u_y = -0.90*c;                   // Velocity component of beta long Y-axis measured in S frame
U_y = u_y/(gama*(1 - u_x*ux/c^2));   // Velocity component of beta along Y-axis measured in S' frame, m/s
U = sqrt(U_x^2+U_y^2);      // Relative velocity of recession of two gang leaders, m/s
printf("\nThe relative velocity of recession of two gang leaders = %4.2fc", U);

// Result
// The relative velocity of recession of two gang leaders = 0.96c 
