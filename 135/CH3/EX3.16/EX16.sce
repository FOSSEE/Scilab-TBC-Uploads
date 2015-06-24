// Example 3.16: Series resistance R, Maximum zener current
clc, clear
// In Fig. 3.39
Vz=7.2; // in volts
ILmin=12e-3; // in amperes
ILmax=100e-3; // in amperes
Vs=20; // in volts
Izmin=10e-3; // in amperes
Rs=(Vs-Vz)/(ILmax+Izmin); // Series resistance in ohms
disp(Rs,"Series resistance (Ω) =");
// For ILmin=0
Izmax=((Vs-Vz)/Rs); // in amperes
Izmax=Izmax*1e3; // in miliamperes
disp(Izmax,"Maximum zener current (mA) =");