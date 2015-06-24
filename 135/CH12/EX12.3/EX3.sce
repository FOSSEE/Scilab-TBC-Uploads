// Example 12.3: Range of capacitance
clc, clear
L1=2e-3; // in henry
L2=1.5e-3; // in henry
fmin=1000e3; // in hertz
fmax=2000e3; // in hertz
Cmin=1/((2*%pi*fmax)^2*(L1+L2)); // in farads
Cmax=1/((2*%pi*fmin)^2*(L1+L2)); // in farads
Cmin=Cmin*1e12; // in pico-farads
Cmax=Cmax*1e12; // in pico-farads
disp(Cmin,"Minimum value of C (pF) =");
disp(Cmax,"Maximum value of C (pF) =");