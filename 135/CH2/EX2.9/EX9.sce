// Example 2.9 (a) Output voltage, Diode currents
//             (b) Output voltage, Diode currents
clc, clear
Vy=0.7; // Cut-in voltage in volts
// In the Fig. 2.17
R1=5e3;
R2=10e3;

disp("Part (a)");
// Since diode D1 is OFF and diode D2 is ON
ID2=(5-Vy-(-5))/(R1+R2); // Current through diode D2 in amperes
Vo=5-ID2*R1; // Output voltage
ID2=ID2*1e3; // Current through diode D2 in miliamperes
disp(Vo,"Output voltage (V) =");
disp(0,"Current through diode D1 =");
disp(ID2,"Current through diode D2 (mA) =");

disp("Part (b)");
// Since both the diodes are ON
VA=4-Vy; // In the fig.
Vo=VA+Vy; // Output voltage
ID2=(5-Vo)/R1; // Current through diode D2 in amperes
IR2=(VA-(-5))/R2; // Current through diode R2 in amperes
ID1=IR2-ID2; // Current through diode D1 in amperes
ID1=ID1*1e3; // Current through diode D1 in miliamperes
ID2=ID2*1e3; // Current through diode D2 in miliamperes
disp(Vo,"Output voltage (V) =");
disp(ID1,"Current through diode D1 (mA) =");
disp(ID2,"Current through diode D2 (mA) =");