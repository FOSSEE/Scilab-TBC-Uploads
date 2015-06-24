
V=3*20/(2+3)//thevenin's voltage
r=1+2*3/(2+3)//thevenin's equivalent resistance
R=r
Pmax=V^2/(4*r)
mprintf("Max power transferred to the load is %f W when load resistance is %f ohm", Pmax, R)
