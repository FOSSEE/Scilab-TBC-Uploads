//Example No. 5.38
clc;
clear;
close;
format('v',9);

//Given Data : 
P=10;//KW
V1=230;//V
N1=1200;//rpm
Ra=0.5;//ohm
Ke=0.182;//V/rpm
V2=260;//V
alfa=30;//degree
Ia=30;//A
Vm=V2*sqrt(2);//V
Vdc=2*Vm/%pi*cosd(alfa);//V
Eb=Vdc-Ia*Ra;//V
Kt=Ke*60/2/%pi;//N-m/A
T=Kt*Ia;//N-m
disp(T,"Torque in N-m : ");
N2=Eb/Ke;//rpm
disp(N2,"Speed in rpm : ");
Pout=Vdc*Ia;//W
pf=Pout/V2/Ia;//lagging power factor
disp(pf,"Lagging power factor : ");
