//Exa 4.6
clc;
clear;
close;
//given data :
n=8;//no. of half wave dipoles
lambda=100;//in cm
lambda=lambda*10^-2;//in m
d=50;//in cm
d=d*10^-2;//in m
I=0.5;//in A
Rr=73;//in Ohm
Pr=n*I^2*Rr;//in Watts
disp(Pr,"Pr in Watts : ");
BWFN=2*lambda/(n*d);//in radian
HPBW=BWFN/2;//in radian
disp(HPBW,"HPBW in radian : ");
disp(HPBW*180/%pi,"HPBW in degree : ")