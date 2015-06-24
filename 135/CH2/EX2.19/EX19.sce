// Example 2.19 (a) Vd1 and Vd2
//              (b) Current in the circuit
clc, clear
eta_VT=0.026; // Product of η and VT

disp("Part (a)");
// From the Fig. 2.19(a)
Is=5e-6; // Reverse saturation current through diode D2 in amperes
Id1=Is; // Forward current through diode D1 in amperes
Vd1=eta_VT*log(1+(Id1/Is)); // in volts
Vd2=5-Vd1; // in volts
disp(Vd1,"Vd1 (V) =");
disp(Vd2,"Vd2 (V) =");

disp("Part (b)");
// From the Fig. 2.19(b)
Vz=4.9; // Zener voltage in volts
Vd1=5-Vz; // in volts
I=Is*(%e^(Vd1/eta_VT)-1); // Current in the circuit in amperes
I=I*1e6; // Current in the circuit in micro-amperes
disp(I,"Current in the circuit (μA) =");