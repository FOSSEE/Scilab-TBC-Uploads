
mu_not=4D-7*%pi
Nb=500//no. of turns in coil B
l=120D-2//mean length of flux path in iron circuit
Na=50//no. of turns in coil A
mu_r=2000//relative permeability of iron
A=80*10^-4//cross-sectional area
M=Nb*mu_not*mu_r*Na*A/(l)
mprintf("Mutual inductance M=%f H\n",M)
di=12
dt=.015
e=-M*di/dt
mprintf("Emf induced in coil B=%f V",e)
