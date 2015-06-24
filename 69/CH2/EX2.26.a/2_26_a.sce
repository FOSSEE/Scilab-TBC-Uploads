//Implementation of example 2.26_a in chapter 2

clear; clc; close;

Rl = 1.2*10^(3);
R = 10^(3);
Vi = 16;
Vz = 10;

V = (Rl*Vi)/(R+Rl);
Vl = V;
Vr = Vi-Vl;
Iz = 0;

Pz = Iz*Vz;

disp(Vl,'Vl is : ');
disp(Vr,'Vr is :');
disp(Iz,'IZ is :');
disp(Pz,'Pz is :');
