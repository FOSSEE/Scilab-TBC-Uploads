clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.8
// Page 135
printf("Example 3.8, Page 135 \n\n")

// From eqn 3.7.5 or fig 3.19
F65 = 0.22;
F64 = 0.16;
F35 = 0.32;
F34 = 0.27;
A1 = 3; // [m^2]
A3 = 3; // [m^2]
A6 = 6; // [m^2]

// Using additive and reciprocal relations
// We have F12 = F16 - F13

F61 = F65 - F64 ;
F31 = F35 - F34 ;

F16 = A6/A1*F61 ;
F13 = A3/A1*F31 ;

F12 = F16 - F13;

printf("F_1-2 = %f",F12);

