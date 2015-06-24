//Caption: Calculate (a)% slip (b)Rotor copper loss (c)Output from the rotor (d)Efficiency 
//Exa:11.10
clc;
clear;
close;
V=440//Supplied voltage(in volts)
f=50//frequency(in hertz)
p=6//Number of poles
n=960//Speed of motor(in r.p.m)
P_i=50000//Input power(in watt)
P_wf=1800//Winding and friction losses(in watt)
P_s=1200//Stator losses(in watt)
n_s=(120*f)/p
S=((n_s-n)/n_s)*100
disp(S,'(a)% slip=')
P_r=P_i-P_s
P_rc=(S/100)*P_r
disp(P_rc,'(b)Rotor copper loss(in watt)=')
P_o=P_r-P_rc-P_wf
disp(P_o,'(c)Output of rotor(in watt)=')
eff=(P_o/P_i)*100
disp(eff,'(d)Efficiency(in%)=')