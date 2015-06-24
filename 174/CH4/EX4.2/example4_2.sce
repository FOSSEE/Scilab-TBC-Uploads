// To design Ayrton shunt
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-2 in Page 57


clear; clc; close;

// Given data
I_1 = 1; //Full scale currents of the ammeter in amp
I_2 = 5;
I_3 = 10;
R_m = 50; //Internal resistance of the movement(the coil) in ohm
I_m = 1*(10^-3); //Full scale deflection of the movement in ampere

//Calculations
// On the 1-A range: 
I_s1 = I_1 - I_m; // calculating current through shunt
//Using the eq. R_s = I_m * R_m/ I_s
//1                       R_a +R_b +R_c = I_m * R_m/ I_s; // As (R_a +R_b +R_c) are parallel with R_m

// On the 5-A range
I_s2 = I_2 - I_m;
//2                       R_a +R_b = I_m * (R_c +R_m)/ I_s; // As (R_a+R_b) in parallel with (R_c+R_m)

// On the 10-A range
I_s3 = I_3 - I_m;
//3                       R_a = I_m * (R_b +R_c +R_m)/ I_s; // As R_a is parallel with (R_b +R_c +R_m)


//Solving the 3 simultaneous linear equations
function y = rr(R);
y(1)= R(1) +R(2) +R(3) - (I_m * R_m/ I_s1);
y(2)= R(1) +R(2) -(I_m * (R(3) +R_m)/ I_s2);
y(3)= R(1) -(I_m * (R(2) +R(3) +R_m)/ I_s3);
endfunction

answer = fsolve([0.1;0.1;0.1],rr);
R_a = answer([1]);
R_b = answer([2]);
R_c = answer([3]);

disp('The different resistors used for the ayrton shunt for different ranges are:');
printf("R_a = %f ohm\n",R_a);
printf("R_b = %f ohm\n",R_b);
printf("R_c = %f ohm",R_c);

//Result
// The different resistors used for the ayrton shunt for different ranges are:   
// R_a = 0.005005 ohm
// R_b = 0.005005 ohm
// R_c = 0.040040 ohm 

