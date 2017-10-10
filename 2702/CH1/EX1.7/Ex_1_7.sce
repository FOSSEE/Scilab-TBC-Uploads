// Exa 1.7
clc;
clear;
close;
// Given data
V1= 745;// in µV
V2= 740;// in µV
V1=V1*10^-6;// in volt
V2=V2*10^-6;// in volt
CMRR=80;// in dB
Av=5*10^5;
// (i)
// CMRR in dB= 20*log(Ad/Ac)
Ad=Av;
Ac= Ad/10^(CMRR/20);
// (ii)
Vo= Ad*(V1-V2)+Ac*(V1+V2)/2;
disp(Vo,"Output voltage in volt is : ")

// Note:- In the book, there is calculation error to evaluate the value of Ac, so the value of Ac is wrong ans to evaluate the output voltage there is also calculation error 
