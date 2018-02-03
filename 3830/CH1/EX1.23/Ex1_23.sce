// Exa 1.23

clc;
clear;

// Given

// Dual slope integrating-type DVM
C = 0.1*10^-6; // Capacitor in Farads
R = 10*10^3; // Resistance in  Ohms
Vr = 2; // Reference Voltage(Volts)
Vmax = 10; // maximum output of circuit(Volts)

// Solution

Tc = C*R; // Integrator Time Constant
Vo = Vr/Tc ; // Integrator output in Volt/sec

Ti = Vmax/Vo;  //in sec

printf(' The period of integration of dual slope integrating-type DVM = %d m sec \n',Ti*1000);

//The answer provided in the textbook is wrong
