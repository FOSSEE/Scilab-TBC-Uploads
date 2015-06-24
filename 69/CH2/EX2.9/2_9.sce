clear; clc; close;

E1 = 10;    //volts
E2 = 5;    //volts
R1 = 4.7*10^(3);    //ohms
R2 = 2.2*10^(3);    //ohms

Vd = 0.7;    //volts
I = (E1+E2-Vd)/(R1+R2);
V1 = I*R1;
V2 = I*R2;
Vo = V2 - E2;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_9.txt');
disp(Vo,'Output Volatge is : ');
disp(I,'Output Current is : ');
disp(V1,'Voltage across resistance 1 is :');
disp(V2,'Voltage across resistance 2 is :');

