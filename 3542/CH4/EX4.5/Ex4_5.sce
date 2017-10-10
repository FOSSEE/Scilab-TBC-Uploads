// Example no. 4.5
// To calculate the Brewster angle
// Page no. 119

clc;
clear all;

// Given data
Er=4;                                 // Permittivity
x=sqrt((Er-1)/(Er^2-1));              // Sine of brewster angle
theta=asind(x);                       // Brewster angle
//Answer is varrying due to round off error

// Displaying the result in command window
printf('\n Brewster angle = %0.2f degree',theta);
