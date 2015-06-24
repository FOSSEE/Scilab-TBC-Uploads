clear; clc; close;

R1 = 20*10^(3);
R2 = 30*10^(3);
Vz = 8.3;
Vbe = 0.7;

Vo = ((R1+R2)/R2)*(Vz+Vbe);

disp(Vo,'Regulated Output voltage = ');
