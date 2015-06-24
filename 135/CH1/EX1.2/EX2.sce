// Example 1.2: Electric field intensity, Voltage
clc, clear
l=3e-3; // Length of the bar in metres
a=50*10*1e-12; // Cross-sectional area in metres square
I=2e-6; // Current in amperes
rho=2.3e3; // Resistivity in ohm metres
E=I*rho/a; // Electric field intensity in volt per metres
V=E*l; // Voltage across the bar in volt
disp(E,"Electic field intensity (V/m) = ");
disp(V,"Voltage across the bar (V) = ");