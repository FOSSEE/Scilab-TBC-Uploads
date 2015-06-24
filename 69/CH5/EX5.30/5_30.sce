clear; clc; close;

Vee = 18;
Vz = 6.2;
Vbe = 0.7;
Re = 1.8*(10^(3));

I = (Vz-Vbe)/Re;
disp(I,"Constant current :");
