// Example 3.6: (a) Peak value of current
//              (b) DC value of current
//              (c) Ripple factor
//              (d) Rectification efficiency
clc, clear
// From the Fig. 2.16
RL=1e3; // Load resistance in ohms
rd=10; // Forward bias dynamic resistance of diodes in ohms
Vmax=220; // Amplitude of input voltage in volts

disp("Part (a)");
Imax=Vmax/(rd+RL); // Peak value of current in amperes
disp(Imax,"Peak value of current (A) =");

disp("Part (b)");
Idc=2*Imax/%pi; // DC value of current in amperes
disp(Idc,"DC value of current (A) =");

disp("Part (C)");
ripl=sqrt((Imax/(Idc*sqrt(2)))^2-1);
disp(ripl,"Ripple factor =");

disp("Part (d)");
eta=8/(%pi^2*(1+(rd/RL))); // Rectification efficiency
disp(eta,"Rectification efficiency =");