// Example 3.4: (a) DC load current
//              (b) DC power in load
//              (c) Rectification efficiency
//              (d) Percentage regulation
//              (e) PIV of each diode
clc, clear
Vrms=40; // Input in volts
Rf=1; // Forward conduction resistance of diodes in ohms
RL=29; // Load resistance in ohms
Vmax=Vrms*sqrt(2); // in volts
Imax=Vmax/(Rf+RL); // in amperes

disp("Part (a)");
Idc=2*Imax/%pi; // DC load current in amperes
disp(Idc,"DC load current (A) =");

disp("Part (b)");
Pdc=Idc^2*RL; // DC power in load in watts
disp(Pdc,"DC power in load (W) =");

disp("Part (c)");
Pac=Vrms^2/(Rf+RL); // AC power in load
eta=Pdc/Pac; // Rectification efficiency
disp(eta,"Rectification efficiency =");

disp("Part (d)");
reg=Rf*100/RL; // Percentage regulation
disp(reg,"Percentage regulation (%) =");

disp("Part (e)");
PIV=2*Vmax; // in volts
disp(PIV,"PIV for each diode (V) =");