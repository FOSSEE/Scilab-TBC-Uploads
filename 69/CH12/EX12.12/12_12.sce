clear; clc; close;

Vcc =25;
Rl = 4;
Vl_p = Vcc;

P2q_max = (2*Vcc^2)/((%pi^2)*Rl);
Vl = 0.636*Vl_p;

disp(P2q_max,'Maximum power dissipated(Watts) = ');
disp(Vl,'Input voltage at which this occurs(Volts) = ');
