
//calculating total armature current
V=200//terminal voltage across armature
Rsh=80//shunt field resistance
Ish=V/Rsh//shunt field current
Il=100//load current
Ia=Il+Ish
mprintf("Armature current=%f A\n",Ia)
//calculating current per armature path
A=4//no. of parallel paths
mprintf("Current per armature path=%f A\n",Ia/A)
//calculating emf generated
Ra=.1//armature resistance
e=2//brush contact drop
Eg=V+Ia*Ra+e
mprintf("Emf generated=%f V\n",Eg)
