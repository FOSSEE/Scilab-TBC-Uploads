//Exa 7.4 
clc;
clear;
close;
//given data
format('v',9);
T1=800+273;// in K
A= 5*6;// in square meter
epsilon=0.45;
sigma=5.67*10^-8;
q=epsilon*sigma*A*T1^4;//in watt
disp(q,"Energy emitted by a grey surface in watt : ");
