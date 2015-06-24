// To find multiplier resistor
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-9 in Page 79


clear; clc; close;

// Given data
R_m = 50; //Internal resistance of the movement in ohm
I_fsd = 1 *(10^-3); //current for full scale deflection in ampere
E_rms = 10; // AC voltage applied to input terminals in volt

//Calculation
disp('Assuming zero forward resistance and infinite reverse resistance');
E_dc = round(2 *sqrt(2)*E_rms/%pi);
R_t = E_dc / I_fsd; //Total circuit resistance
R_s = R_t - R_m; //Calculating multiplier resistor
printf("The value of the multiplier resistor, R_s = %d ohm",R_s);

//Result
// Assuming zero forward resistance and infinite reverse resistance   
// The value of the multiplier resistor, R_s = 8950 ohm 

