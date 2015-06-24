clear; clc; close;

Rf = 360*10^(3);
R1 = 12*10^(3);
Iio = 20*10^(-9);
Vio = 1*10^(-3);

Vo_vio = Vio*(R1+Rf)/R1;
Vo_iio = Iio*Rf;
Vo = Vo_vio + Vo_iio;

disp(Vo,'Output offset voltage(Volts) = ');

