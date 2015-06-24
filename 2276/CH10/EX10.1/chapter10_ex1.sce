clc
clear

//input
p=4;//number of poles of an alternator
w=50*%pi;//angular velocity in rad/sec
b=0.015;//sinusoidal flux per pole in weber
phi=10*(%pi/180);//pole pitch in radians
kf=1.11;//form factor

//calculations
f=(w*(p/2))/(2*%pi);//frequency in hertz
e=2*kf*b*f;//e.m.f. per conductor in volts
E=2*e*cos(phi/2);//total e.m.f. in volts

//ouput
mprintf('the e.m.f. between the ends of the coil is %3.1f V',E)
