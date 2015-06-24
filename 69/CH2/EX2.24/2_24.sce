clear; clc; close;

E = 40;
Vk = 0.7;
Vz1 = 6;
Vz2 = 3.3;
R = 1.3*10^(3);

Vo1 = Vz2 + Vk;
Vled =Vo1;
Vo2 = Vo1 + Vz1;
Vr = E-Vo2-Vled;
Ir = Vr/R;
Iled = Ir;
Iz = Ir;
Ps = E*Ir;
Pled = Vled*Iled;
Pz = Vz1*Iz;

disp(Vo1,'Reference voltage 1 : ');
disp(Vo2,'Reference voltage 2 : ');
disp(Iled,'Level of current through led :');
disp(Ps,'Power supplied by circuit : ');
disp(Pled,'Power absorbed by led :');
disp(Pz,'Power absorbed by zener diode :');
