clear;
close;
clc;
W = -%pi:(1/500):%pi;
z = exp(sqrt(-1)*W);
H = z./(z-0.8);
Mag_H = abs(H);
[Phase_H,m] = phasemag(H);
//phasemag used to calculate phase and magnitude in dB
subplot(2,1,1)
plot2d(W,Mag_H)
xlabel('Frequency in Radians')
ylabel('abs(H)')
title('Magnitude Response')
subplot(2,1,2)
plot2d(W,Phase_H)
xlabel('Frequency in Radians')
ylabel('<(H)')
title('Phase Response')