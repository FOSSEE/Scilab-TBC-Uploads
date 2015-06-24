//Example 5.17 // fluxmeter
clc;
clear;
close;
//given data :
N1=800;// turns
I=5;// in A
l=1;// in m
A=5*10^-4;// in m^2
N=500;// turns
theta=25;// divisions
H=(N1*I)/l;
B=(4*%pi*10^-7*H);
fi=B*A*10^8;
K=((2*N*fi*10^-8)/(theta));
disp(K*10^-3,"Constant is,(Wb-turn/scale-div)=")
