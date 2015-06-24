clear; clc; close;

Rl = 320;
Vi = 22;
Rs = 120;


Vl = 8.2+0.7;
Il = Vl/Rl;
Is = (Vi-Vl)/Rs;
Ic = Is-Il;

disp(Vl,'Vl = ');
disp(Il,'Il = ');
disp(Is,'Is = ');
disp(Ic,'Ic = ');
