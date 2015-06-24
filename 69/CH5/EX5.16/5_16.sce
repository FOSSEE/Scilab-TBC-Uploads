clear; clc; close;

Zi = 4*(10^(3));
Zo = 2*(10^(3));
Rs = 0.2*(10^(3));
AvNL = -480;
disp(AvNL,"Voltage gain(Av) with no-load :")

Rl = 1.2*(10^(3));
Av = {Rl/(Rl+Zo)}*AvNL;
disp(Av,"Voltage gain(Av) with 1.2kohm load :");

Rl = 5.6*(10^(3));
Av = {Rl/(Rl+Zo)}*AvNL;
disp(Av,"Voltage gain(Av) with 5.6kohm load :");

Rl = 1.2*(10^(3));
Avs = {Zi/(Zi+Rs)}*{Rl/(Rl+Zo)}*AvNL;
disp(Avs,"Voltage gain(Avs) from source to output with 1.2kohm load :");

Rl = 5.6*(10^(3));
Ai = -Av*(Zi/Rl);
disp(Ai,"Current gain with 5.6kohm load :");
