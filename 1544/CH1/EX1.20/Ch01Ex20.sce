// Scilab code Ex1.20: Pg. 24 (2008)
clc; clear;
R_1 = 120;           // Resistance, ohms
Theta_1 = 16;        // Temperature, degree celcius 
Theta_2 = 32;        // Temperature, degree celcius
Alpha = -4.8e-04;     // Temperature coefficient, per degree celcius
// Using relation, R_1/R_2 = ( 1 + Alpha*Theta_1 )/( 1 + Alpha*Theta_2 ), solving for R_2
R_2 = R_1 * (( 1 + Alpha*Theta_2 )/( 1 + Alpha*Theta_1 ));      // Resistance, ohm
printf("\nThe resistance of carbon resistor at %2d degree celcius = %5.1f ohm",Theta_2, R_2)

// Result
// The resistance of field coil at 32 degree celcius = 119.1 ohm
