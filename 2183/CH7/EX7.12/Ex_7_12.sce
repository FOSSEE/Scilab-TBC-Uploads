//Example 7.12 // Optical gain and hFE
clc;
clear;
close;
//given data :
h=6.63*10^-34;
c=3*10^8;
e=1.6*10^-19;
Ic=15*10^-3;// in A
P0=140*10^-6;// in W
lamda=1.3*10^-6;// in m
eta=45/100;// quantum efficiency
G0=(h*c*Ic)/(e*P0*lamda);
disp(G0,"The optical gain,G0 = ")
h_FE=G0/eta;
disp(h_FE,"hFE = ")
// answer is wrong in the textbook
