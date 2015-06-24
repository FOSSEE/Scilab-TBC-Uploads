// Prob 1.12
clc;
clear;
close;
format('v',6);
// Given data
P=6;//no. of poles
phase=3;//no. of phase
f=50;//in Hz
S=12;//slots per pole
C=4;//conductor per slot
FullPitch=5/6;//unitless
fi=25;//in mwb
fi=fi*10^-3;//in wb
Zph=C*S*P/phase;//no. of conductors in series per phase
T=Zph/2;//no. of turns per phase
alfa=180*(1-FullPitch);//in degree
Kc=cosd(alfa/2);//unitless
m=S/phase;//no. of slot per pole per phase
Beta=180/S;//in degree
Kd=sind(m*Beta/2)/m/sind(Beta/2);//unitless
Eph=4.44*Kc*Kd*f*fi*T;//in volt
EL=sqrt(3)*Eph;//in volt
disp(EL,"Line emf in volt : ");
