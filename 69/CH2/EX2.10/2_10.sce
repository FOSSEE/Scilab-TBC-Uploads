clear; clc; close;

E = 10;    //volts
R = 0.33*10^(3);    //ohms

Vo = 0.7;    //volts
I = (E - Vo)/R;
Id1 = I/2;
Id2 = I/2;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_10.txt');
disp(Vo,'Output Volatge is : ');
disp(Id1,'Current through diode 1 is : ');
disp(Id2,'Current through diode 2 is :')

