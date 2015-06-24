// Example 7.1: Transfer curve
clc, clear
IDSS=12; // in mili-amperes
VP=-5; // in volts
// Plotting transfer curve
VGS=[0:-0.01:VP]; // Gate source voltage in volts
// Using Shockley's equation
ID=IDSS*(1-VGS/VP)^2; // Drain current in mili-amperes
plot(VGS,ID);
xtitle("Transfer Curve","VGS (V)","ID (mA)");