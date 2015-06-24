
//calculate the induced emf in the coil
A=4e-4 //cross sectional is a squar side
u=1  //air core torroidal ring
D=25e-2
l=3.14*D
N=500
d=4e-2  //cross sectional diameter
s=l/(4*3.14*10^-7*u*A)
L=N^2/s  // self inductance
dI=10
dt=50e-3
e=(L*dI)/dt
disp('Induced emf='  +string(e)+'   volts'  ,  'Inductance =   '+string(L)+'    henry' )
