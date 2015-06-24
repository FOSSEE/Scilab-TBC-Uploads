// Example1_13_pg28.sce
// To find the regulation of transformer
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 28


clear; clc; close;

// Given data
v1 = 1100; // Primary voltage, Volts
v2 = 110; // Secondary Open Voltage, Volts
volt_sc = 33; // Voltage for Short Circuit full load current, Volts
pow_sc_in = 85; // Short Circuit input Power, Watts
pf = +0.8; // Power factor lagging 80%
va_rating = 5e+3 // volt-ampere rating of transformer, VA

// Calculations

// Method based on Eq. 1-35
// v1^2 = (v2 + volt_sc*cos(thetae - theta2))^2 + (volt_sc*sin(thetae - theta2))^2;
current1 = va_rating/v1; // Current in Amperes
thetae = acos(pow_sc_in /( volt_sc * current1 ));
theta2 = acos(pf);
function y = ff1(v2)
  y(1) = -(v1^2) + (v2 + volt_sc*cos(thetae - theta2))^2 + (volt_sc*sin(thetae - theta2))^2;
  endfunction
volt2 = fsolve ([0.1], ff1); // voltage in volts
// Regulation = ( (v1 - volt2)/v1 ) *100
Regulation1 = ((v1 - volt2)/v1)*100;
printf("\nRegulation of the Transformer by method 1 is %.2f %% \n", Regulation1);

// Method based on Eq. 1-36
// v1^2 = (v2 + current1*re*cos(theta2) + current1*xe*sin(theta2))^2 + (current1*xe*cos(theta2) - current1*re*sin(theta2))^2;
current1 = va_rating/v1; // Current in Amperes
thetae = acos(pow_sc_in /( volt_sc * current1 ));
theta2 = acos(pf);
ze = volt_sc/current1; // impedance in Ohms
re = pow_sc_in/(current1^2); // Resistance in Ohms
xe = (ze^2 - re^2)^0.5; // Reactance in Ohms
function y = ff2(v2)
  y(1) = -(v1^2) + (v2 + current1*re*cos(theta2) + current1*xe*sin(theta2))^2 + (current1*xe*cos(theta2) - current1*re*sin(theta2))^2;
  endfunction
volt2 = fsolve ([0.1], ff2);
// Regulation = ( (v1 - volt2)/v1 ) *100
Regulation2 = ((v1 - volt2)/v1)*100;
printf("Regulation of the Transformer by method 2 is %.2f %% \n", Regulation2);

// Result
// Regulation of the Transformer by method 1 is 2.85 %
// Regulation of the Transformer by method 2 is 2.85 %
