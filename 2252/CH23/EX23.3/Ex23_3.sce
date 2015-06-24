
//calculating synchronous speed
f=50//frequency
P=4//no. of poles
Ns=120*f/P
mprintf("Synchronous speed=%f rpm\n",Ns)
//calculating speed of rotating air gap field
mprintf("Rotating field in air gap rotates at synchronous speed,hence its speed=%f rpm\n",Ns)
//calculating speed of induction motor
s=.04//slip
Nr=(1-s)*Ns
mprintf("Speed of induction motor=%f rpm\n",Nr)
//calculating slip in rpm
mprintf("Slip of the motor in rpm=%f rpm\n",s*Ns)
mprintf("The rotor field rotates at synchronous speed w.r.t. stator, hence relative speed=%f rpm\n",Ns)
mprintf("Both rotor and stator field rotate at synchronous speed,relative to the stator, hence, speed of rotor field w.r.t. stator field=0 rpm\n")
mprintf("Speed of the rotor field w.r.t. rotor=%f rpm\n",s*Ns)
//calculating frequency of rotor induced emf
fr=s*f
mprintf("Frequency of rotor induced emf=%f Hz\n",fr)
//calculating rotor induced emf per phase
k=.6//turns ratio
E1ph=400/sqrt(3)//induced emf in stator winding
E2ph=E1ph*k//rotor induced emf per phase at the instant of starting
E2ph_dash=s*E2ph
mprintf("Rotor induced emf per phase under loaded condition=%f V",E2ph_dash)
