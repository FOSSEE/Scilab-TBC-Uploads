//Example No. 5.16
clc;
clear;
close;
format('v',7);

//Given Data : 
Ra=0.1//ohm
Rb=7.5//ohm
Kv=1.4;//V/A-rad/s
Ia=120;//A
If=1.6;//A
cycle=0.35;//sec

Vavg=Rb*Ia*(1-cycle);//V
disp(Vavg,"Average voltage across chopper in volt : ");
Pb=Ia^2*Rb*(1-cycle)^2;//W
disp(Pb,"Power dissipated in watts : ");
emf=Vavg+Ra*Ia;//V
omega=emf/Kv/If;//rad/s
N=omega*60/2/%pi;//rpm
disp(N,"Speed in rpm : ");
//Answer of Pb & speed is wrong in the book.
