// Exa 4.11
clc;
clear;
close;
format('v',7)
// Given data
V = 230;// in V
f = 50;// in Hz
L = 0.06;// in H
R = 2.5;// in ohm
C = 6.8;// in µF
C = C * 10^-6;// in F
X_L = 2*%pi*f*L;// in ohm
X_C = 1/(2*%pi*f*C);// in ohm
Z = sqrt( (R^2) + ((X_L-X_C)^2) );// in ohm
disp(Z,"The impedance in ohm is");
I = V/Z;// in A
disp(I,"The current in A is");
// tan(phi) = (X_L-X_C)/R;
phi = atand( (X_L-X_C)/R );// in lead
disp("The phase angle between current and voltage is : "+string(abs(phi))+" lead");
phi = acosd(R/Z);
disp("The power factor is : "+string(cosd(phi))+" lead");
P = V*I*cosd(phi);// in W
disp(P,"The power consumed in W is");
