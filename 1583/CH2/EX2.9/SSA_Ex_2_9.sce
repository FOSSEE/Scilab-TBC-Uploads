clc
//Chapter 2:Small Signal Amplifiers
//example 2.9 page no 45
//given
ed=5*10^-3//differential voltage
ec=2.5*10^-3//common-mode voltage
gm=1.5*10^-3//tranceconductance
rd=500*10^3
Rs=150*10^3//source resistance
RL=10*10^3//load resistance
Ac=-gm*RL/(1+2*gm*Rs)//common mode gain 
Ad=gm*RL/2//differential gain
Vo=ec*Ac+ed*Ad//actual amplifier output
mprintf('the output to the applied signal is %f mV',Vo*1e3)

