clc
//Chapter 2:Small Signal Amplifiers
//example 2.14 page no 57
//given
Z1=1*10^3//assuming impedance value for required specification
Av=100//voltage gain
Z2=(Av-1)*Z1
mprintf('Z1=%d Kohm \n Z2=%d Kohm',Z1*1e-3,Z2*1e-3)
