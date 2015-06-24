// Example 2.4 (a) Current
//             (b) Current
//             (C) Current
clc, clear
IS=10e-6; // Reverse saturation current in amperes
eta=1; // for Ge
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts

disp("Part (a)");
VD=-24; // Reverse bias in volts
ID=IS*(%e^(VD/(eta*VT))-1); // Current in amperes
ID=ID*1e6; // Current in micro-amperes
disp(ID,"Current (μA) = ");

disp("Part (b)");
VD=-0.02; // Reverse bias in volts
ID=IS*(%e^(VD/(eta*VT))-1); // Current in amperes
ID=ID*1e6; // Current in micro-amperes
disp(ID,"Current (μA) = ");

disp("Part (c)");
VD=0.3; // Forward bias in volts
ID=IS*(%e^(VD/(eta*VT))-1); // Current in amperes
disp(ID,"Current (A) = ");