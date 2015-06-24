clear; clc; close;

Iio = 150*10^(-9);
Rf = 500*10^(3);
R1 = 5*10^(3);
Vio = 4*10^(-3);

Vo_vio = Vio*(R1+Rf)/R1;
Vo_io = Iio*Rf;
Vo = Vo_vio+Vo_io;

disp(Vo,'Total voltage offset(Volts) = ');
