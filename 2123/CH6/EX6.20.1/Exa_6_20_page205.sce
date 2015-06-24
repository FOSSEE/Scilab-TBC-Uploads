//Example No. 6.20(page no. 205)
clc;
clear;
close;
format('v',8);

//Given Data : 
Pout=2500;//hp
V=2300;//volt
P=20;//pole
f=50;//Hz
Xs=1.77;//ohm/phase
Pout=Pout*735.5/1000;//KW
V=V/sqrt(3);//Volt/phase
cos_theta=1;
I=Pout*10^3/3/V/cos_theta;//A
Ixs=I*Xs;//V
E=sqrt(V^2+Ixs^2);//V
Pout_max=3*V*E/Xs/1000;//KW
Tmax=Pout_max*1000;//synch. Watts
ns=2*f/P;//rps
Tmax=Pout_max*1000/2/%pi/ns;//N-m
disp(Tmax,"Maximum torque in N-m : ");
