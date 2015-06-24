// Example 3.18: R, ILmax, Power rating of zener diode
clc, clear
// In Fig. 3.41
Vz=6; // in volts
V=22; // in volts
Izmin=10e-3; // in amperes
Izmax=40e-3; // in amperes
ILmin=0;
R=(V-Vz)/(Izmax-ILmin); // in ohms
ILmax=((V-Vz)/R)-Izmin; // in amperes
P=Izmax*Vz; // Power rating of zener diode in watts
ILmax=ILmax*1e3; // in miliamperes
P=P*1e3; // Power rating of zener diode in mili-watts
disp(R,"R(Ω) =");
disp(ILmax,"ILmax (mA) =");
disp(P,"Power rating of zener diode (mW) =");