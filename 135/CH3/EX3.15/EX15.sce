// Example 3.15: (a) Series resistance
//               (b) Power dissipation rating of zener diode
clc, clear
// In Fig. 3.38
Vz=6; // in volts
ILmin=0;
ILmax=0.5; // in amperes
Vmin=8; // in volts
Vmax=10; // in volts
Izmin=0;

disp("Part (a)");
Rs=(Vmin-Vz)/(ILmax+Izmin); // Series resistance in ohms
disp(Rs,"Series resistance (Ω) =");

disp("Part (b)");
Izmax=((Vmax-Vz)/Rs)-ILmin; // in amperes
Pzmax=Vz*Izmax; // in watts
disp(Pzmax,"Power dissipation rating of zener diode (W) =");