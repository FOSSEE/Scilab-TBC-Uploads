
V1=200//voltage applied to non-inductive load
I1=20//current flowing through the load
R=V1/I1
V=230//applied voltage to series connection of R and L
I=I1
Z=V/I
Xl=sqrt(Z^2-R^2)
L=Xl/(2*%pi*50)
phi=atand(Xl/R)
mprintf("Inductance of the reactor=%f H, phase angle between applied voltage and the current is %f degrees",L,phi)
