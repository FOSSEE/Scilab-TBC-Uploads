
//calculating load current
i=30//current drawn by each motor
I=5*i//current drawn by 5 motors
P=150*60//total lighting load
V=110//applied voltage
I1=P/V//current taken by lighting load
I=I1+I
mprintf("Total load current=%d A\n",round(I))
//calculating terminal voltage
V_dash=110//voltage at terminals of load
R=.04//resistance of feeders
Vd=I*R//voltage drop in feeders
V=V_dash+Vd
mprintf("Terminal voltage across the generator terminals=%f V\n",V)
//calculating emf generated
Rsh=55//resistance of shunt field
Ish=V/Rsh
Ia=I+Ish
Ise=Ia
Rse=.04//series field resistance
Ra=.03//armature resistance
Eg=V+Ia*(Ra+Rse)
mprintf("Generated emf, Eg=%f V",Eg)
