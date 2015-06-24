clc
//Chapter 5:High Frequency amplifiers and automatic gain control
//Example 5.13 page no 184
//Example on emitter feedback
disp('The parallel combination of the two base biasing resistors is 2.66k ohm resistor. The parallel combination of this resistor and the 260ohm emitter resistance is 237ohm  i.e.rpi=237ohm')
gm=0.4//transconductance
rpi=237//base emitter resistance
RL=600//load resistance (values of resistance are taken from the figure)
Rs=500//source resistance
Av=gm*RL*rpi/(rpi+Rs)//Voltage gain 
B=0.84*10^6//Bandwidth (The value of Bandwidth is taken from the Graph firure 5.51)
GB=Av*B//Gain bandwidth product
mprintf('The gain bandwidth product is %3.2e Hz ',GB)
