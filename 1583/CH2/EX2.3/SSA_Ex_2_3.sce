clc
//Chapter 2:Small Signal Amplifiers
//example 2.3 page no 25
//given
Ic=40*10^-3//collector bias current
B=40//current gain
RL=50//load resistance
Rs=50//source resistance
rpi=(0.026*B)/Ic//base emitter resistance
Av=(B*RL)/(rpi+Rs+(1+B)*RL)//voltage gain
Ai=(1+B)//current gain
Ap=Ai*Av//power gain
mprintf('the power gain is %f \n',Ap)
Zo=(rpi+Rs)/(1+B)//output impedance
mprintf('the amplifier output impedance as per seen by 50 ohm \nresistance is %f ohm',Zo)
