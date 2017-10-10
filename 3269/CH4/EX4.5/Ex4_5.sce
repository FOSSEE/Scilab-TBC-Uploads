// Example 4.5
clear;
clc;

// Given data 
t = 30;                         // Time of uranium sufficiency in years 
// Assuming once through Light Water Reactor (LWR)fuel cycle
U_LWR = 0.0055;                 // Uranium Utilization factor for LWR
// Assuming once through Liquid Metal cooled Fast Breeder Reactor (LMFBR) fuel cycle
U_LMFBR = 0.67;                 // Uranium Utilization factor for LMFBR
// Estimation 
est_time = 30*U_LMFBR/U_LWR;
// Result
printf("The time for which Uranium would fuel LMFBR = %d years \n",ceil(est_time));