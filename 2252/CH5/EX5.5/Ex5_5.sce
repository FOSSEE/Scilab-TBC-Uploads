
mu_not=4D-7*%pi
H=3500//ampere turns per metre of flux path length
l=%pi*40D-2//length of mean flux path in ring
AT=H*l
N=440//no. of turns on coil
I=AT/N//exciting current
mprintf("Exciting current=%d A\n",round(I))
B=.9//flux density
A=15D-4//cross-sectional area of ring
phi=B*A
L=N*phi/I
mprintf("Self-inductance of coil=%f H\n",L)
//solving part(iii)
l=(l-1/10^2)//length of mean flux path in steel ring
ATi=H*l//ampere turns required for iron portion
ATg=.796*B*1D-2*1D+6//ampere turns for air gap
AT=ATi+ATg
I=AT/N
mprintf("When an air gap 1 cm long is cut in the ring, exciting current I=%f A and self inductance of coil=%f H\n",I,N*phi/I)
