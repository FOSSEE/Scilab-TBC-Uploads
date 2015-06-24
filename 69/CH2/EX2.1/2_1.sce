clear; clc; close;

E = 10;    //volts
R = 500;    //ohms

Id = E/R;
Vd = E;

Vdq = 0.78;    //volts
Idq = 18.5*10^(-3);//Amperes

Vr = Idq*R;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_1.txt');
disp(Vdq,'Voltage at Q-point is :');
disp(Idq,'Current at Q-point is :');
disp(Vr,'Vr = ');
