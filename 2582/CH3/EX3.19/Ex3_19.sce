//Ex 3.19
clc;clear;close;
format('v',6);
R=200;//kohm(R1=R2=R)
C=200;//pF(C1=C2=C)
f=1/(2*%pi*R*1000*C*10^-12);//Hz
disp(f*10^-3,"Frequency of oscillation(kHz)");
//Answer in the book is wrong
