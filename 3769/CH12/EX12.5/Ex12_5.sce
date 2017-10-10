clear
//Given
r=10**-1                   //m
B=3.0*10**-5                  //T
t=0.25                           //S
N=500
R=2                                //ohm

//Calculation
//
a1=B*%pi*r**2*cos(0*3.14/180.0)
a2=B*%pi*r**2*cos(180*3.14/180.0)
a3=a1-a2
e=(N*a3)/t
I=e/R

//Result
printf("\n Magnitude of the emf is %0.1f  *10**-3 V",e*10**3)
printf("\n Current induced in the coil is %0.1f  *10**-3 A",I*10**3)
