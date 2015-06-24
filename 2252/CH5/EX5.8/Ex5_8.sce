
N=1500//no. of turns in coil A
phi=.04D-3//flux linking coil A in Wb
I=4//current in coil
La=N*phi/I
mprintf("Self inductance of coil A=%f mH. As the coils are identical, coil B will also have the same self-inductance.Hence, self-inductance of coil B=%f mH\n",La*1000,La*1000)
k=.7
M=N*k*phi/I
mprintf("Mutual inductance of arrangement=%f mH\n",M*1000)
di=-8
dt=.02
e=-M*di/dt
mprintf("Emf induced in the coil B due to a change of current in coil A=%f V\n",e)


