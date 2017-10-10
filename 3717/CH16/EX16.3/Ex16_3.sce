// Ex16_3 Page:311 (2014)
clc;clear;
z = 30;    // Length of the optical fibre, km
alpha = 0.8;    // Fibre loss, dB/km
P_i = 200;    // Power input to the optical fibre, micro-watt
P_o = P_i/10^(alpha*z/10);    // Output power of the optical fibre, micro-watt
printf("\nThe output power from the optical fibre = %5.3f micro-watt", P_o);

// Result
// The output power from the optical fibre = 0.796 micro-watt 