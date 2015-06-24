
//Example 2.4. // input voltage``
clc;
clear;
close;
//given data :
Va=2000; // in volts
ld=0.02; // in m
d=.005; // in m
L=.3; // in m
D=.03; // in m
Og=100; // overall gain
Vd=(2*d*Va*D)/(L*ld);
I=Vd/Og;
disp(I,"inout voltage,I(V) = ")
