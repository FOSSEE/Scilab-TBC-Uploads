//Example 8.15 // 
clc;
clear;
close;
//given data :
B=5*10^6;// in Hz
Ts=10;// in ns
Td=4;// in ns
a=9;// in ns/km
b=2;// in ns/km
l=6;// in km
Tn=a*l;// in ns
Tc=b*l;// in ns
Ts_max=(0.35/B)*10^9;
disp(Ts_max,"T system_maxmum,(ns) = ")
Tsys=1.1*sqrt(Ts^2+Tn^2+Tc^2+Td^2);
disp(Tsys,"T system,(ns) = ")
//answer is wrong in the textbook
