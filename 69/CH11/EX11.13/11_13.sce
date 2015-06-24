clear; clc; close;

Rf = 50*10^(3);
Rg = 10*10^(3);
R1 = 2.1*10^(3);
C1 = 0.05*10^(-6);

Av = 1+(Rf/Rg);
fol = 1/(2*%pi*R1*C1);

disp(fol,'Cutoff frequency of second order high pass filter(Hertz) = ');
