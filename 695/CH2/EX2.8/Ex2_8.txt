//Caption:Find the speed of generator
//Exa:2.8
clc;
clear;
close;
P=8;//no. of poles
S=70;//no. of slots
C=22;//conductors per slot
A=8;
D=0.48;//in meter
Z=S*C;//no.of conductors
r=0.64;//ratio of pole arc to pole pitch 
l=0.28;//length of pole shoe in meter
B=0.32;//air gap flux density in weber/meter^2
E_g=400;//in volts
Pole_arc=r*%pi*D/P;//in meter
Ao=Pole_arc*l;//Area of pole shoe in meter
Phy=Ao*B;//in weber
N=E_g*60*A/(Phy*Z*P);
disp(N,'Speed of generator (in rpm)=')