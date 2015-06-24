// To find voltmeter sensitivity on AC range
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-10 in Page 81


clear; clc; close;

// Given data
R_m = 100; //Internal resistance of the movement in ohm
R_sh = 100;
I_fsd = 1*(10^-3); //current for full scale deflection
R_D1 = 400;
R_D2 = 400;
E_rms = 10; //AC range of the voltmeter

//Calculations
disp('Assuming infinite reverse resistance');
I_t = 2 *I_fsd;
E_dc = 0.45 * E_rms;
R_t = E_dc / I_t;
R_p = R_m *R_sh/(R_m+R_sh);
R_s = R_t - (R_D1 + R_p);
printf("(a)  The value of the multiplier resistor required, R_s = %d ohm\n",R_s);
S = R_t / E_rms;
printf("(b)  The sensitivity of the voltmeter on ac range, S = %d ohm/V",S);

//Result
// Assuming infinite reverse resistance   
// (a)  The value of the multiplier resistor required, R_s = 1800 ohm
// (b)  The sensitivity of the voltmeter on ac range, S = 225 ohm/V 





