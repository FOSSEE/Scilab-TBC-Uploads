clear; clc; close;

D2 = 0.1;
D3 = 0.04;
D4 = 0.02;

THD = sqrt((D2^2)+(D3^2)+(D4^2))*100;

disp(THD,'Total harmonic distortion(Percentage) = ');
