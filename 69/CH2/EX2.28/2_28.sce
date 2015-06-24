clear; clc; close;

Rl = 1200;
R = 320;
Vz = 20;
Izm = 60*10^(-3);

Vimin = ((Rl+R)*Vz)/(Rl);
Il = Vz/Rl;
Irmax = Izm+Il;
Vimax = Irmax*R + Vz;
disp(Vimin,'Min value of V :');
disp(Vimax,'Max value of V: ');

