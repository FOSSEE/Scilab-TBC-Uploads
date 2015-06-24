//Ex 2.9.7
clc;clear;close;
format('v',8);

//Given : 
Io=10^-13;//A
T=27+273;//K
Eta=1;//constant
V=0.6;//V
VT=26/1000;//V
I3=Io*(exp(V/Eta/VT)-1);//A
R=1*1000;//ohm
Ir=V/R;//A
Itotal=I3+Ir;//A
VD1=log(Itotal/Io)*Eta*VT;//V
VD2=VD1;//V
Vin=VD1+VD2+V;//V
disp(Vin,"Voltage Vin(V) : ");
