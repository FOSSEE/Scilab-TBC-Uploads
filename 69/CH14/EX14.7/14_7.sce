clear; clc; close;

R = 10*10^(3);
f = 5*10^(3);
A = 40;
gm = 5000*10^(-6);

C = 1/(2*%pi*R*f*sqrt(6));
Rl = abs(A)/gm;

disp(C,'Value of C = ');
disp(Rl,'Value of Rl = ');

