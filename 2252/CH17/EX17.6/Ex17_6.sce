
n=60//no. of slots on armature
c=6//conductors per slot
Z=n*c//total no. of conductors
A=2//no. of parallel paths in armature winding
N=750//speed of rotation
P=4//no. of poles
Eg=230//emf generated on open circuit
phi=60*Eg*A/(P*N*Z)
mprintf("Useful fux per pole=%f Wb\n",phi)
Eg=115//emf to be generated at no load
A=P*N*Z*phi/(60*Eg)//required no. of parallel paths in armature winding
mprintf("As the machine has equal number of poles and parallel paths in armature winding, the armature will be lap connected to generate 115 V at the same speed")
