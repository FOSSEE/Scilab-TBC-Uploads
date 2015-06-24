//Page Number: 5.31
//Example 5.14
clc;
//Given,
Rb=36000; // (b/s)
fM=3200; //Hz
fs=2*fM;
n=Rb/fs;
//As n should be less than Rs/fs

nn=round(n)-1;
disp(nn,'Binary digits');

L=2^nn;
disp(L,'Quantizing level');

fs=Rb/nn;
disp('Hz',fs,'Sampling Rate');
