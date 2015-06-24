clear; clc; close;

Vcc =30;
Rl = 16;


Po_max = (Vcc^2)/(2*Rl);
Pi_max = (2*Vcc^2)/(%pi*Rl);
n_max = (Po_max/Pi_max)*100;
Pq_max = (1/2)*(2*Vcc^2/((%pi^2)*Rl));

disp(Po_max,'Maximum output power(Watts) = ');
disp(Pi_max,'Maximum input power(Watts) = ');
disp(Pq_max,'Transmission dissipation(Watts) = ');

