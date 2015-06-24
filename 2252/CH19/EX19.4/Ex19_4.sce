
V=220//voltage applied to motor
Rsh=157//shunt field resistance
Ra=0.3//armature resistance
Ish=V/Rsh
I0=4.5//current drawn by the motor at no load
Ia0=I0-Ish
Eb0=V-Ia0*Ra
//under loaded conditions,
I=30//current drawn by motor
Ia=I-Ish
Eb=V-Ia*Ra
//phi=.97*phi0
//back emf is directly proportional to flux and speed
N0=1000//speed at no load
N=Eb*N0/(Eb0*.97)
mprintf("Speed under loaded condition=%d rpm", round(N))
