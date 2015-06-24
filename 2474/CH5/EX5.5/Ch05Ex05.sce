// Scilab code Ex5.5: Pg.201 (2008)
clc; clear;
delta_f = 0.01;    // Frequency limit of ac voltage, Hz
omega = 2*%pi*delta_f;     // Angular frequency of ac voltage, rad/s
delta_t = 1/omega;    // Time for which frequency is maintained, s
printf("\nThe time for which frequency is maintained = %2.0f s",delta_t);

// Result
// The time for which frequency is maintained = 16 s 