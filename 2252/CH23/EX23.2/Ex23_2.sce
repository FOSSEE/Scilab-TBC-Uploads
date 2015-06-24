
//calculating no. of poles
Ns=1200//synchronous speed of rotating magnetic field
f=60//frequency of the supply to the stator
P=120*f/Ns
mprintf("No. of poles=%d\n", P)
//calculating slip at full load
Nr=1140//full load speed
s=(Ns-Nr)/Ns
mprintf("Percentage slip at full load=%f percent\n",s*100)
//calculating frequency of rotor voltage
fr=s*f
mprintf("Frequency of rotor voltage=%d Hz\n",fr)
//calculating speed of rotor field w.r.t. rotor
N1=120*fr/P//speed
mprintf("Speed of rotor field w.r.t. rotor=%d rpm\n",N1)
//calculating speed of rotor field w.r.t. stator
N2=1140//speed of the rotor w.r.t. stator
mprintf("Speed of the rotor field w.r.t. stator=%d rpm\nSpeed of the rotor field w.r.t. stator field=%d rpm\n", N2+N1,N1+N2-Ns)
s=.1
N1=(1-s)*Ns
mprintf("Speed of the rotor at 10 percent slip=%d rpm\nRotor frequency at 10 percent slip=%d Hz\n",N1,s*f)
Eph=230//applied voltage per phase
E1ph=Eph//induced emf per phase in the stator winding
E2ph=E1ph*.5//rotor induced emf at standstill
E2ph_dash=s*E2ph
mprintf("Rotor induced emf at standstill=%f V\nRotor induced emf at 10 percent slip=%f V",E2ph,E2ph_dash)
