// calculating the frequencies of oscillation
clc;
C=500*10^-12;
R20=10000*(1-0.05*(20-25));
f20=1/(2*%pi*R20*C);
disp(f20,'Frequency of oscillation at 20 degree C (Hz)')
R25=10000*(1-0.05*(25-25));
f25=1/(2*%pi*R25*C);
disp(f25,'Frequency of oscillation at 25 degree C (Hz)')
R30=10000*(1-0.05*(30-25));
f30=1/(2*%pi*R30*C);
disp(f30,'Frequency of oscillation at 30 degree C (Hz)')