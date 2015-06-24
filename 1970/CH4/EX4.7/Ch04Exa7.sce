// Scilab code Exa4.7 : : Page-179 (2011)
clc; clear;
R_t = 100;        // Actual count rate, per sec
R_B = 25;         // Backward count rate, per sec
V_S = 0.03;        // Coefficient of variation
R_S = R_t-R_B;        // Source counting rate,per sec
T_t = (R_t+sqrt(R_t*R_B))/(V_S^2*R_S^2);   // Time measurement for actual count, sec
T_B = T_t*sqrt(R_B/R_t);       // Time measurement for backward count, sec
printf("\nTime measurement for actual count : %5.3f sec \nTime measurement for backward count : %4.1f sec", T_t, T_B);

// Result
//  Time measurement for actual count : 29.630 sec 
//  Time measurement for backward count : 14.8 sec