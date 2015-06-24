//Ex 2.9.6
clc;clear;close;
format('v',8);

//Given : 
Io1=10*10^-9;//A
Io2=10*10^-9;//A
Eta=1.1;//constant
T=25+273;//K
V=0.2;//V(assumed)
VT=T/11600;//V
I1=Io1*(exp(V/Eta/VT)-1);//A
I2=Io2*(exp(V/Eta/VT)-1);//A
I=I1+I2;//A
disp(I*10^6,"Source current in micro Ampere : ");
