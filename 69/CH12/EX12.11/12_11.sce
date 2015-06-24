clear; clc; close;

Vcc =25;
Rl = 4;


Po_max = (Vcc^2)/(2*Rl);
Pi_max = (2*Vcc^2)/(%pi*Rl);
n_max = (Po_max/Pi_max)*100;
Vl_p = Vcc;
P2q = Pi_max-Po_max;


disp(Po_max,'Output power(Watts) = ');
disp(Pi_max,'Input power(Watts) = ');
disp(P2q,'Power dissipated(Watts) = ');
disp(n_max,'Efficiency(Percentage) = ');

