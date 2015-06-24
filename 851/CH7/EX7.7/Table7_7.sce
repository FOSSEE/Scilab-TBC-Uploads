//clear//
//Caption:Bandwidth efficiency of M-ary FSK signals
//Table7.7: Bandwidth Efficiency of M-ary FSK
clear;
clc;
close;
M = [2,4,8,16,32,64];//M-ary
Ruo = 2*log2(M)./M; //Bandwidth efficiency in bits/s/Hz
//M = M';
//Ruo = Ruo';
disp('Table 7.7 Bandwidth Efficiency of M-ary FSK signals')
disp('______________________________________________________')
disp(M,'M')
disp('______________________________________________________')
disp(Ruo,'r in bits/s/Hz')
disp('______________________________________________________')
