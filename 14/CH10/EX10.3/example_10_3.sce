//Chapter 10
//Example 10.3
//Page 259
//thevninloadedfault
clear;clc;
//Given
Pgm = 30e6;
Vgm = 13.2e3;
Xgm = 0.20;
Xl = 0.10;
Pm = 20e6;pfm = 0.8;Vt_m = 12.8e3;
Pbase = Pgm;
Vbase = Vgm;
Vf = Vt_m / Vbase;
Ibase = Pbase / (sqrt(3) * Vbase);
I_L = (Pm / (pfm * sqrt(3) * Vt_m)) * (cos(36.9 * %pi/180) + %i * sin(36.9 * %pi / 180)) / Ibase;
Zth = (%i*(Xgm+Xl) * (%i * Xgm)) / (%i*(Xgm+Xl) + (%i * Xgm));
disp(Zth,'Zth in per unit')
I11_f = Vf / Zth;
disp(I11_f,'Subtransient fault current in per unit')
If_g = I11_f * (%i * Xgm) / (%i*(Xgm+Xl) + (%i * Xgm));
If_m = I11_f * (%i * (Xgm + Xl)) / (%i*(Xgm+Xl) + (%i * Xgm));
I11_g = I_L + If_g ;
disp(I11_g,'Subtransient fault current in generator side in per unit')
I11_m = If_m - I_L ;
disp(I11_m,'Subtransient fault current in motor side in per unit')