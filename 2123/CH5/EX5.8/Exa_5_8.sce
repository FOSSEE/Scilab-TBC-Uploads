//Example No. 5.8
clc;
clear;
close;
format('v',6);

//Given Data : 
Ra=0.2;//ohm
Rf=100;//ohm
N=500;//rpm
Rb=2;//ohm
E1=100;//V
If1=2;//A
If2=2.5;//A
If3=3;//A
E2=125;//V
E3=150;//V
//Ib=Rf*If1/2
//Ia=If+Ib;//A
omega_m=N/60*2*%pi;//rad/s
Kefi1=E1/omega_m;
Kefi2=E2/omega_m;
Kefi3=E3/omega_m;
T1=E1/omega_m*51*If1;//N-m
T2=E2/omega_m*51*If2;//N-m
T3=E3/omega_m*51*If3;//N-m
Tload=300;//N-m
Kefi=2.36;
If=2.482;//A
Ia=51*If;//A
E=If*Rf/2+Ia*Ra;//V
N=E/Kefi;//rad/s
N=N*60/2/%pi;//rpm
disp(N,"Speed of motor in rpm : ");
