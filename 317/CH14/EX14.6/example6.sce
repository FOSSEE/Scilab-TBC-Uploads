// calculate output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-6, page 496

clear; clc; close;

// Given data
Vdd=20;// supply voltage in volts
Rd=10*10^3;// resistance in ohms
Rdson=50;// static drain-source on-resistance in ohms

// Calculations
Voutlow=Vdd; // when input voltage is low, the lower MOSFET is open and the output voltage= supply voltage
Vouthigh=Vdd*(Rdson/(Rdson+Rd)) ;// when input voltage is high, the lower MOSFET has a resistance of Rd and the output voltage= ground voltage
disp("Volts ",Vouthigh,"output voltage at high input voltage=")
disp("Volts ",Voutlow,"output voltage at low input voltage=")

// Result
// Output voltage is 20 Volts when input voltage is low
// Output voltage is 100 mVolts when input voltage is high