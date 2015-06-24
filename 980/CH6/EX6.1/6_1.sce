clc;
clear;
format('v',11)
I=1;
Q=integrate('1','t',0,1);          //as I=1
disp(Q,"Total charge passing the cross-section in 1 sec(in coulomb)=");
