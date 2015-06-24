// Example 9.2
clear all;
clc;

// According to the definition of radiation absorbed dose(rad), 1 rad/sec = 100 ergs/g-sec
// Given data
D = 5*10^(-3)/100;                            // Absorbed dose in terms of rad/sec
// Expressing absorbed dose rate in SI units
// 1 Gray(Gy) = 100 rad 
D_dot = D*3600/100;
// Using data from Table 9.2
Q = 1;                                        // Quality factor for gamma rays for tissue
// Calculation
H_dot = D_dot*Q;
printf(' \n Absorbed dose rate in a tissue = %.1f mGy/hr \n',D_dot*1000);
printf(' \n Dose equivalent rate in a tissue = %.1f mSv/hr \n',H_dot*1000);
