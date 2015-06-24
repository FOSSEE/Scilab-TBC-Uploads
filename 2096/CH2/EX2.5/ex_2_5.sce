
//Example 2.5. // deflection voltage and deflection sensitivity`
clc;
clear;
close;
//given data :
Va=2500; // in volts
ld=0.025; // in m
d=.005; // in m
L=.2; // in m
D=.03; // in m
Vd=(2*d*Va*D)/(L*ld);
S=(D/Vd)*1000;
disp(Vd,"deflection voltage,Vd(V) = ")
disp(S,"deflection sensitivity,S(mm/V) = ")
