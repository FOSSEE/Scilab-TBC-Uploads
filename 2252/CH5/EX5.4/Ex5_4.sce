
mu_not=4D-7*%pi
N=3500//no. of turns on iron rod
I=.6//current through coil
AT=N*I
B=.45//flux density in Wb/m^2
l=25D-2//length of mean magnetic flux path
H=AT/l
mu_r=B/(H*mu_not)
mprintf("Relative permeability of metal=%f\n",mu_r)
A=%pi*2.5D-2^2/4//cross sectional area of ring
phi=B*A
L=N*phi/I
mprintf("Self inductance of coil=%f H\n",L)
//solving part(iii)
dphi=.08*phi-phi//change in flux
dt=.0015//time taken for change
e=-N*dphi/dt
mprintf("emf induced in the coil when value of flux falls to 8 percent its valiue in 0.0015 sec=%f V",e)
