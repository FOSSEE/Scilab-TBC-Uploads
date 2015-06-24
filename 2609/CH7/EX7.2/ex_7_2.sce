////Ex 7.2
clc;
clear;
close;
format('v',9);
ft=2;//kHz
C=0.01;//micro F
T=1/ft;//ms
n=3;//for divide-by-3 circuit
th=(0.2+(n-1))*T;//ms
R=th/(1.1*C);//kohm
disp(R,"Value of Resistance R(kohm)");
