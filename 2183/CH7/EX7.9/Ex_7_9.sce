//Example 7.9 // NEP and specific detectivity
clc;
clear;
close;
//given data :
h=6.63*10^-34;
c=3*10^8;
Id=9*10^-9;// in A
e=1.6*10^-19;
eta=60/100;
lamda=1.3*10^-6;// in m
A=100*50*10^-12;// in m^2
NEP=(h*c*sqrt(2*Id*e))/(eta*e*lamda);
disp(NEP,"NEP,(W) = ")
D=sqrt(A)/NEP;
disp(D,"Specific detectivity,(MHz^(-1/2) W^-1) = ")
