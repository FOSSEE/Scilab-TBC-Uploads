clear; clc; close;

Vcc = 18;
Vbe = 1.6;
Rb = 3.3*(10^(6));
Re = 390;
Beta = 8000;

Ib = (Vcc-Vbe)/(Rb+(Beta*Re));
disp(Ib,"Ib :");
Ie = (Beta+1)*Ib;
disp(Ie,"Ie :");
Ve = Ie*Re;
disp(Ve,"Ve :");
Vb = Ve+Vbe;
disp(Vb,"Vb :");
disp(Vcc,"Vc :");
