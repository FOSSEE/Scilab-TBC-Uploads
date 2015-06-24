clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.1 page no 147
//given
B=100
fT=3*10^8//transistor frequency
Cu=4*10^-12//output capacitance common baxe configuration
Ic=10*10^-3//collector direct current
rpi=0.026*B/Ic//base emitter resistance
gm=40*Ic//transconductance
wT=0.4/(2*%pi*3*10^8)//gain bandwidth product
Cpi=wT-Cu//base emitter capacitance
mprintf('the base emitter resistance is %d ohm \n the transconductance is %f S \n the base emitter capacitance is %3.2e pF',rpi,gm,Cpi)
