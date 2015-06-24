// Example 3.13: Range of load current
clc, clear
Vz=5; // in volts
Izmin=50e-3; // in amperes
Izmax=1; // in amperes
Vmin=7.5; // in volts
Vmax=10; // in volts
Rs=4.75; // in ohms
ILmin=((Vmax-Vz)/Rs)-Izmax; // in amperes
ILmin=ILmin*1e3; // in miliamperes
ILmax=((Vmin-Vz)/Rs)-Izmin; // in amperes
ILmax=ILmax*1e3; // in miliamperes
disp(ILmin,"ILmin (mA) =");
disp(ILmax,"ILmax (mA) =");