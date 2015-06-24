//Example 9.4
clc;clear;close;
z=poly(0,'z');
Hz=2*(z+2)/(z*(z-0.1)*(z+0.5)*(z+0.4));
H=dscr(Hz);
disp(Hz,'System Function H(z)=');
disp(H,'System Function for cascade realisation Hk(z)=');