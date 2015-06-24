clc
clear

//INPUT
y=0.00129;//density of the air in gm/cc
p=76;//pressure of the nitrogen molecule in cm
g=981;//accelaration due to gravity in cm/sec^2
m=13.6;//density of the mercury in gm/cc

//CALCULATIONS
v=((3*p*g*m)/y)^(1/2);//rms velocity of air at ntp in cm/sec

//OUTPUT
mprintf('the rms velocity of the air is %3.2fcm/sec',v)
