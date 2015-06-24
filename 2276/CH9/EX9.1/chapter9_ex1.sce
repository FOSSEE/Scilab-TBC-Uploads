clc
clear

//input
t1=96;//number turns on the primary side of an ideal transformer
v=240;//supply voltage in volts
f=50;//supply frequency in hertz
v2=660;//secondary pd in volts

//calculations
vp=v/t1;//primary volts per turn
vs=vp;//secondary volts per turn
t2=v2/vs;//secondary turns 

//output
mprintf('to produce a p.d. of 660V the secondary coil should have %3.0f turns',t2)
