// Example 3.12: Zener diode current, Power dissipation in zener diode and resistor
clc, clear
// In the Fig. 3.35
Vz=6.8; // in volts
R=100; // in ohms

disp("Normal situation");
Vs=9; // in volts
I=(Vs-Vz)/R; // in amperes
Pzener=I*Vz; // in watts
Presistor=I^2*R; // in watts
I=I*1e3; // in miliamperes
Pzener=Pzener*1e3; // in miliwatts
Presistor=Presistor*1e3; // in miliwatts
disp(I,"Zener diode current (mA) =");
disp(Pzener,"Power dissipation in zener diode (mW) =");
disp(Presistor,"Power dissipation in resistor (mW) =");

disp("Aberrant situation");
Vs=15; // in volts
I=(Vs-Vz)/R; // in amperes
Pzener=I*Vz; // in watts
Presistor=I^2*R; // in watts
I=I*1e3; // in miliamperes
Pzener=Pzener*1e3; // in miliwatts
Presistor=Presistor*1e3; // in miliwatts
disp(I,"Zener diode current (mA) =");
disp(Pzener,"Power dissipation in zener diode (mW) =");
disp(Presistor,"Power dissipation in resistor (mW) =");