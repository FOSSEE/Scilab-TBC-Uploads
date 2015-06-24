clear; clc; close;

Vds = 8;

Vgs = 0;
Vds_delta = 5;
Id_delta = 0.2*10^(-3);
rd = Vds_delta/Id_delta;
disp(rd,'For Vgs = 0V,rd(ohms) = ');

Vgs = -2;
Vds_delta = 8;
Id_delta = 0.1*10^(-3);
rd = Vds_delta/Id_delta;
disp(rd,'For Vgs = -2V,rd(ohms) = ');
