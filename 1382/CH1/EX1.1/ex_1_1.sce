// Example 1.1: resistance
clc, clear
Iz=10*10^-3; // reverse current in ampere
Vz=0.05; // zener voltage in volts
Rz=Vz/Iz; // resistance in ohm
disp(Rz,"resistance (ohm) = ");
