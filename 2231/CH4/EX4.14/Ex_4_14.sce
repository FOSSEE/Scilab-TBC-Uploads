////Example 4_14
clc;
clear;close;

//Given data: 
V=800;//V
P=300;//HP
Eff=0.9;//Efficiency
R=0.1;//ohm
L=100/1000;//H
alfa=0.2;//duty cycle
N=900;//rpm
f=400;//Hz

//Solution :
Pout=P*735.5/1000;//kW
Pin=Pout/Eff;//kW
I=Pin*1000/V;//A
E=V-I*R;//V(at rated voltage)
Edash=V*alfa-I*R;//V(at 0.2 duty cycle)
Ndash=N*Edash/E;//rpm
disp(Ndash,"Motor speed(rpm)");
T=1/f;//s
d_ia=(V-alfa*V)/L*alfa*T;//A
disp(d_ia,"Current swing(A)");
