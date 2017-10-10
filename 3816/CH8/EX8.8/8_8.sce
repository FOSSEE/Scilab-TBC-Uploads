clc;
clear;
W=1000;
P=10;
T=573;//Full load torque
Ke=9;//Kinetic energy stored
Sfl=0.10;//Slip for full load torque
Mo=5;//idling torque
M1=40;//instantaneous torque
Tfl=16.7;//Rated full load torque
S=0.1;//Rated full load torque is developed at 0.1
K=167;
M=K*S;
alpha=7;
t=[0:0.1:5];
J=Ke*(10^6)*(1/2)*(60^2);
Ws=62.8;//Synchronous speed
M=((M1-Mo+(alpha*((J*Ws)/K)))*(1-exp((-K)/(J*Ws))*t))+Mo-(alpha*t);
plot(t,M);
xlabel('Time')
ylabel('Torque')
