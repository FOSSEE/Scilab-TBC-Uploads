// Exa 1.34

clc;
clear;

// Given

I1 = 10; // Current which produces deflection of 90 degrees
Theta1 = 90; // In degrees
I2 = 5; // Current for which theta is to be calculated

// Solution

//The deflection which produces a current of 1A when instrument is spring controlled
// Tc  ∝ theta
// theta  ∝ I^2

theta2 = (I2/I1)^2 * Theta1 ;
printf('The deflection which produces a current of 1A when instrument is spring controlled  is equal to = %.1f degrees \n',theta2);
//The deflection which produces a current of 1A when instrument is gravity controlled
// Tc  ∝ sin(theta)
// theta  ∝ I^2

theta2_gravity = asind((I2/I1)^2 *sind(Theta1)) ;
printf(' The deflection which produces a current of 1A when instrument is gravity controlled = %.2f degrees \n',theta2_gravity);

// The value of I given as 1A in problem statement is incorrect to satisfy the problem answer(correct value is 5A)
