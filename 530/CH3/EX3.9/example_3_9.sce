clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.9
// Page 136
printf("Example 3.9, Page 136 \n\n")

// This is a theoretical problem, does not involve any numerical computation
printf("This is a theoretical problem, does not involve any numerical computation \n");
// Denoting area of conical surface by A1
// Considering an imaginary flat surface A2 closing the conical cavity

F22 = 0 ; // Flat surface

// from eqn 3.7.2 , we have F11 + F12 = 1 and F22 + F21 = 1
F21 = 1 - F22 ;

// F12 = A2/A1*F21 ;
// F11 = 1 - F12 ;
// F11 = 1 - sin(a)
