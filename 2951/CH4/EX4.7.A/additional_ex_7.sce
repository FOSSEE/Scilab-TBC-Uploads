clc;
clear;
a=8;// amplitude in V
r=30; //resistance in ohms

Pc_unmodulated=a^2/(2*r);
Pt=1.792^2/(2*30)+2*(4.616)^2/(2*30)+2*(2.824^2)/(2*30)+2*(1.032)^2/(2*30)+2*(0.272)^2/(2*30)+2*(0.056)^2/(2*30)+2*(0.008)^2/(2*30);

// change in answer due to approximations in the book

disp(Pc_unmodulated,"Unmodulated Power Carrier(in W)=");
disp(Pt,"Total Power  in modulated wave(in W)=");
disp("Power in the modulated wave is equal to");
disp("power  in the unmodulated wave");
disp("Small error due to rounded off values in Bessel functions");
