// Example 3.11: (a) V
//               (b) Voltage range of V
clc, clear
Vz=50; // Zener voltage in volts
Izmin=1e-3; // in amperes
Izmax=5e-3; // in amperes

disp("Part (a)");
ILmin=0;
Rs=5e3; // in ohms
V=Vz+Rs*(Izmax+ILmin); // in volts
disp(V,"V (V) =");

disp("Part (b)");
IL=(50/15)*1e-3; // in amperes
Vmin=Vz+Rs*(Izmin+IL); // in volts
Vmax=Vz+Rs*(Izmax+IL); // in volts
disp(Vmin,"Vmin (V) =");
disp(Vmax,"Vmax (V) =");