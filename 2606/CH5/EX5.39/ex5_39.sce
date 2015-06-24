//Page Number: 5.43
//Example 5.39
clc;
//Given,
m=8;
fM=2D+3; //Hz
a=0.2;
//Here we choose L=128;
L=128;
n=log2(L);
Sr=2*fM;
fs=1.25*Sr;

//For n tdm signals
x=m*fs;

//Resultant bit rate
br=7*x;

//Minimum Transmission bandwidth
fB=((1+a)*br)/2;
disp('Hz', fB,'Minimum Transmission bandwidth');
