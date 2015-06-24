//Calculate incident power and cut off frequency
clc;
I_power=250*0.2*10^-6;
disp(I_power,'incident power (W)')
Rl=10*10^3;
C=2*10^-12;
fc=1/(2*%pi*Rl*C);
disp(fc,'cut off frequency (Hz)')
