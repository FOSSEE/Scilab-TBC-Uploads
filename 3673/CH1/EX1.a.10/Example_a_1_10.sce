//Example 1_10 page no:28
clc;
It=4;
Rt=7;
R2=2;
R10=10;
I10=It*(Rt/(Rt+R10));
disp(I10,"the current flowing through 10 ohm resistor is (in A)");
I5=It*(R10/(R10+Rt));
V=I5*R2;//the voltage across 2 ohm resistor Vs
disp(V,"the voltage across 2 ohm resistor Vs is (in V)");
