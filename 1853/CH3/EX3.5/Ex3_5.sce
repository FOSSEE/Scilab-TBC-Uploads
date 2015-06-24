
//calculat the inductance and emf induced in the coil
u=1  //air core torroidal ring
D=25e-2
l=3.14*D
N=500
d=4e-2  //cross sectional diameter
A=(3.14*d*d)/4 //cross sectional area
s=l/(4*3.14*10^-7*u*A)
L=N^2/s  // self inductance
dI=10
dt=50e-3
e=(L*dI)/dt
disp('Induced emf='  +string(e)+'   volts'  ,  'Inductance =   '+string(L)+'    henry' )
