//clear//
//Example5.5:System gain and upper break frequency
//Page 142
clear;
clc;
Anoise=10;
funity=4*10^6;          //in Hz
f2=funity/Anoise;
disp(f2,"f2");
n=3;
f2_system=f2*(2^(1/n)-1)^0.5;
disp(f2_system,"f2_system");
