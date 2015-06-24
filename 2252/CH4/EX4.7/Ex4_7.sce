
mu_not=4D-7*%pi
N=300//no. of turns in coil
I=.7//current through coil
AT=N*I
L=60D-2//length of ring
Lg=2D-3//length of air gap
Li=L-Lg//length of flux path in ring
mu_r=300//rel permeability of iron
B=AT/(Li/(mu_not*mu_r)+.796*Lg*1D+6)
mprintf("Flux density=%f Wb/m^2", B)
