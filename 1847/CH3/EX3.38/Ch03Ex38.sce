// Scilab Code EX3.38:: Page-3.52 (2009)
clc;clear;
function [mint, secnd]=degmin(theta)
    mint = (theta-floor(theta))*60;
    secnd = (mint-floor(mint))*60
endfunction
lambda_D1 = 5890e-008;  // Wavelength of sodium D1 line, cm
lambda_D2 = 5896e-008;  // Wavelength of sodium D2 line, cm
n = 2;  // Order of diffraction
N = 6500;   // Number of lines per cm on grating, lines/cm
a_plus_b = 1/6500;  // Grating element, cm
// As a_plus_b*sin(theta1)=n*lambda1, solving for theta1
theta1 = asind(n*lambda_D1/a_plus_b);
// As a_plus_b*sin(theta2)=n*lambda2, solving for theta1
theta2 = asind(n*lambda_D2/a_plus_b);
d_theta = theta2-theta1;    // Angular separation between the sodium D1 and D2 lines, degrees
[mint, secnd] = degmin(d_theta);  // Call deg_2_degmin function

printf("\nThe angular separation between the sodium D1 and D2 lines = %d minutes %d seconds", mint, secnd);

// Result
// The angular separation between the sodium D1 and D2 lines = 4 minutes 10 seconds 
// Since theta1 and theta2 are rounded off in the textbook, therefore the answer is mismatching.
