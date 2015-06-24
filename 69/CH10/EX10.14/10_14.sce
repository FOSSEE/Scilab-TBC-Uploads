clear; clc; close;

Rf = 240*10^(3);
R1 = 10*10^(3);
Vi = 0.02;
w = 300*10^(3);
SR = 0.5;

Acl = abs(Rf/R1);
K = Acl*Vi;
w1 = SR/K;

disp(w,'Since this frequency is much less than maximum obtained,hence no distortion will be observed');
