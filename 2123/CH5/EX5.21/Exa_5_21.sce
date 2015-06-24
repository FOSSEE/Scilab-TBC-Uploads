0//Example No. 5.21
clc;
clear;
close;
format('v',5);

//Given Data : 
V1=230;//V
N1=1500;//rpm
Ra=1;//ohm
Ia=10;//A
T=5;//N-m
//V=K*omega+Ia*Ra
K=V1/(N1*2*%pi/60+Ia*Ra);//V-s/rad or N-m/A
Ia=T/K;//A
alfa1=30;//degree
V=2*V1*sqrt(2)/%pi*cosd(alfa1);//Volt
omega=(V-Ia*Ra)/K;//rad/s
N=omega*60/2/%pi;//rpm
disp(N,"Parrt(a) Speed in rpm : ");
alfa=45;//degree
N=950;//rpm
V=2*V1*sqrt(2)/%pi*cosd(alfa);//Volt
Ia=(V-K*2*%pi/60*N)/Ra;//A
T=K*Ia;//N-m
disp(T,"Part(b) Torque in N-m : ");
//Answer is wrong in the book.
