// To find voltage reading and Error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-5 in Page 62

clear; clc; close;

// Given data
// resistances in series
R_1 = 100 * 10^3; 
R_2 = 50 *10^3;
// sensitivity of two voltmeters
S_1 = 1000;
S_2 = 20000;
V = 50; // range of the voltmeters
E = 150; // voltage of battery in volt

//Calculations
//By voltage divider rule
V_true = R_2 /(R_1+R_2)*E;
printf("The true voltage across resistor R_2 = %d V\n",V_true);

//Reading of the first voltmeter
R_T1 = S_1 * V; // resistance of voltmeter = sensitivity * range
R_p =(R_2 *R_T1)/(R_2 +R_T1)// effective parallel resistance
R_c1 = R_1+R_p  // The total circuit resistance
V_1 = 25*10^3/R_c1 *E;
printf("The reading of the first voltmeter = %d V\n",V_1);

//Reading of the second voltmeter 
R_T2 = S_2 * V; // resistance of voltmeter = sensitivity * range
R_p =(R_2 *R_T2)/(R_2 +R_T2)
R_c2 = R_1 +R_p // The total circuit resistance
V_2 = 47.6*10^3/R_c2 *E;
printf("The reading of the second voltmeter = %0.2f V\n",V_2);

%error_1 = (V_true - V_1)/V_true *100;
printf("The error in the reading due to voltmeter 1 =%d%%\n",%error_1);
%error_2 = (V_true - V_2)/V_true *100;
printf("The error in the reading due to voltmeter 2 =%0.2f%%",%error_2);

//Results
// The true voltage across resistor R_2 = 50 V
// The reading of the first voltmeter = 30 V
// The reading of the second voltmeter = 48.37 V
// The error in the reading due to voltmeter 1 =40%
// The error in the reading due to voltmeter 2 =3.26% 

//The answers are varying as approximation is not done


