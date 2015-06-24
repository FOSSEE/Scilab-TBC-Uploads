clear; clc; close;

E = 8;    //volts
R = 2.2*10^(3);    //ohms

Vd = 0.7;    //Diode is on
Vr = E-Vd;
Id = Vr/R;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_4.txt');
disp(Vd,'Diode Volatge is : ');
disp(Vr,'Voltage across R is : ');
disp(Id,'Current through diode is : ');
