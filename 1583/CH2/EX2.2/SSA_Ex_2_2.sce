clc
//Chapter 2:Small Signal Amplifiers
//example 2.2 page no 22
//given
Ic=10^-3//collector bias current
B=100//current gain
RL=4*10^3//load resistance
Rs=50//source resistance
gm=40*Ic//transconductance
rpi=B/gm//base emitter resistance
Av=(B*RL)/(rpi+Rs*(1+B))//voltage gain
disp(Av,'the voltage gain is ')
Ai=B/(1+B)//current gain
disp(Ai,'the current gain is ')
Zi=1/gm//input impedance
mprintf('the input impedance is %d ohm',Zi)

