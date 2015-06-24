// Scilab code Ex1.18: Pg 23 (2008)

clc; clear;
R_1 = 250;           // Resistance of field coil, ohm
Theta_1 = 15;        // Initial temperature of motor, degree celcius 
Theta_2 = 45;        // Final temperature of motor, degree celcius
Alpha = 4.28e-03;     // Temperature coefficient of resistance, per degree celcius
// Using relation, R_1/R_2 = ( 1 + Alpha*Theta_1 )/( 1 + Alpha*Theta_2 ), solving for R_2
R_2 = R_1 * (( 1 + Alpha*Theta_2 )/( 1 + Alpha*Theta_1 ));      // Resistance, ohms
printf("\nThe resistance of field coil at %2d degree celcius = %5.1f ohm",Theta_2, R_2)

// Result
// The resistance of field coil at 45 degree celcius = 280.2 ohm
