clc
//Initialization of variables
ne=600
gpm=84500
h=225
f=0.95
phie=1.1
g=32.2
//calculations
Ns=ne*sqrt(gpm) /h^(3/4)
u2=phie*sqrt(2*g*h)
D=153.2*phie*sqrt(h) /ne
D0=1.06*D*12 //in
B=0.155*D0*12 //in
De=0.6*D0
u0=1.06*u2
Vm2=0.15*u0
Area=0.95*%pi*D/144 *B
Q=Area*Vm2
//results
printf("Specific speed =%d ",Ns)
printf("\n Flow rate = %d cfs",Q)
printf("\n Eye diameter = %.1f in",De)
