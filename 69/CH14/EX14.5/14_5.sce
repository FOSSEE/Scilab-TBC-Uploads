clear; clc; close;

hfe = 120;
hie = 900;
Re = 510;
Rc = 2.2*10^(3);
re = 7.5;

A = -hfe/(hie+Re);
Beta = -Re;
Af = A/(1+Beta*A);
Avf = Af*Rc;
Av = -Rc/re;


disp(Avf,'Voltage gain with feedback = ');
disp(Av,'Voltage gain without feedback = ');
