clear; clc; close;

E = 0.5;    //volts
R = 1.2*10^(3);    //ohms

Id = 0;    //diode off
Vr = Id*R;
Vd = E;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_6.txt');
disp(Vd,'Diode Volatge is : ');
disp(Vr,'Voltage across R is : ');
disp(Id,'Current through diode is : ');
