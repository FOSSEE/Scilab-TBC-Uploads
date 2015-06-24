clear; clc; close;

R1 = 80*10^(3);
R2 = 20*10^(3);
Ro = 10*10^(3);
Rd = 10*10^(3);
gm = 4000*10^(-6);


Rl = Ro*Rd/(Ro+Rd);
A = -gm*Rl;
Beta = -R2/(R1+R2);
Af = A/(1+Beta*A);

disp(A,'Gain without feedback = ');
disp(Af,'Gain with feedback = ');

