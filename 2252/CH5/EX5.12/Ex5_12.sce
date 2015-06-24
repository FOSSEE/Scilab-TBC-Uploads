
V=110//applied voltage
L=.5//inductance of coil
r=V/L
mprintf("Rate of change of current=%d A/s\n",r)
R=8//resistance of coil
I=V/R
mprintf("Final steady current=%f A\n",I)
T=L/R
mprintf("Time constant=%f sec\n",T)
//solving part(iv)
t=-log(.5)*T
mprintf("Time taken for the current to rise to half its final value=%f sec",t)
