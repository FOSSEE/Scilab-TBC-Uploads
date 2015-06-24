// Example 3.8: overall efficiency
clc, clear;
Vcc=20; // in volts
Vce=2.5; // in volts
eta=78.5*(1-(Vce/Vcc));
disp(eta,"the overall efficiency (%) = ")
