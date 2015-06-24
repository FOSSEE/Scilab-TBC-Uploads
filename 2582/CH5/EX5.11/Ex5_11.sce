//Ex 5.11
clc;clear;close;
format('v',5);
f0=1.5;//kHz
Vopp=6;//V
Vsat=13.5;//V
//Let R2=10kohm
R2=10;//kohm
R3=R2*2*Vsat/Vopp;//kohm
//Let C1=0.05 micro F
C1=0.05;//micro F
R1=R3/(4*f0*1000*R2*1000*C1*10^-6);//kohm
disp(R3,R2,R1,"Values of R1, R2 & R3(kohm) are : ");
disp(C1,"Value of C1(micro F)");
