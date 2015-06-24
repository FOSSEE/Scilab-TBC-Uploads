// To balance the unbalanced bridge
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 5-5 in Page 119


clear; clc; close;

// Given data
Z_1 = -1000*%i;
Z_2 = 500;
Z_3 = 1000;
Z_4 = 100+500*%i;

// The balance is not possible with this condition as theta_1+theta_4 will be slightly negative than theta_2+theta3
// Balance can be achieved by 2 methods:
disp('First option is to modify Z_1 so that its phase angle is decreased to less than 90deg by placing a resistor in parallel with the capacitor.')
// The resistance R_1 can be determined by the standard approach

//Calculations
Y_1 = Z_4/(Z_2*Z_3);
//Also,
// Y_1 = (1/R) + %i/1000;
// equating both the equations and solving for R_1

R_1 = 1/(Y_1-(%i/1000 ));
printf("The value of the resistor R_1 in parallel with capacitor = %d ohm\n",R_1);

// It should be noted that the addition of R_1 upsets the first balance condition as the magnitude of Z_1 is changed
// Hence the variable R_3 should be adjusted to compensate this effect

disp('The second option is to modify the phase angle of arm 2 or arm 3 by adding series capacitor');
Z_3_1 = Z_1 *Z_4/Z_2;
// substituting for the component values and solving for X_C yeilds

X_C = abs(1000- Z_3_1)/-%i;
printf("The value of the reactance of the capacitor used, X_C = %d ohm",imag(X_C));


//In this case the magnitude of the Z_3 is increased so that the first balance condition is changed
//A small adjustment of R_3 is necessary to restore balance

//Result
// First option is to modify Z_1 so that its phase angle is decreased to less than 90deg by placing a resistor in parallel with the capacitor.   
// The value of the resistor R_1 in parallel with capacitor = 5000 ohm
 
// The second option is to modify the phase angle of arm 2 or arm 3 by adding series capacitor   
// The value of the reactance of the capacitor used, X_C = 200 ohm 




