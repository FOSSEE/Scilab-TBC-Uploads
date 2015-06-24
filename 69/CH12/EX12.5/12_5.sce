clear; clc; close;

Vcc = 10;
Icq = 140*10^(-3);
Po_ac = 0.477;


Pi_dc = Vcc*Icq;
Pq = Pi_dc-Po_ac;
n = (Po_ac/Pi_dc)*100;

disp(Pi_dc,'Dc input power(Watts) = ');
disp(Pq,'Power dissipated by transistor(Watts) = ');
disp(n,'Efficiency(Percentage) = ');

