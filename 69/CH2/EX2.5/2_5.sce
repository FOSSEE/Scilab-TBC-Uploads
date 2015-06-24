clear; clc; close;

E = 8;    //volts
R = 2.2*10^(3);    //ohms

Id = 0;    //diode reversed
Vr = Id*R;
Vd = E-Vr;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_5.txt');
disp(Vd,'Diode Volatge is : ');
disp(Vr,'Voltage across R is : ');
disp(Id,'Current through diode is : ');

