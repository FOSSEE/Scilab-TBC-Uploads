// Exa 5.5

clc;
clear;

// Given

S = 0.6*10; // sensitivity of oscillograph in V per cm
A = 2; // Area of oscilloscope area in cm^2
dx = 4; // x-axis deflection in cm
dy = 3; // y-axis deflection in cm

// solution

printf(' Ref fig. 5.5(a and b) -If Ic leads Vc by 90 degree, C will be a lossless ideal capacitor, and it will have infinite resistance R. Therefore, Ic is leading Vc by <90 degree . Theta is loss of the capacitor \n ');
printf(' Power factor = cos(theta) = 1  when theta = o degree) \n');

pf = 1;

Vcondenser = (1/sqrt(2)) * S * dx*200; // since one-two thousandth od C voltage is applied to the x-plates
Icondenser = (1/sqrt(2)) * S * 1/100000 ; // since Y-plates are impressed with voltage 100000 times the magniture of  condenser I.

Pcondenser = Vcondenser * Icondenser;

printf(' If p.f =1, the ellipse could have a major axis of %d cm and a minimum axis of %d cm \n',2*dx,2*dy);

printf(' Total area = %.2f cm^2 \n',%pi/4 * 2*dx*2*dy);

printf(' power loss of the capacitor = %.4f W \n',Pcondenser*A/(12/%pi));

// The answer provided in the textbook is wrong
