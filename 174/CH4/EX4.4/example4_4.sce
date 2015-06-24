// To design multirange dc voltmeter 
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 4-4 in Page 62


clear; clc; close;

// Given data
// This is a repitition of example_4-3 with sensitivity method
R_m = 100; // internal resistance of movement
I_fsd = 1*(10^-3); //full-scale current in Amp
V_1 = 10; //different ranges in volt
V_2 = 50;
V_3 = 250;
V_4 = 500;

//Calculations
S = 1/ I_fsd; // sensitivity in ohm/V
R_4 = (S * V_1)-R_m;
R_3 = (S * V_2)-(R_4 +R_m);
R_2 = (S * V_3)-(R_3 +R_4 +R_m);
R_1 = (S * V_4)-(R_2 +R_3 +R_4 +R_m);

printf("The value of the resistance R_4 = (%dohm/V *%dV)- %dohm  = %d ohm\n",S,V_1,R_m,R_4);
printf("The value of the resistance R_3 = (%dohm/V *%dV)- %dohm  = %dK ohm\n",S,V_2,(R_4+R_m),R_3/1000);
printf("The value of the resistance R_2 = (%dohm/V *%dV)- %dohm  = %dK ohm\n",S,V_3,(R_3 +R_4 +R_m),R_2/1000);
printf("The value of the resistance R_1 = (%dohm/V *%dV)- %dohm  = %dK ohm",S,V_4,(R_2 +R_3 +R_4 +R_m),R_1/1000);

//Result
// The value of the resistance R_4 = (1000ohm/V *10V)- 100ohm  = 9900 ohm
// The value of the resistance R_3 = (1000ohm/V *50V)- 10000ohm  = 40K ohm
// The value of the resistance R_2 = (1000ohm/V *250V)- 50000ohm  = 200K ohm
// The value of the resistance R_1 = (1000ohm/V *500V)- 250000ohm  = 250K ohm 
