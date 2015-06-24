clear; clc; close;

Rs = 1*(10^(3));
Rl = 8.2*(10^(3));

Zi1 = 10*(10^(3));
Zo1 = 12;
AvNL1 = 1;
Vi1 = rand();

Zi2 = 26;
Zo2 = 5.1*(10^(3));
AvNL2 = 240;
Vi2 = rand();

Vo1 = (Zi2/(Zi2+Zo1))*AvNL1*Vi1;
Av1 = Vo1/Vi1;
disp(Av1,"Voltage gain(Av1) for first stage :");

Vo2 = (Rl/(Rl+Zo2))*AvNL2*Vi2;
Av2 = Vo2/Vi2;
disp(Av2,"Voltage gain(Av2) for second stage :");

Avt = Av1*Av2;
disp(Avt,"Total Voltage gain(Avt) :");

Avs = {Zi1/(Zi1+Rs)}*Avt;
disp(Avs,"Total Voltage gain(Avs) from source:");

Ait = -Avt*(Zi1/Rl);
disp(Ait,"Total current gain(Ai) :");

Vs = rand();
Vi = {Zi2/(Zi2+Rs)}*Vs;
Avs = (Vi/Vs)*Av2;
disp(Avs,"Total gain if emitter-follower configuration removed :");
