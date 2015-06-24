clear; clc; close;

R  = 51*10^(3);
C = 0.001*10^(-6);


fo = 1/(2*%pi*R*C);

disp(fo,'Resonant frequency = ');

fo2 = 2*fo;
RC = 1/(2*%pi*fo2);
R = 50*10^(3);
C = 510*10^(-12);

disp(R,'Value of R can be = ');
disp(C,'Value of C can be = ');

