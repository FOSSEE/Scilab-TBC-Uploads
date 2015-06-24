// Example 3.10: Minimum and maximum value of zener diode current
clc, clear
// From the Fig. 3.33
Vsmin=120; // in volts
Vsmax=170; // in volts
Vz=50; // in volts
Rs=5e3; // in ohms
RLmin=5e3; // in ohms
RLmax=10e3; // in ohms
ILmin=Vz/RLmax; // in amperes
ILmax=Vz/RLmin; // in amperes
Izmin=((Vsmin-Vz)/Rs)-ILmax; // Minimum value of zener diode current in amperes
Izmin=Izmin*1e3; // Minimum value of zener diode current in miliamperes
Izmax=((Vsmax-Vz)/Rs)-ILmin; // Maximum value of zener diode current in amperes
Izmax=Izmax*1e3; // Maximum value of zener diode current in miliamperes
disp(Izmin,"Minimum value of zener diode current (mA) =");
disp(Izmax,"Maximum value of zener diode current (mA) =");