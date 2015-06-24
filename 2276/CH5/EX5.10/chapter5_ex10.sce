clc
clear

//input
r=2;//resistance of an inductor in ohms
l=0.07;//inductance of an inductor in henry which is in resonance with a capacitor
f=60;//resonant frequency in hertz

//calculations
tanphi=(2*%pi*f*l)/r;//ratio between capacitor current and supply current

//output
mprintf('the ratio of capacitor current to supply current is %3.1f : 1',tanphi)
