//exa 1.13
clc;clear;close;
format('v',7);
LF=0.825;//Daily Load Factor
ratio1=0.87;//daily peak load to monthly peak load
ratio2=0.78;//monthly peak load to annually peak load
LF_annual=LF*ratio1*ratio2;//Annual Load Factor
disp(LF_annual,"Annual Load Factor : ");
