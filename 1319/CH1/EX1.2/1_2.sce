// To find the current and power

clc;
clear;

Z=10+20*%i;

V=120;

I=V/Z;

theta=atand(imag(I)/real(I));

P=V*abs(I)*cosd(theta);

disp('A',I,'The current flowing through the given impedance =')
disp('watt',P,'The real power delivered to the impedance =')
