//Ex 2.9.4
clc;clear;close;
format('v',8);

//Given : 
T=27+273;//K
V1=0.4;//V
V2=0.42;//V
I1=10;//mA
I2=20;//mA
VT=T/11600;//V
Eta=1/log(I1/I2)*(V1-V2)/VT
disp(Eta,"Value of Eta : ");
Io=I1/(exp(V1/Eta/VT)-1)*10^-3;//A
disp(Io*10^9,"Current, Io in nA : ");
//Ans in the book is not accurate.
