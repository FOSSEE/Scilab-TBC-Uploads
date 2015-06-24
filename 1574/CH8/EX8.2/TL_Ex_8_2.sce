clc
//Chapter8
//Example8.2, page no 314
//Given
v=3e8// velocty of light
f=1.2e6// Operating Freq
lambda=v/f
//disp(lambda)
l=100// length of the Tx-Line
phi=2*(%pi*l)/(lambda)// Phase shift in degrees
Zo=500// Characteristic impedance
//a Open circuited Line

Zin=-%i*Zo*(cos(phi)/sin(phi))

//b Short circuited Line
Z1in=%i*Zo*tan(phi)
mprintf('The phase shift is: %d degrees\n Open Circuited line impedance: -j%f ohms\n Short Circuited line impedance -j%f ohms',phi*180/%pi,-Zin*%i,Z1in*%i)
