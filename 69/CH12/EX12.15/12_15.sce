clear; clc; close;

//part a
Vce_min = 1;
Vce_max =22;
Vceq = 12;
D2 = abs(((1/2)*(Vce_max+Vce_min)-Vceq)/(Vce_max-Vce_min))*100;
disp(D2,'Second harmonic distortion(Percentage) = ');

//part b
Vce_min = 4;
Vce_max =20;
Vceq = 12;
D2 = abs(((1/2)*(Vce_max+Vce_min)-Vceq)/(Vce_max-Vce_min))*100;
disp(D2,'Second harmonic distortion(Percentage) = ');
