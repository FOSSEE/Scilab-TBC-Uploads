//EXAMPLE 6.9
//Determination of ROC
clc;
clear;
z=%z;
a=2*z^4+16*z^3+44*z^2+56*z+32;
b=3*z^4+3*z^3-15*z^2+18*z-12;
[h1,g1]=factors(a);
[h2,g2]=factors(b);
disp(h1,'h1 = ');
disp(h2,'h2 = ');
c=a/b;
disp(c,'function is = ');
plzr(c);