//Exa 1.12
clc;
clear;
close;
//Given data
format('v',6);
C1=21;//in pF
V1=4;//in volt
V2=9;//in volt
disp("C is proportional to 1/sqrt(V)");
disp("So, C2/C1=sqrt(V1/V2)");
C2=sqrt(V1/V2)*C1;//in pF
disp(C2,"At reverse bias 9V, Diode capacitance in pF : ");
