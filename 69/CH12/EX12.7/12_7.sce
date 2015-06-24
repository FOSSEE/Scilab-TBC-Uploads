clear; clc; close;

Vl_p = 20;
Vcc = 30;
Rl = 16;


Il_p = Vl_p/Rl;
Idc = (2/%pi)*Il_p;
Pi_dc = Vcc*Idc;
Po_ac = ((Vl_p)^2)/(2*Rl);
n = (Po_ac/Pi_dc)*100;


disp(Pi_dc,'Input power(Watts) = ');
disp(Po_ac,'Output power(Watts) = ');
disp(n,'Efficiency(Percentage) = ');

