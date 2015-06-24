// Example 3.8: Full-scale reading
clc, clear
Idc=5e-3; // in amperes
Rf=40; // in ohms
RL=20e3; // in ohms
Vrms=Idc*(RL+Rf)*%pi/(2*sqrt(2)); // Full-scale deflection in volts
disp(Vrms,"Full-scale deflection (V) =");