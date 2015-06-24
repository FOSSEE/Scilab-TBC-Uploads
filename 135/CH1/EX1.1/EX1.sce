// Example 1.1: Electron concentration
clc, clear
V=0.1; // Voltage in volts
I=5e-3; // Current in ampere
l_a=7e8; // Length to cross-sectional area ratio in metre inverse
mu=0.05; // Electron mobility in metre square per volt second
q=1.6e-19; // Charge on an electron in coulombs
n=(l_a*I)/(V*q*mu); //Electron concentration in inverse metres cube
n=n*1e-6; //Electron concentration in inverse centimetres cube
disp(n,"Electon concentration (cm^-3) = ");