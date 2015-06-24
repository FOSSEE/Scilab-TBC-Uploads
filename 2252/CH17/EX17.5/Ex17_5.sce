
Eg=400//emf generated
n=80//no. of slots on armature
c=10//conductors per slot
Z=n*c//total no. of conductors on armature
N=1000//speed in rpm
phi=60*Eg/(N*Z)
Eg=220//desired value of generated voltage
N=60*Eg/(phi*Z)
mprintf("Speed of rotation to generate 220 V=%f rpm\n", round(N))
