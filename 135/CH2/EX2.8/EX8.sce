// Example 2.8: (a) Output voltage
//              (b) Output voltage
//              (c) Output voltage
clc, clear

disp("Part (a)");
// Since both the diodes are in OFF state
Vo=5; // Output voltage in volts
disp(Vo,"Output voltage (V) = ");

disp("Part (b)");
//Since diode D1 is in OFF state and diode D2 is in ON state
// From Fig. 2.16(C)
I=(5-0.6)/(4.7e3+300); // Current flowing through the diode D2 in amperes
Vo=5-I*4.7e3; // Output voltage in volts
disp(Vo,"Output voltage (V) = ");

disp("Part (c)");
// Since both diodes are in ON state
// Applying KVL in Fig. 2.16(d)
I=(5-0.6)/(2*4.7e3+300); // Current flowing through diode D1 or diode D2 in amperes
Vo=5-2*I*4.7e3; // Output voltage in volts
disp(Vo,"Output voltage (V) = ");