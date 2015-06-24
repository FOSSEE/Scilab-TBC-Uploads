
V=100//terminal voltage
Il=200//load current
Rse=.03//resistance of series field winding
Ra=.04//resistance of armature winding
Rsh=60//resistance of shunt
Vd=Il*Rse//voltage drop in series field winding
V_dash=V+Il*Rse//terminal voltage across armature
Ish=V_dash/Rsh
Ia=Il+Ish
Eg=V+Il*Rse+Ia*Ra
mprintf("Generated emf=%f V",Eg)
