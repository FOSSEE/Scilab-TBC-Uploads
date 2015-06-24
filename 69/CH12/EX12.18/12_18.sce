clear; clc; close;

Tj = 200;
Ta = 40;
Qjc = 0.5;
Qcs = 0.6;
Qsa = 1.5;


Pd = (Tj-Ta)/(Qjc+Qcs+Qsa);

disp(Pd,'Maximum power dissipated(Watts) = ');
