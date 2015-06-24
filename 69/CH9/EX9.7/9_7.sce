clear; clc; close;

Po = 40;
Ro = 10;
Gv = 40;
Gdb = 25;

Pi = Po/(10^(25/10));
disp(Pi,'Input power in Watt = ');

Vo = sqrt(Po*Ro);
Vi = Vo/10^(Gv/20);
disp(Vi,'Input voltage in volts = ');
