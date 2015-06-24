clear; clc; close;

Pi = 10*10^(3);
Po = 500;
Vi = 1000;
Ro = 20;

Gdb = 10*log10(Po/Pi);
Gv = 20*log10(sqrt(Po*Ro)/Vi);
Ri = Vi^2/Pi;

disp(Gdb,'Power gain in decibels = ');
disp(Gv,'Voltage gain in decibels = ');
disp(Ri,'Ri(ohms) is ');
disp('which is not equal to Ro');

