clear; clc; close;

Rf = 360*10^(3);
R1 = 12*10^(3);
ro = 75;
A = 200*10^(3);
Beta = 1/30;

Acl = -Rf/R1;
Zi = R1;
Zo = ro/(1+Beta*A)

disp(Acl,'Acl = ');
disp(Zi,'Zi(Ohms) = ');
disp(Zo,'Zo(Ohms) = ');

