// Scilab Code Ex2.8 : Page-57 (2013)
clc; clear;
f0 = 1;    // For simplicity assume frequency of the signals sent by Frank, Hz
// Outbound trip
bita = -0.8;    // Boost parameter for receding frames
f = sqrt(1+bita)/sqrt(1-bita)*f0;    // The frequency of the signals received by Mary in outbound trip, Hz
printf("\nThe frequency of the signals received by Mary in outbound trip = f0/%d", ceil(f*9));
// Return trip
bita = +0.8;    // Boost parameter for approaching frames
f = sqrt(1+bita)/sqrt(1-bita)*f0;    // The frequency of the signals received by Mary in return trip, Hz
printf("\nThe frequency of the signals received by Mary in return trip = %df0", f);

// Result
// The frequency of the signals received by Mary in outbound trip = f0/3
// The frequency of the signals received by Mary in return trip = 3f0 