// Example 3.17: (a) R, maximum possible value of load current
//               (b) Range of V
clc, clear
Vz=50; // Diode voltage in volts
Izmin=5e-3; // in amperes
Izmax=40e-3; // in amperes

disp("Part (a)");
ILmin=0;
V=200; // Input voltage in volts
R=(V-Vz)/(Izmax-ILmin); // in ohms
ILmax=((V-Vz)/R)-Izmin; // in amperes
Rk=R*1e-3; // in kilo-ohms
ILmax=ILmax*1e3; // in miliamperes
disp(Rk,"R(kΩ) =");
disp(ILmax,"Maximum possible value of load current (mA) =");

disp("Part (b)");
IL=25e-3;
Vmin=Vz+R*(Izmin+IL); // in volts
Vmax=Vz+R*(Izmax+IL); // in volts
disp(Vmin,"Minimum value of V (V) =");
disp(Vmax,"Maximum value of V (V) =");