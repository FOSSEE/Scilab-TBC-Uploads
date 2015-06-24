//EXAMPLE 6.33
//Transfer function of moving average filter
clear;
clc;
syms n z M;
x=z^(-n);
H1=nusum(x,n,0,M-1);
H=H1/M;
disp(H,'Transfer function, Hz = ');