//Example 3_3
clc;
clear;close;

//Given data: 
RL=3;//in ohm
V=30;//in V

//Solution :
Vpeak=2*V/%pi;//V
Vrms=Vpeak/sqrt(2);//V
disp(Vrms,"(a) RMS value of output voltage(V) : ");
//VL=sqrt(2/T*integrate('(V/2)^2','t',0,T/2));//V
VL=V/2;//V
Pout=VL^2/RL;//W
disp(Pout,"(b) Output power(W) : ");
Ipeak=VL/RL;//A
disp(Ipeak,"(c) Peak current in thyristor(A) : ");
Iavg=Ipeak*50/100;//A
disp(Iavg,"(d) Average current of each thyristor(A) : ");
Vprb=2*VL;//V
disp(Vprb,"(e) Peak reverse braking voltage(V) : ");
