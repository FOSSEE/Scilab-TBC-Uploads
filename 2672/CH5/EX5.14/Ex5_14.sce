//Example 5_14
clc;
clear;
close;
format('v',6);
//given data : 
I0=9*10^-7;//A
VF=0.1;//V
I=I0*(exp(40*VF)-1)*10^6;//micro A
disp(I,"Current flowing(micro A)");
//Answer given in the book is not accurate.
