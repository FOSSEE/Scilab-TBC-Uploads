
mu_not=4*%pi*1D-7
//calculating inductance 
N=4000//number of turns
I=2//current flowing in the solenoid
d=8D-2//diameter of solenoid
As=%pi/4*d^2
l=80D-2//length of solenoid in mtrs
phi=mu_not*N*I*As/l
L=N*phi/I
mprintf("Inductance=%f H\n",L)
//calculating energy stored in the magnetic field
E=L*I^2/2
mprintf("Energy stored in the magnetic field=%f J",E)
