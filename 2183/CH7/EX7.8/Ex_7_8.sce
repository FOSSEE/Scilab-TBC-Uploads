//Example 7.8 // Maximum response time
clc;
clear;
close;
//given data :
Vd=3*10^4;// in m/s
W=30*10^-6;// in m
Bm=Vd/(2*%pi*W);
M=(1/Bm)*10^9;
disp(M,"Maximum response time,(ns) = ")
