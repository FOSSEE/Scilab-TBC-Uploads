clear; clc; close;

Vd =12;
Vdd = 16;
Vgsq = -2;
Rd = 1.8*10^(3);

Vg = (47*10^(3)*16)/((47+91)*10^(3));
Id = (Vdd-Vd)/Rd;

Rs = (Vg-Vgsq)/Id;

disp(Rs,'Rs(Ohms) = ');

