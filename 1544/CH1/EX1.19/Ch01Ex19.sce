// Scilab code Ex1.19: Pg 24 (2008)

clc; clear;
R_0 = 350;           // Resistance, ohms
Theta_1 = 60;        // Temperature, degree celcius 
Alpha = 4.26e-03;     // Temperature coefficient, per degree celcius
// Using relation R_1 = R_0 * ( 1 + Alpha*Theta_1 )
R_1 = R_0 * ( 1 + Alpha*Theta_1 );      // Resistance, ohms
printf("\nThe resistance of the wire at %2d degree celcius = %5.1f ohm",Theta_1, R_1)

// Result
// The resistance of the wire at 60 degree celcius = 439.5 ohm
