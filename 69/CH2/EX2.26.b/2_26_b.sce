clear; clc; close;

Rl = 3*10^(3);
R = 10^(3);
Vi = 16;
Vz = 10;

V = Vz;
Vl = V;
Vr = Vi-Vl;
Il = Vl/Rl;
Ir = Vr/R;
Iz = Ir - Il;


Pz = Iz*Vz;

disp(Vl,'Vl is : ');
disp(Vr,'Vr is :');
disp(Iz,'IZ is :');
disp(Pz,'Pz is :');
