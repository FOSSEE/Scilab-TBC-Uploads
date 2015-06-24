clear; clc; close;

Rl = 4.7*(10^(3));
Rs = 0.3*(10^(3));
Ro = 4.7*(10^(3));
Zi = 846.1;
Zo = 4.7*(10^(3));
AvNL = -555.55;    //gain under no-load condition

Av = {Rl/(Rl+Ro)}*AvNL;
disp(Av,"Voltage gain(Av) with 4.7kohm load :");

Avs = (Zi/(Zi+Rs))*(Rl/(Rl+Ro))*AvNL;
disp(Avs,"Voltage gain(Avs) from source to output with 4.7kohm load :");
