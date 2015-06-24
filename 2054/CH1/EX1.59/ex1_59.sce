//Exa:1.59
clc;
clear;
close;
t=90;//in seconds
T_eq=sqrt(40750/t);//in Kg-m
N=750;//in rpm
P=T_eq*9.81*2*%pi*N/60;
disp(P,'Power Rating Of Motor (in Kws)=');