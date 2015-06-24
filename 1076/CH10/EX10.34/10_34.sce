clear
clc

S=25
V=11
Z=V*V/S
I=S*1e6/(sqrt(3)*V*1e3)
Isc=6*I
Xt=V*1e3/(sqrt(3)*Isc)
Xi=.15*Z
Xo=Xt-Xi
x=Xo*100/Z
mprintf("External reactance required is %.3f pu",x)
