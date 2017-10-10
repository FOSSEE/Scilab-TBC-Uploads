// maximum height that the pump
clc
Q=3.5e-3
nphs=4.5
t=15
d=0.1
patm=101e3
g=9.8
k=20
V=(4*Q)/(%pi*d^2)
mprintf('\n Velocity in the suction pipe V =Q/A  %f m/s',V)
h1=(k*V^2)/(2*g)
mprintf('\n h1= %f m',h1)
pv=1666
z1=(patm/9800)-(h1)-(pv/9800)-nphs
mprintf('\n z1 = %f m',z1)
mprintf('\n the pump should be located higher than %f m above the water surface ',z1)
