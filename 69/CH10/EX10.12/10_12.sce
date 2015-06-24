clear; clc; close;

B1 = 1*10^(6);
Avd = 200*10^(3);//converting from V/mV

f1 = B1;
fc = f1/Avd;

disp(fc,'Cutoff frequency(Hertz) = ')
