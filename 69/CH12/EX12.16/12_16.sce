clear; clc; close;

D2 = 0.1;
D3 = 0.02;
D4 = 0.01;
I1 = 4;
Rc = 8;

THD = sqrt((D2^2)+(D3^2)+(D4^2));
P1 = (I1^2)*Rc/2;
P = (1+THD^2)*P1;

disp(THD,'Total harmonic distortion = ');
disp(P1,'Fundamental power component(Watts) = ');
disp(P,'Total power(Watts) = ');

