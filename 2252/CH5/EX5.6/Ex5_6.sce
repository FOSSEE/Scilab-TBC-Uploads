
N=800//no. of turns
dI=10-5//change in current
dB=1.2-.8//corresponding change in flux density
A=15D-4//cross sectional area
L=A*N*dB/dI
mprintf("Self inductance of coil,L=%f H\n",L)
di=5-10//change in current
dt=.04//time taken for change
e=-L*di/dt
mprintf("Induced emf when the current falls uniformly from 10 A to 5 A in 0.04 sec=%d V",round(e))
