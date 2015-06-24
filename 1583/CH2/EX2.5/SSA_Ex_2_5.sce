clc
//Chapter 2:Small Signal Amplifiers
//example 2.5 page no 32
//given
gm=60*10^-3//transconductance
Si=50//antenna source impedance
rd=2.5*10^3
Zo=rd/(1+gm*rd)//output impedance without load
RL=200//load resistance
zo1=200*Zo/(200+Zo)//output impedance with load
Av=gm*(rd*RL/rd+RL)/(1+gm*(rd*RL/rd+RL))//voltage gain
mprintf('the voltage gain is %f ',Av)



