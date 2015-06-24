clc
//Chapter 12:Frequency mixers
//example 12.2 page no 504
//given
gm=14*10^-3//tranconductance
IDSS=40*10^-3
RL=50//load resistance
Vgs=0
Vp=2*IDSS/gm//pinch off voltage
gc=IDSS/(2*Vp)//conversion tranconductance
Av=gc*RL//voltage gain
mprintf('the conversion voltage gain is %f ',Av)
