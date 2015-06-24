//Example No. 6.16
clc;
clear;
close;
format('v',7);

//Given Data : 
P=6;//pole
f=50;//Hz
S=0.04;//slip
Ton=40;//N-m
Toff=30;//N-m
t_onBYt_off=1;
disp("Part(a) : ");
Ns=2*f/P*60;//rpm
N=Ns*(1-S);//rpm
Tavg=(Ton+Toff)/2;//N-m
disp(Tavg,"Average torque in N-m : ");
Navg=sqrt((N^2)*Tavg/Ton);//rpm
disp(Navg,"Average speed in rpm : ");
disp("Part(b) : ");
N1=800;//rpm
T=Ton*(N1/N)^2;//N-m
Tavg=32;//N-m
//Tavg=32=(Ton*t_on+T*t_off)/(t_on+t_off);//N-m
tonBYtoff=(T-Tavg)/(Tavg-Ton);//
disp(tonBYtoff,"Ratio ton/toff is : ");
