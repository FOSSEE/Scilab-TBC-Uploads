clear
clc

f=50
w=2*%pi*f
I1=25000
pf1=.8
J1=.5*I1*w*w*1e-6
P1=45
G1=P1/pf1
H1=J1/G1
M1=J1/(180*f)

mprintf("machine 1 \nInertia const= %.2f MJ/MVA, Momentum= %.3f MJ-s/elec deg",H1,M1)

I2=9000
pf2=.75
J2=.5*I2*w*w*1e-6
P2=60
G2=P2/pf2
H2=J2/G2
M2=J2/(180*f)

mprintf("\n\nmachine 2 \nInertia const= %.2f MJ/MVA, Momentum= %.5f MJ-s/elec deg",H2,M2)

M=(M1*M2)/(M1+M2)
Gb=100
H=M*180 * f /Gb
mprintf("\n\n Equivalent constant at 100MVA base \nInertia const= %.4f MJ/MVA, Momentum= %.5f MJ-s/elec deg",H,fix(M*100000)/100000)

