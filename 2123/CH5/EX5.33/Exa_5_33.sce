//Example No. 5.33
clc;
clear;
close;
format('v',9);

//Given Data : 
P=6;//poles
V=220;//V
f=50;//Hz
Ra=0.2;//ohm
Rf=150;//ohm
Z=150;//no. of conductors
fi=0.02027;//Wb(flux)
alfa=0;//degree
alfa_a=45;//degree
Ia=25;//A
A=2;//
T=Z*P*fi*Ia/(2*%pi*A);//N-m
disp(T,"Totque in N-m : ");
Vm=V*sqrt(2);//V
Vdc=2*Vm/%pi*cosd(alfa_a);//V
Eb=Vdc-Ia*Ra;//V
N=Eb*60*A/(Z*P*fi);//rpm
disp(N,"Speed in rpm : ");
Pout=Vdc*Ia;//W
pf=Pout/V/Ia;//lagging
disp(pf,'Lagging power factor : ' );

