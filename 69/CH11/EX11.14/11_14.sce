clear; clc; close;

R1 = 10*10^(3);
R2 = 10*10^(3);
C1 = 0.1*10^(-6);
C2 = 0.002*10^(-6);


fol = 1/(2*%pi*R1*C1);
foh = 1/(2*%pi*R2*C2);

disp(fol,'Low Cutoff frequency of band pass filter(hertz) = ');
disp(foh,'High Cutoff frequency of band pass filter(hertz) = ');
