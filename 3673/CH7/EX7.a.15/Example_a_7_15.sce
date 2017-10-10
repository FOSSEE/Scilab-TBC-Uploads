//Example_a_7_15 page no:282
clc;
Rs=2;
Rl=20;
Zt=Rs-%i*5+Rl;
Vs=50;
I=Vs/Zt;
Imag=sqrt(real(I)^2+imag(I)^2);
P=Imag^2*Rl;
disp(P,"the maximum power transferred is (in W)");
//power varies slightly due to values are rounded off in text book
