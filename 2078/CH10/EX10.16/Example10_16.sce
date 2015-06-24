//Exa 10.16
clc;
clear;
close;
//Given data :
L=250;//m
D=19.5;//mm
A=2.25*10^-4;//m^2
wc=0.85;//kg/m
t1=35;//degree C
t2=5;//degree C
Pw=38.5;//kg/m^2
alfa=18.44*10^-6;//per degree C
E=9320;//kg/mm^2
E=9320*10^6;//kg/m^2
Breaking_Load=8000;//kg
SF=2;//Safety factor
T1=Breaking_Load/SF;//kg
f1=T1/A;//kg/m^2
w_w=Pw*D*10^-2;//kg
w1=sqrt(wc^2+w_w^2);//kg
w2=wc;
//f2^2*[(f2-f1)+w1*L^2*E/24/f1^2/A^2+(t2-t1)*E]=w2*L^2*E/24/A^2
//f2^3-f2^2*f1-w2*L^2*E/24/A^2=0
P=[1 -1.0674*10^7 0 -3463.84*10^17];
f2=roots(P);
f2=f2(1);//kg/m^2
S=w2*L^2/8/f2/A;//m
disp(S,"Sag at erection(m)");
