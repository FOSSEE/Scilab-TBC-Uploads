// Exa 3.12
clc;
clear;
close;
// Given data
Av=-8;// voltage gain
I1=15;// in micro A
I1=I1*10^-6;// in amp
Vi=-1;// in volt
R1=abs(Vi)/I1;/// in ohm
disp("Resistace R1 is : "+string(R1*10^-3)+" in k ohm (Use 68 k ohm standard value)")
R1=68;// in k ohm (standard value)
R_f= -Av*R1;// in ohm
disp("Resistance R_f is : "+string(R_f)+" k ohm (Use 560 k ohm standard value)")

