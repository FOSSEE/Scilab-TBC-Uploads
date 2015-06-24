//Example 5.21
clc;clear;close;
z=poly(0,'z');
H=(1+z^-1)/(1+3/4*z^-1+1/8*z^-2);
pole=roots(numer(H));
zero=roots(denom(H));
disp(H,'System Transfer Function H(z)=');
disp(zero,'System zeros are at');
disp(pole,'System poles are at ');
plzr(H);