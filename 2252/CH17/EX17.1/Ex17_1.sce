
P=6//no. of poles
a=P//no. of parallel circuits
n=150//no. of slots
c=8//no. of conductors per slot
Z=n*c//total no. of conductors
T=Z/2//no. of turns
Lmt=250D-2//mean length of one turn
S=10*2.5*1D-6//cross sectional area
rho=2.1D-8//resistivity at 80 degree C
R=(rho*Lmt*T)/(a^2*S)
mprintf("Resistance=%f ohm\n",R)
