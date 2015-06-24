// Example1_9_pg18.sce
// To find the secondary terminal voltage
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 18


clear; clc; close;

// Given data
v1 = 2000; // Primary voltage, volts
v2 = 400; // Secondary Open Voltage, volts
pf = +0.8; // Power factor lagging 80%
r1 = 5.5; // Resistance R1, Ohms
r2 = 0.2; // Resistance R2, Ohms
x1 = 12; // Reactance X1, Ohms
x2 = 0.45; // Reactance X2, Ohms
va_rating = 10e+3 // volt-ampere rating of transformer, VA
voltage1 = v1; // Supply input voltage, Volts

// Calculations
current1 = va_rating/voltage1; // Amperes
current2 = current1; // Amperes
turns_ratio = v1/v2;
r2dash = turns_ratio^2 * r2; // r2 as referred to primary side, Ohms
sum_ofr = r1 + r2dash; // total equivalent resistance referred to primary, Ohms
x2dash = turns_ratio^2 * x2; // x2 as referred to primary side, Ohms
sum_ofx = x1 + x2dash; // Sum of reactances, Ohms
// Taking current axis as the reference as per the problem
vec_current1 = 5 + 0*%i; // Vector Current 1, Amperes
vec_current2 = vec_current1; // Vector Current 2, Amperes
theta = acos(0.8); // lagging phase angle in radians
vector_volt1 = voltage1; // Volts
function y = ff(voltage2)
  // To solve for secondary voltage from the equation
  //     vector_volt1 = vector_volt2 + vec_current2*((sum_ofr)+(sum_ofx)*%i);
  //     vector_volt2 = voltage2*(cos(theta)+sin(theta)*%i);
  //     vector_volt1 = voltage2*(cos(theta)+sin(theta)*%i) + vec_current2*((sum_ofr)+(sum_ofx)*%i);
  // Separating real and imaginary parts and calculating the absolute values, and equating it to zero(or here y(1)), the expression would look like below
  //  y(1) = -(vector_volt1^2) + (cos(theta)*voltage2(1) + abs(vec_current2)*sum_ofr)^2 + (voltage2(1)*sin(theta) + abs(vec_current2)*sum_ofx)^2;
  y(1) = -(vector_volt1^2) + (cos(theta)*voltage2(1) + abs(vec_current2)*(sum_ofr))^2 + (sin(theta)*voltage2(1) + abs(vec_current2)*(sum_ofx))^2;
  endfunction
sec_volt_in_terms_of_pri = fsolve ([0.1], ff); // in Volts
sec_voltage = sec_volt_in_terms_of_pri/turns_ratio; // in Volts
printf("\nSecondary Voltage as referred to primary is %.2f volts \n", sec_volt_in_terms_of_pri);
printf("Secondary Terminal Voltage at full load is %.2f volts \n", sec_voltage);


// Result
// Secondary Voltage as referred to primary is 1887.30 volts
// Secondary Terminal Voltage at full load is 377.46 volts
