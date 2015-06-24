clear
clc

f=50
w=2*%pi*f
I=8800
pf=.85
J=.5*I*w*w*1e-6
P=60
MVA=P/pf
H=J/MVA
M=J/(180*f)

mprintf("Inertia const= %.3f MJ/MVA, Momentum= %.5f MJ-s/elec deg",H,M)
