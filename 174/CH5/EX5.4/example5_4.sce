// To find the unknown impedence
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 5-4 in Page 112


clear; clc; close;

// Given data
// The notations are wrt to the figure 5-10 in page 109

//Arm AB
R_1 = 450;
//Arm BC
R_2 = 300;
C = 0.265 *(10^-6);
//Arm DA
R_3 = 200;
L = 15.9*(10^-3);
f = 1000;

//Calculations
w = 2*%pi*f;
Z_1 = 450;
Z_2 = R_2 - %i *floor(1/(w*C));
Z_3 = R_3 + %i*ceil(w*L);

Z_4 = Z_1*Z_3/Z_2;
printf("The impedence of the unknown arm = %di ohm\n",imag(Z_4));
printf("The result indicates that Z_4 is a pure inductance with an inductive reactance of 150 ohm at a frequency of 1 khz.\n")

L_ans = imag(Z_4)/w;
printf("The inductance present in the arm CD = %0.1fm H",L_ans*1000);

//Result
// The impedence of the unknown arm = 150i ohm
// The result indicates that Z_4 is a pure inductance with an inductive reactance of 150 ohm at a frequency of 1 khz.
// The inductance present in the arm CD = 23.9m H 





