clear; clc; close;

A1 = 2.5;
A2 = 0.25;
A3 = 0.1;
A4 = 0.05;

D2 = (abs(A2)/abs(A1))*100;
D3 = (abs(A3)/abs(A1))*100;
D4 = (abs(A4)/abs(A1))*100;


disp(D2,'Second harmonic distortion(Percentage) = ');
disp(D3,'Third harmonic distortion(Percentage) = ');
disp(D4,'Fourth harmonic distortion(Percentage) = ');

