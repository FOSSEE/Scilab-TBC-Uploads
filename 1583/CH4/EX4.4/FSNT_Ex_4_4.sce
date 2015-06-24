clc
//Chapter 4:Frequency selective networks and transformers
//example 4.4 page no 121
//given
L1=25*10^-6//primary inductance
L2=400*10^-6//secondary inductane
n=(sqrt(L1/L2))//equivalent turns ratio
CT=(8+(2/n^2))*1e-12//total primary capacitance
RL=25*10^3//load resistance reflected to the primary
wo=(sqrt(L1*CT))^-1//resonant frequency
Q=RL/(wo*L1)//quality point
mprintf('the resonant frequency is %3.2e rad/s \n Q = %f',wo,Q)
