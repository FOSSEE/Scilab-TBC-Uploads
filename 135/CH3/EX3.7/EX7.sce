// Example 3.7: Full scale reading
clc, clear
Idc=1e-3; // in amperes
Rf=10; // in ohms
RL=5e3; // in ohms
Vrms=Idc*(RL+Rf)*%pi/(2*sqrt(2)); // Full-scale deflection in volts
disp(Vrms,"Full-scale deflection (V) =");