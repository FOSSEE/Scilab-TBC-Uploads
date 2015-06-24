// Exa 3.16
format('v',7);
clc;
clear;
close;
// Given data 
// bita= alpha/(1-alpha)
// At alpha= 0.5
alpha= 0.5;
bita=  alpha/(1-alpha);
disp(bita,"At alpha=0.5, the value of bita is : ")
// At alpha= 0.9
alpha= 0.9;
bita = alpha/(1-alpha);
disp(bita,"At alpha=0.9, the value of bita is : ")
// At alpha= 0.5
alpha= 0.999;
bita= alpha/(1-alpha);
disp(bita,"At alpha=0.999, the value of bita is : ")
