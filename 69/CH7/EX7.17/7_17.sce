clear; clc; close;

Id_on = 4*10^(-3);
Vgs_on = 6;
Vgs_th = 3;

Vgs = Vgs_on;
Vdd = 2*Vgs;
Vds = Vgs;
Id = Id_on;

Rd = (Vdd-Vds)/Id;

disp(Rd,'Rd(Ohms) = ');
