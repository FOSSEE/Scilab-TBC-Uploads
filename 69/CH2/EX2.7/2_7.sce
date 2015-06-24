clear; clc; close;

E = 12;    //volts
Vk1 = 0.7;    //volts
Vk2 = 1.8;    //volts
R = 0.680*10^(3);    //ohms

Vo = E-Vk1-Vk2;
Id = Vo/R;

diary('C:\Users\DELL\Desktop\intern\chapter_2\2_7.txt');
disp(Vo,'Output Volatge is : ');
disp(Id,'Output Current is : ');

