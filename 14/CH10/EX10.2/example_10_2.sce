//Chapter 10
//Example 10.2
//Page 256
//loadedfault
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
disp(I_L,'Line Current in per unit is')
Vt_g = Vf + (%i * Xl) * I_L;
E11_g = Vt_g + (%i * Xgm) * I_L;
I11_g = E11_g / (%i * (Xgm + Xl));
I11_gA = Ibase * I11_g;
disp(I11_g,'Fault current in the generator side in per unit')
disp(I11_gA,'Fault current in the generator side in A')
E11_m = Vf - (%i * Xgm) * I_L;
I11_m = E11_m / (%i * (Xgm));
I11_mA = Ibase * I11_m;
disp(I11_m,'Fault current in the motor side in per unit')
disp(I11_mA,'Fault current in the motor side in A')
If = I11_g + I11_m;
disp(If,'Toatl Fault current in per unit')
disp(If * Ibase,'Total Fault current in A')