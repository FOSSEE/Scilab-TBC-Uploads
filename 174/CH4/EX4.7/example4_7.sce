// To find the scale error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-7 in Page 67


clear; clc; close;

// Given data
R_h = 2000; //The desired scale marking for the half scale deflection
E = 3; //The internal battery voltage in volt
I_fsd = 1 *(10^-3); //Current for full scale deflection in ampere
R_m = 50; //resistance of the basic movement in ohm

//Calculations
I_t = E / R_h; //Total battery current at FSD
I_2 = I_t - I_fsd; // Current through zero-adjust resistor R_2
R_2 = I_fsd * R_m/I_2;
R_p = R_2*R_m/(R_2 + R_m);
R_1 = R_h - R_p;
printf("(a)  The value of R_1 and R_2 is")
printf("The value of zero-adjust resistor R2 =%0.1f ohm\n",R_2);
printf("The value of current-limiting resistor R1 =%0.1f ohm\n",R_1);

//At a 10% drop in battery voltage
E = 3- 0.3;
I_t = E / R_h; //Total battery current in A
I_2 = I_t - I_fsd; //Shunt current in A
R_2 = ceil(I_fsd * R_m/I_2);
R_p = R_2 *R_m/(R_2+R_m);
R_h = R_1 + R_p;
%error = (2000-2003.7)/2003.7*100;
printf("\n(b)  The maximum value of R2 to compensate the drop in battery voltage = %d ohm\n",R_2);
printf("The true value of the half-scale mark on the meter is = %0.3f ohm\n",R_h);
printf("\n(c)  The percentage error = %0.3f%%\n",%error);
disp('The negative sign indicates that the meter reading is low');

//Result
// (a)  The value of R_1 and R_2 isThe value of zero-adjust resistor R2 =100.0 ohm
// The value of current-limiting resistor R1 =1966.7 ohm

// (b)  The maximum value of R2 to compensate the drop in battery voltage = 143 ohm
// The true value of the half-scale mark on the meter is = 2003.713 ohm

// (c)  The percentage error = -0.185%
 
// The negative sign indicates that the meter reading is low    





