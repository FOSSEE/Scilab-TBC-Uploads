//Example No. 6.21
clc;
clear;
close;
format('v',9);

//Given Data : 
Pout=2500;//hp
V1=2300;//volt
P=20;//pole
f=50;//Hz
Xs=1.77;//ohm/phase
Pout=Pout*735.5/1000;//KW
V=V1/sqrt(3);//Volt/phase
cos_theta=1;
I=Pout*10^3/3/V/cos_theta;//A
Ixs=I*Xs;//V
E=sqrt(V^2+Ixs^2);//V
del=acosd(V/E);//degree
Pout=3*V*E/Xs*cosd(del);//W
disp(Pout,"Part(a) Power output in W : ");
T=Pout;//synch. Watts
N=300;//rpm
ns=N/60;//rps
T=T/2/%pi/ns;//N-m
disp(T,"Part(a) Torque in N-m :");
f1=25;//Hz
N1=2*f1/P*60;//rpm
disp(N1,"Part(b) Speed in rpm : ");
T=T*(N1/N)^2;//N-m
disp(T,"Part(b) Torque in N-m : ");
Vapplied=V1*f1/f;//Volts
disp(Vapplied,"Part(b) Applied voltage in volts : ");
Pout=T*2*%pi*N1/60;//W
disp(Pout/1000,"Part(b) Power output in KW : ");
