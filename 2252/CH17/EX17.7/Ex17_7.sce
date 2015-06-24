
//calculating terminal voltage
P=10D+3//load supplied
Vl=220//voltage at load terminals
Il=P/Vl
R=.1//resistance of feeders
Vd=Il*R//voltage drop on feeders
V=Vd+Vl
mprintf("Terminal voltage across the armature terminals=%f V\n",V)
//Calculating shunt field current
Rsh=100//shunt resistance
Ish=V/Rsh
mprintf("Shunt field current=%f A\n",Ish)
//Calculating generated emf
Ra=.05//resistance of armature
Eg=V+Il*Ra
mprintf("Generated emf Eg=%f V",Eg)
