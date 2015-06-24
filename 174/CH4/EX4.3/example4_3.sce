// To design multirange dc voltmeter
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-3 in Page 60


clear; clc; close;

// Given data
R_m = 100; // internal resistance of movement
I_fsd = 1*(10^-3); //full-scale current in Amp
V_1 = 10; //different ranges in volt
V_2 = 50;
V_3 = 250;
V_4 = 500;

//Calculations

//For the 10-V range
R_T = V_1 / I_fsd;
R_4 = R_T - R_m;
printf("The value of the resistance R_4 = %d ohm\n",R_4);

//For the 50-V range
R_T = V_2 / I_fsd;
R_3 = R_T - (R_4 +R_m);
printf("The value of the resistance R_3 = %dk ohm\n",R_3/1000);

//For the 250-V range
R_T = V_3 / I_fsd;
R_2 = R_T -(R_3 +R_4 +R_m);
printf("The value of the resistance R_2 = %dk ohm\n",R_2/1000);

//For the 500-V range
R_T = V_4 / I_fsd;
R_1 = R_T - (R_2 +R_3 +R_4 +R_m);
printf("The value of the resistance R_1 = %dk ohm",R_1/1000);

//Result
// The value of the resistance R_4 = 9900 ohm
// The value of the resistance R_3 = 40k ohm
// The value of the resistance R_2 = 200k ohm
// The value of the resistance R_1 = 250k ohm 
