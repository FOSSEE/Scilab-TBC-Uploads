clear; clc; close;

Vi_rms = 12;
Rl = 4;
Vcc = 25;



Vi_p = sqrt(2)*Vi_rms;
Vl_p = Vi_p;
Po_ac = (Vl_p^2)/(2*Rl);
Il_p = Vl_p/Rl;
Idc = (2/%pi)*(Il_p);
Pi_dc = Vcc*Idc;
Pq = (Pi_dc-Po_ac)/2;

n = (Po_ac/Pi_dc)*100;

disp(Po_ac,'Output power(Watts) = ');
disp(Pi_dc,'Input power(Watts) = ');
disp(Pq,'Power dissipated(Watts) = ');
disp(n,'Efficiency(Percentage) = ');
