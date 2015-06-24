clear; clc; close;

E = 20;    //volts
R = 5.6*10^(3);    //ohms

Id = 0;    //amperes
Vd1 = 0;
Vo = Id*R;
Vd2 = E;


diary('C:\Users\DELL\Desktop\intern\chapter_2\2_8.txt');
disp(Vo,'Output Volatge is : ');
disp(Id,'Output Current is : ');
disp(Vd2,'Voltage across diode 2 is :')

