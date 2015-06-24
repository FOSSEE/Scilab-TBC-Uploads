
V=250//terminal voltage
Il=450//load current
Rsh=50//shunt field resistance
Ish=V/Rsh
Ia=Ish+Il
Ra=.05//armature resistance
Eg=V+Ia*Ra
P=4//no. of poles
phi=.05//flux per pole in Wb
n=120//no. of slots on armature
c=4//conductors per slot
Z=n*c//total no. of conductors
A=P//no. of parallel paths
N=60*Eg*A/(P*phi*Z)
mprintf("Speed of rotation=%f rpm", round(N))
