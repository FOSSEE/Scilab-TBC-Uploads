// Example2_3_pg69.sce
// To find primary voltage and current supplied
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 69


clear; clc; close;

// Given data

// Transformer A data
va_A = 100e+3; // VA rating of Transformer
v1_A = 4600; // Voltage in volts
v2_A = 230; // Voltage in volts
x_A = 0.027; // Reactance in Ohms
r_A = 0.008; // Resistance in Ohms

// Transformer B data
va_B = 200e+3; // VA rating of Transformer
v1_B = 4610; // Voltage in volts
v2_B = 225; // Voltage in volts
x_B = 0.013; // Reactance in ohms
r_B = 0.003; // Resistance in ohms

// Common Data
P_load = 150e+3; // Power in Watts
pf = +0.85; // + denotes lagging power factor
vg = 225; // Voltage in volts


// Calculations

// Transformer A
a_1 = v1_A / v2_A;
z_1 = r_A + x_A*%i;
y_1 = 1 / z_1;
y_1_HVside = y_1 / a_1;

// Transformer B
a_2 = v1_B / v2_B;
z_2 = r_B + x_B*%i;
y_2 = 1 / z_2;
y_2_HVside = y_2 / a_2;

y_K = y_1 + y_2;
y_K_HVside = y_1_HVside + y_2_HVside;

// To find the current
I = P_load / (vg * pf) ;
V2_vec = vg;
theta = acos(0.85);
I_vec = I*(cos(theta) - sin(theta)*%i); // - sign indicates I lags V

V1_vec = ((V2_vec * y_K) + I_vec) / (y_K_HVside) ;

I1_vec = (I_vec + V1_vec*((y_K / a_1) - y_K_HVside)) / (z_1 * y_K );

I2_vec = I_vec - I1_vec;

printf(' Primary Voltage of transformer = %f /_ %f Volts\n', abs(V1_vec), (atan((imag(V1_vec))/(real(V1_vec))))*180/%pi);
printf(' Current Supplied by transformer A = %f /_ %f Volts\n', abs(I1_vec), (atan((imag(I1_vec))/(real(I1_vec))))*180/%pi);
printf(' Current Supplied by transformer B = %f /_ %f Volts\n', abs(I2_vec), (atan((imag(I2_vec))/(real(I2_vec))))*180/%pi);

// Result
// Primary Voltage of transformer = 4678.867698 /_ 1.211839 Volts 
// Current Supplied by transformer A = 361.324403 /_ -44.400715 Volts
// Current Supplied by transformer B = 438.858386 /_ -21.431553 Volts
