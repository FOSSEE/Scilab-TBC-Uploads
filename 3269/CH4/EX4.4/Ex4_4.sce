// Example 4.4
clear all;
clc;

// Given data
ratpower = 1075;                // Output rated electrical power in MWe of the reactor
delpower_yr = 255000;           // Net output power delivered in one year in terms of MWd
time_refuel = 28;               // Number of days the plant was shutdown for refuelling
time_repairs = 45;              // Number of days the plant was shutdown for repairs
time_convrepairs = 18;          // Number of days the plant was shutdown for conventional repairs

// 1.
// 1 year = 365 days
ratpower_yr = ratpower*365;      // Net output rated power in one year in terms of MWd
// Calculation
cap_factor = delpower_yr/ratpower_yr;
// Result
printf(" \n Plant capacity factor = %d percent\n",ceil(cap_factor*100));

// 2.
// Number of days the plant was shutdown in one year 
total_shutdown = time_refuel+time_repairs+time_convrepairs;
// Number of days the plant was operable in one year
total_operation = 365-total_shutdown;
// Calculation
ava_factor = total_operation/365;
// Result
printf(" \n Plant availability factor = %d percent\n",ava_factor*100);
