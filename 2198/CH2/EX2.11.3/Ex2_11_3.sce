//Ex 2.11.3
clc;clear;close;
format('v',8);

//Given : 
Io1=2;//nA
T1=10+273;//K
V=0.4;//volt
VT1=T1/11600;//V
m=1.5;//for Si
Eta=2;//for Si
VGO=-1.21;//volt
K=Io1*10^-9/T1^m/exp(VGO/Eta/VT1);//constant
I1=Io1*10^-9*[exp(V/Eta/VT1)-1];//nA
T2=70+273;//K
VT2=T2/11600;//V
Io2=K*T2^m*[exp(VGO/Eta/VT2)];//A
I2=Io2*[exp(V/Eta/VT2)-1];//nA
change=(I2-I1)/I1*100;//%
disp(change,"% change in diode current : ");
//Answer is wrong in the textbook.
