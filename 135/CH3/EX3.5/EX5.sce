// Example 3.5: (a) DC voltage at load
//              (b) PIV rating of each diode
//              (c) Maximum current through each diode
//              (d) Required power rating
clc, clear
Vrms=120; // Input voltage in volts
RL=1e3; // Load resistance in ohms
Vy=0.7; // Cut-in voltage in volts

disp("Part (a)");
Vmax=Vrms*sqrt(2); // in volts
Imax=(Vmax-2*Vy)/RL; // in amperes
Idc=2*Imax/%pi; // in amperes
Vdc=Idc*RL; // in volts
disp(Vdc,"DC voltage at load (V) =");

disp("Part (b)");
disp(Vmax,"PIV rating of each diode (V) =");

disp("Part (c)");
Imax=Imax*1e3; // in miliamperes
disp(Imax,"Maximum current through each diode (mA) =");

disp("Part (d)");
Pmax=Vy*Imax; // Required power rating in mili-watts
disp(Pmax,"Required power rating (mW) =");