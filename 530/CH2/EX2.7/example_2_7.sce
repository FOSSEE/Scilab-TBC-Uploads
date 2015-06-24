clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.7
// Page 43
printf("Example 2.7, Page 43 \n\n")

H = 5 ; // Height, [m]
L = 10 ; // Length, [m]
t = 1 ; // thickness, [m]
b = t/2;
k = 1.05 ; // [W/m K]
q = 58 ; // [W/m^3]
T = 35 ; // [C]
h = 11.6 ; // Heat transfer coefficient, [W/m^2 K]
// Substituting the values in equation 2.5.6
T_max = T + q*b*(b/(2*k)+1/h);
printf("Maximum Temperature = %f degree C",T_max);