//Ex 2.11.1
clc;clear;close;
format('v',8);

//Given : 
Io=10;//nA
T1=27+273;//K
T2=87+273;//K
VT=T1/11600;//V
Eta=2;//for Si
m=1.5;//for Si
VGO=-1.21;//volt
K=Io*10^-9/T1^m/exp(VGO/Eta/VT);//constant
VT=T2/11600;//V
Io2=K*T2^m*exp(VGO/Eta/VT);//A
disp(Io2*10^9,"Reverse saturation current at 87 degree C in nA : ");
