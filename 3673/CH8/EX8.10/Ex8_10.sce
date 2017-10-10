//Example 8_10 page no:319
clc;
V=200;
R=50;
Imax=V/R;
Pmax=Imax*V;
Imax=200/50;
Imin=200/sqrt(50^2+25^2);
disp(Imax,"the maximum value of current is (in A)");
disp(Imin,"the minimum value of current is (in A)");
disp(Pmax,"maximum power in the circuit is (in watts)");
//In text book calculation in Imin is wrong
