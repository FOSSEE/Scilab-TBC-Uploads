
P=6//no. of poles
A=2//no. of parallel paths
Z=300//no. of conductors on armature
N=1000//speed of rotation in rpm
Eg=400//emf generated on open circuit
phi=60*Eg*A/(P*N*Z)
mprintf("Flux per pole=%f Wb\n", phi)
