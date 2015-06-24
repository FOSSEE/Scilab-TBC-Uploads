clear; clc; close;

Rf = 1*10^(6);
R1 = 100*10^(3);
R2 = 50*10^(3);
R3 = 500*10^(3);

v2 = ["*V2"];
v1 = ["*V1"];
Vo = strcat([string((-Rf/R2)),v2,"+",string((Rf/R3)*(Rf/R1)),v1]);

disp(Vo,'Output voltage = ');
