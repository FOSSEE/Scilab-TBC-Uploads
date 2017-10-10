//Example 8_9 page no:319
clc;
R=50;
Xl=25;
V=200;
f=50;
Imax=V/Xl;
Imin=V/(sqrt(R^2+Xl^2));
Pmax=V^2/(2*Xl);
disp(Imax,"the maximum value of current is (in A)");
disp(Imin,"the minimum value of current is (in A)");
disp(Pmax,"the maximum power is (in watts)");
//In text book calculation in Imin is wrong
