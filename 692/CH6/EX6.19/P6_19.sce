//EXAMPLE 6.19
//Inverse Z-transform using Long division method
clc;
clear;
z=%z;
Hnum=z^2 + 2*z;
Hden=z^2 + 0.4*z -0.12;
hn=ldiv(Hnum,Hden,20);
disp(hn,'The function is, hn = ');
