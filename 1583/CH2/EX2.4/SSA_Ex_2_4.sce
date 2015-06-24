clc
//Chapter 2:Small Signal Amplifiers
//example 2.4 page no 30
//given
VDS=15
IDSS=8*10^-3
gmo=4*10^-3
rd=13*10^3
ID=2*10^-3//drain current
Vs=0//source is grounded Vgs=Vg-Vs=Vi
RL=2*10^3//load resistance
R_L=(RL*rd)/(RL+rd)//equivalent load resistance
gm=gmo*sqrt(ID/IDSS)//transconductance
Av=-gm*R_L//voltage gain Av=Vo/Vi=-gm*R_L
mprintf('the midband voltage gain is %f ',Av)
