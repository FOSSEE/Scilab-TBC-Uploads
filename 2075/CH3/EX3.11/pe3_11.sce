//example 3.11
clc; funcprot(0);
// Initialization of Variable
V=7.2;
Rq=.2;
Rl=4;
D=.6;
//calculation
Ip=V/(Rq+Rl);
Vl=Ip*Rl;
P=D*Vl*Ip;
disp(P,"power dissipated in watt:")
Vq=Ip*Rq;
Pq=D*Vq*Ip;
disp(Pq,"power dissipated when transistor resistance is 0.2 hm in watt:")
clear()
