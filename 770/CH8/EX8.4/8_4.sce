clear;
clc;

//Example - 8.4
//Page number - 292
printf("Example - 8.4 and Page number - 292\n\n");

//Given
T_high = 20 + 273.15;//[K] - High temperature
T_low = 0 + 273.15;//[K] - Low temperature
Q_H = 10;//[kW] - Heat supplied

//If 'Q_H' is the rate at which heat is taken from surrounding and 'W' is the rate at which work is done,then
// Q_H = W + Q_L
//(Q_H/Q_L) = (T_high/T_low)
//Also for a reversible cycle, (Q_H/Q_L) = 1 + (W/Q_L). Solving we get,
Q_L = (T_low/T_high)*Q_H;//[kW]
W = (Q_H - Q_L) ;//[kW]
 
printf("The minimum power required is %f kW",W);
