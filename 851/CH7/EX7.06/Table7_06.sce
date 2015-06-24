//clear//
//Caption:Bandwidth efficiency of M-ary PSK signals
//Table7.6: Bandwidth Efficiency of M-ary PSK signals
clear;
clc;
close;
M = [2,4,8,16,32,64];//M-ary
Ruo = log2(M)./2; //Bandwidth efficiency in bits/s/Hz
disp('Table 7.7 Bandwidth Efficiency of M-ary PSK signals')
disp('______________________________________________________')
disp(M,'M')
disp('______________________________________________________')
disp(Ruo,'r in bits/s/Hz')
disp('______________________________________________________')
