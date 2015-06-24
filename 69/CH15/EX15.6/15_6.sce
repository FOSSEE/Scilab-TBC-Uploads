clear; clc; close;

Rl = 1000;
R = 120;
Vdc = 60;

Vdc_dash = (Rl/(R+Rl))*Vdc;

disp(Vdc_dash,'Dc voltage across 1k-ohm load = ');
