
P=6//no. of poles
A=P//no. of parallel paths
phi=.018//flux per pole
N=600//speed of rotation in rpm
Z=840//total no. of conductors
Eg=P*phi*N*Z/(60*A)
mprintf("Emf generated=%f V\n",Eg)
