//Example 1_7 page no:25
clc;
I5=4;
I6=1;
V=30;
R6=6;
V6=24;
V10=50;
I10=I5+I6;
Vc=-V6;
V1=V10-Vc;
disp(I10,"the current through 10 ohm resistance is (in A)");
Vs=I10-V+Vc;//calculating the source voltage
disp(Vs,"the source voltage Vs is (in V)");
