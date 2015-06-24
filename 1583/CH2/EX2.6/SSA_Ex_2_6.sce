clc
//Chapter 2:Small Signal Amplifiers
//example 2.6 page no 36
//given
RL=50//load resistance
gm=0.2//tranceconductance
B=100//current gain
rpi=B/gm//transistor input resistance
disp(rpi,'the transistor input resistance is ')
disp('The load resistance seen bythe first stage will be the 2k ohm resistor in parallel with Rb2 and the input impedance of the second stage That is R_L=1.05*10^3')
R_L=1.05*10^3
Rs=500//source resistance
IC1=2*10^-3//collector bias current
gm1=40*IC1//tranceconductance
disp(gm1,'the tranceconductance is in ohm ')
rpi1=B/gm1//transistor input resistance
disp(rpi1,'the transistor input resistance is in ohm ')
Av1=-gm1*R_L*(rpi1/(rpi1+Rs))//the voltage gain of first 
disp(Av1,'the voltage gain of second stage is closed to unity the voltage gain of first is ')
