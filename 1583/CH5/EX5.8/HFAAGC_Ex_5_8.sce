clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.8 page no 166
//given
Rs=500//source resistance
rpi=260
gm=0.4//transconductance
RL=600//load resistance
cpi=206*10^-12
wp=(Rs+rpi+(1+gm*rpi)*RL)/(rpi*cpi*(Rs+RL))//pole at the lower frequency
wz=(1+gm*rpi)/(rpi*cpi)//pole at the zero frequency
mprintf('the pole at the lower frequency is %3.2e rad/s \n the pole pole at the zero frequency is %3.2e rad/s ',wp,wz)
