clear
//Given
N=1200
A=12*10**-4                         //m**2
r=0.15                                     //m
N2=300
a=0.05

//Calculation
//
u=4*%pi*10**-7
L=(u*N**2*A)/(2*%pi*r)
M=(u*N*N2*A)/(2*%pi*r)
dl=2/a
e=M*dl

//Result
printf("\n (i) Self inductance of the toroid is %0.1f  *10**-3 H",L*10**3)
printf("\n (ii) Induced e.m.f. in the second coil is %0.3f  V",e)
