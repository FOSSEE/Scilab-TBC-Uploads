// Exmaple 3.14: Load-current range, Series resistance in redesigned circuit
clc, clear
// In Fig. 3.37
Vz=6.8; // in volts
Izk=0.1e-3; // in amperes
Vs=10; // in volts
Rs=1e3; // in ohms
ILmax=((Vs-Vz)/Rs)-Izk; // in amperes
ILmax=ILmax*1e3; // in miliamperes
disp(0,"ILmin =");
disp(ILmax,"ILmax (mA) =");

disp("Redesigned Part")
RL=1e3; // in ohms
Izk=Izk*10; // in amperes
I=Izk+(Vz/RL); // in amperes
R=(Vs-Vz)/I; // in ohms
disp(R,"Series resistance (Ω) =");