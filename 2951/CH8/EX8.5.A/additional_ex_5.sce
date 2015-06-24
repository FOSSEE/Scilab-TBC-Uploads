clc;
clear;
k=973;
n=1023;
Pa=0.99;
Tw=10*10^(-6);
Tl=40*10^(-6);
N=4;

N_sw=(k/n)*(Pa/(1+Tl/Tw));// efficiency of stop and wait algorithm
N_sgpull=(k/n)*(1/(1+N*(1-Pa)/Pa));//efficiency of go-back-N algorithm
Nsr=(k/n)*Pa;// efficiency of selective repeat algorithm

disp(N_sw,"N s&w");
disp(N_sgpull,"Nsgpull");
disp(Nsr,"Nsr");
