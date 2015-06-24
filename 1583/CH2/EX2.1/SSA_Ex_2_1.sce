clc
//Chapter 2:Small Signal Amplifiers
//example 2.1 page no 17
//given
B=100//current gain
Ic=10^-3//collector bias current
//kT/q=0.026 where as k=Boltzmanns constant T=temperature q=charge on an electron
rpi=(0.026*B)/Ic//base emitter resistance
mprintf('the base emitter resistance is %d ohm',rpi)
