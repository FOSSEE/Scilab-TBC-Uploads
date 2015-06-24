//Example 6_3
clc;
clear;close;

//Given data: 
V=230;//V
f=50;//Hz
alfa=0;//degree
Rf=200;//ohm
Ra=0.3;//ohm
T=50;//N-m
N=900;//rpm
Kv=0.8;//V/A-rad/s
Kt=0.8;//N-m/A^2

//Solution :
Vm=V*sqrt(2);//V
Vf=2*Vm/%pi;//V
If=Vf/Rf;//A
disp(If,"Field current(A)");
Ia=T/(Kt*If);//A
omega=(2*%pi/60)*N;//radian/s
Eb=Kv*omega*If;//V
Va=Eb+Ia*Ra;//V
alfa_a=acosd(Va/(Vm/%pi)-1);//degree
disp(alfa_a,"Firing angle of armture circuit(degree)");
Pout=Va*Ia;//W
I_in=sqrt(2/(2*%pi)*integrate('Ia^2','t',alfa_a*%pi/180,%pi));//A
VA_in=V*I_in;//VA
pf_in=Pout/VA_in;//lagging
disp(pf_in,"Input power factor(lagging)");
