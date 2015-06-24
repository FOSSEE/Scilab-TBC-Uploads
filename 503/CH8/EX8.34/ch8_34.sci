//to calculate value of syncpower

clc;
V=6600;
E=V/sqrt(3);

P=12;
dl=1*P/2;

r=20000*10^3;
I=r/(sqrt(3)*V);
Xs=1.65;

Psy=dl*(%pi/180)*E^2/Xs;
disp(Psy,'sync power(W)');