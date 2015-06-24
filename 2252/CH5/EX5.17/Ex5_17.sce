
mu_not=4D-7*%pi
//calculating exciting current
B=1.2//flux density
mu_r=500//rel permeability for iron
H=B/(mu_not*mu_r)
D=10D-2//mean diameter
l=%pi*D//length of flux path in the ring
AT=H*l
N=300//number of turns on the ring
I=AT/N
mprintf("Exciting current=%d A\n",round(I))
//calculating inductance
As=8D-4//cross-sectional area
phi=B*As
L=N*phi/I
mprintf("Inductance=%f H\n",L)
//calculating energy stored
E=L*I^2/2
mprintf("Energy stored=%f J\n",E)
//consider the case in which an air gap of 2 mm in the ring is made
li=l-2D-3//length of flux path in iron portion
lg=2D-3//length of air gap
ATi=H*li//ampere turns for iron portion
ATg=.796*B*lg*10^6//ampere turns for air gap
AT=ATi+ATg
I=AT/N
mprintf("When there is an air gap of 2mm in the ring\nExciting current=%f A\n",I)
L=N*phi/I
mprintf("Inductance=%f mH\n",L*1000)
E=L*I^2/2
mprintf("Energy stored=%f J\n",E)


