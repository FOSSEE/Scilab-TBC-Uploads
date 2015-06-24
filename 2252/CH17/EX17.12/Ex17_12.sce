
//calculating back emf
V=120//applied voltage
Il=200//line current
Rsh=30//shunt field resistance
Ra=.02//armature winding resistance
Ish=V/Rsh
Ia=Il-Ish
Eb=V-Ia*Ra
mprintf("Back emf=%f V\n",Eb)
n=90//no. of slots on armature
c=4//conductors per slot
Z=n*c//total no. of conductors on armature
phi=.04
N=60*Eb/(phi*Z)
mprintf("Speed at which motor will run when flux per pole is .04 Wb=%d rpm",round(N))
