clear;
clc;
S11=.85*(cosd(-30)+%i*sind(-30));
S12=.07*(cosd(56)+%i*sind(56));
S21=1.68*(cosd(120)+%i*sind(120));
S22=.85*(cosd(-40)+%i*sind(-40));
Zl=75,Zo=75;
Tl=(Zl-Zo)/(Zl+Zo);
Ti=S11+ (S12*S21*Tl)/(1-S22*Tl);
disp(Ti,'Input reflection coefficient=')