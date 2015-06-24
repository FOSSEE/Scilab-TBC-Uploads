clear; clc; close;

gm = 5*10^(-3);
Rd = 5.1*10^(3);
Rs = 1*10^(3);
Rf = 10*10^(3);


Av = -gm*Rd;
Avf = (-gm*Rd)*(Rf/(Rf+(gm*Rd*Rs)));

disp(Av,'Voltage gain without feedback = ');
disp(Avf,'Voltage gain with feedback = ');

