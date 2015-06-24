// To find Arithmatic mean and deviation from mean
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-9 in Page 9


clear; clc; close;

// Given data
// Independent current measurements taken by six observers
I_1 = 12.8*(10^-3);
I_2 = 12.2*(10^-3);
I_3 = 12.5*(10^-3);
I_4 = 13.1*(10^-3);
I_5 = 12.9*(10^-3);
I_6 = 12.4*(10^-3);

//Calculations
arithmatic_mean = (I_1 +I_2 +I_3 +I_4 +I_5 +I_6)/6;
printf("(a)  The arithmatic mean of the observations =%0.5f A",arithmatic_mean);

d_1 = I_1 - arithmatic_mean;
d_2 = I_2 - arithmatic_mean;
d_3 = I_3 - arithmatic_mean;
d_4 = I_4 - arithmatic_mean;
d_5 = I_5 - arithmatic_mean;
d_6 = I_6 - arithmatic_mean;

//deviation calculated using the formula d_n = x_n - arithmatic_mean
disp('(b)  The deviations from the mean are:' );
printf("d_1 = %0.5f A\n d_2 = %0.5f A\n d_3 = %0.5f A\n d_4 = %0.5f A\n d_5 = %0.5f A\n d_6 = %0.5f A\n",d_1, d_2, d_3, d_4, d_5, d_6);

//Result
// (a)  The arithmatic mean of the observations =0.01265 A 
// (b)  The deviations from the mean are:   
// d_1 = 0.00015 A
// d_2 = -0.00045 A
// d_3 = -0.00015 A
// d_4 = 0.00045 A
// d_5 = 0.00025 A
// d_6 = -0.00025 A
 
