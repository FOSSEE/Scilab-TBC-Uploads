//Example No. 6.12
clc;
clear;
close;
format('v',7);

//Given Data : 
V1=400;//volt
P=4;//pole
f=50;//Hz
Sm=10/100;//slip
S1=0.04;//slip
N2=900;//rpm

//r2dash=0.01*x2;//ohm/phase
r2dash=0.01
r1dash=0.1
Ns=120*f/P;//rpm
N1=Ns*(1-S1);//rpm
S2=(Ns-N2)/Ns;//slip
T2ByT1=(N2/N1)^2;
//T=3/(2*%pi*ns)*[V1^2/((rdash/S2)^2+xdash^2)]*(rdash/S2)
//T2/T1=V2^2/V1^2*S1/S2*[(1+625*r1dash^2)/(1+6.25*r1dash^2)]
V2=sqrt(T2ByT1*V1^2*S2/S1/[(1+625*r1dash^2)/(1+6.25*r1dash^2)]);//volt
disp(V2,"Stator applied voltage in volts : ");
