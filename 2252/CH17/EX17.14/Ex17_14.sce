
//when the machine is working as generator
V=240//terminal voltage across the load
P=40D+3//load on generator
Il=P/V//load current
Rsh=60//resistance of shunt field
Ish=V/Rsh
Ia=Il+Ish
Ra=.03//armature resistance
e=2*1//voltage drop at brushes
Eg=V+Ia*Ra+e
N=450//speed as a generator at this load
//let k=P*phi*Z/(60*A)
k=Eg/N
//when the machine is working as motor
Ia=Il-Ish
Eb=V-Ia*Ra-e
N=Eb/k
mprintf("Speed as a motor=%d rpm", round(N))
