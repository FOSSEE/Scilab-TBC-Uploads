clear; clc; close;

Vz = 12;
Vbe = 0.7;
Vi = 20;
Rl = 5*10^(3);
Ic = 2.26*10^(-3);
Beta = 50;
R = 220;

Vo = Vz-Vbe;
Vce = Vi-Vo;
Ir = (Vi-Vz)/R;
Il = Vo/Rl;
Ib = Ic/Beta;
Iz = Ir-Ib;

disp(Vo,'Output voltage = ');
disp(Iz,'Zener current = ');
