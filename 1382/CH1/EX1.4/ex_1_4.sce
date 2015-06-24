// Example 1.3: standard resistor
clc, clear
vf=1.8; // in volts
if=16*10^-3; // in ampere
vo=8; // in volts
rs=(vo-vf)/if; // resistor in ohm
disp(rs,"standard resistor (ohm) = ")
