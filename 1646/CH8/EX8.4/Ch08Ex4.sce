// Scilab Code Ex8.4: Page-430 (2011)
clc;clear;
n = 1e+006;....// Frequency of Ultrasonic waves, Hz  
C = 2.5e-014;....// Capcitance of capacitor, F
// Frequency of elecric oscillations is given by n = 1/(2*%pi)*sqrt(1/(L*C)), solving for L
L = 1/(4*%pi^2*n^2*C);    // The inductance of an inductor to produce ultrasonic waves, henry
printf("\nThe inductance of an inductor to produce ultrasonic waves = %d henry", L);

// Result
// The inductance of an inductor to produce ultrasonic waves = 1 henry 
 