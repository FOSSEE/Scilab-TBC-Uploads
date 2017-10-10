clear
//Given
I=0.15                     //A
R=0.12                     //m
r=0.065                     //m
r1=0.15                   //m

//Calculation
//
A=%pi*R**2
u=4*%pi*10**-7
B=(u*I*r)/(2*%pi*R**2)
B1=(u*I)/(2*%pi*r1)
Bmax=(u*I)/(2*%pi*R)

//Result
printf("\n (i) (a) Magnetic field on the axis is zero")
printf("\n (b) Magnetic field at r=6.5 cm is %0.2f *10**-7  T",B*10**7)
printf("\n (c) Magnetic field at r=15 cm is %0.3f  T", B1)
printf("\n (ii) Distance is %0.3f  T", Bmax)
